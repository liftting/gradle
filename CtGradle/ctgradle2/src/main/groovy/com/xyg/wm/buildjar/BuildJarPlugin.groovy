import com.xyg.wm.buildjar.BuildJarExt
import org.gradle.api.Plugin
import org.gradle.api.Project
import org.gradle.api.internal.DefaultDomainObjectSet
import org.gradle.internal.impldep.org.apache.maven.model.Build
//import com.android.build.gradle.api.ApplicationVariant

class BuildJarPlugin implements Plugin<Project> {

    @Override
    void apply(Project project) {
//        DefaultDomainObjectSet<ApplicationVariant> variants;
    }

    private void applyTask(Project project){
        project.afterEvaluate {

            BuildJarExt jarExt = BuildJarExt.getConfig(project);

            def includePackage = jarExt.includePackage
            def excludeClass = jarExt.excludeClass
            def excludePackage = jarExt.excludePackage
            def excludeJar = jarExt.excludeJar



        }
    }

}