package com.xyg.wm.apt

import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.ProjectConfigurationException
import org.gradle.api.tasks.compile.GroovyCompile


class AndroidAptPlugin implements Plugin<Project> {

    @Override
    void apply(Project project) {
        def variants = null;
        if (project.plugins.findPlugin('com.android.application') || project.plugins.findPlugin('android')) {
            //
            variants = 'applicationVariants';
        } else if (project.plugins.findPlugin('com.android.library') || project.plugins.findPlugin('android-library')) {
            variants = 'libraryVariants';
        } else {
            throw new ProjectConfigurationException('this is android library plugin');
        }
        //为project配置属性  apt属性
        def aptConfiguration = project.configurations.create('apt')
                .extendsFrom(project.configurations.compile, project.configurations.provided);

        project.extensions.create('apt', AndroidAptExtension);
        //构建有向图，
        project.afterEvaluate {
            if (project.apt.disableDiscovery() && !project.apt.processors()) {
                throw new ProjectConfigurationException('android-apt configuration error: disableDiscovery may only be enabled in the apt configuration when there\'s at least one processor configured', null);
            }

            project.android[variants].all { variant ->
                configureVariant(project, variant, aptConfiguration, project.apt);
            }
        }

    }

    static void configureVariant(
            def project,
            def variant, def aptConfiguration, def aptExtension) {
        def aptOutputDir = project.file(new File(project.buildDir, "generated/source/apt"));
        def aptOutput = new File(aptOutputDir, variant.dirName); // debug release

        def javaCompile = variant.hasProperty('javaCompiler') ? variant.javaCompiler : variant.javaCompile;
        variant.addJavaSourceFoldersToModel(aptOutput); //让生成的 apt代理代码 加入到 source的目录中去

        def processorPath = (aptConfiguration + javaCompile.classPath).asPath;
        def taskDependency = aptConfiguration.buildDependencies;

        if (taskDependency) {
            javaCompile.dependsOn += taskDependency;
        }

        def processors = aptExtension.processors();

        javaCompile.options.compilerArgs += [
                '-s', aptOutput
        ]

        if (processors) { //添加上注解的处理器
            javaCompile.options.compilerArgs += [
                    '-processor', processors
            ]
        }

        if (!(processors && aptExtension.disableDiscovery())) {
            javaCompile.options.compilerArgs += [
                    '-processorpath', processorPath
            ]
        }

        //给 java的 编译器配置参数，
        aptExtension.aptArguments.variant = variant
        aptExtension.aptArguments.project = project
        aptExtension.aptArguments.android = project.android

        javaCompile.options.compilerArgs += aptExtension.arguments();

        javaCompile.doFirst {
            aptOutput.mkdirs();
        }

// Groovy compilation is added by the groovy-android-gradle-plugin in finalizedBy
        def dependency = javaCompile.finalizedBy;
        def dependencies = dependency.getDependencies(javaCompile);
        for (def dep : dependencies) {
            if (dep instanceof GroovyCompile) {
                if (dep.groovyOptions.hasProperty("javaAnnotationProcessing")) {
                    dep.options.compilerArgs += javaCompile.options.compilerArgs;
                    dep.groovyOptions.javaAnnotationProcessing = true
                }
            }
        }

    }

}