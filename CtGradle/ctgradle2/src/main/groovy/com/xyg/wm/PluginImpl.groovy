package com.xyg.wm;

import org.gradle.api.Plugin
import org.gradle.api.Project


class MyCustomPluginExtension {
    def message = "From MyCustomPluginExtention"
    def sender = "MyCustomPluin"
}

class OtherExtendsion{
    def message = "From PluginImpl OtherExtendsion"
    def sender = "PluginImpl"
}

public class PluginImpl implements Plugin<Project> {

    @Override
    void apply(Project project) {
        //为project 添加task
//        project.task('mytask') << {
//            println 'hello task'
//        }

//        project.gradle.addListener(new TimerListener());

        //配置简单参数
//        project.extensions.create("myArgs", MyCustomPluginExtension)
//        project.task('customTask', type: MyTask)

        project.extensions.create("myArgs",MyCustomPluginExtension)
        project.myArgs.extensions.create('nestArgs', OtherExtendsion)

        project.task('customTask', type: MyOtherTask)


    }
}