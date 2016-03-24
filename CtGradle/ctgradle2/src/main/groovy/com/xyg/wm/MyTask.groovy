package com.xyg.wm;

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.TaskAction

class MyTask extends DefaultTask {

    //配置这个注解
    @TaskAction
    void executeOut() {
        println "Sender is ${project.myArgs.sender},\nmessage: ${project.myArgs.message}"
    }
}