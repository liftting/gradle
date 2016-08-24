package com.cyg.wm.nuwa;

import org.gradle.api.Plugin
import org.gradle.api.Project

public class CnuShowPluginImpl implements Plugin<Project> {
    @Override
    public void apply(Project project) {
        project.task("showInfoTask") << {
            println "show info task exec"
        }
    }
}