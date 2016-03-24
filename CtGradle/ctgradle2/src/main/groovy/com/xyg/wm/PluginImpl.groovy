package com.xyg.wm;

import org.gradle.api.Plugin
import org.gradle.api.Project

public class PluginImpl implements Plugin<Project> {

    @Override
    void apply(Project project) {
        //为project 添加task
//        project.task('mytask') << {
//            println 'hello task'
//        }

        project.gradle.addListener(new TimerListener());

    }
}