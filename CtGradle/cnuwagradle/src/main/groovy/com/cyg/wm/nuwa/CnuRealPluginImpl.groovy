package com.cyg.wm.nuwa

import org.gradle.api.Plugin
import org.gradle.api.Project;

/**
 * Created by wm on 16/8/26.
 */
public class CnuRealPluginImpl implements Plugin<Project> {
    @Override
    void apply(Project project) {

        def isApp = project.plugins.hasPlugin(AppPlugin);

    }
}
