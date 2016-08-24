package com.cyg.wm.nuwa;

import org.gradle.api.Plugin
import org.gradle.api.Project

class CnuPluginImpl implements Plugin<Project> {

    @Override
    void apply(Project project) {
        project.task('cnuTask') << {
            println "Hello use cnu task plugin"
        }
    }
}