package com.wm.cyg;

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.Input
import org.gradle.api.tasks.OutputFile
import org.gradle.api.tasks.TaskAction

class InnerReleaseVersionTask extends DefaultTask {

    @Input Boolean release
    @OutputFile File destFile

    InnerReleaseVersionTask() {
        group = 'versioning';
        description = 'Makes project release version task';
    }

    @TaskAction
    void start() {
        project.version.release = true
        ant.propertyfile(file: versionFile) {
            entry(key: 'release', type: 'string', operation: '=', value: 'true')
        }
    }

}