package com.xyg.wm;

import org.gradle.api.DefaultTask
import org.gradle.api.tasks.TaskAction

class MyOtherTask extends DefaultTask {

    //配置这个注解
    @TaskAction
    void executeOut() {
        println "Sender is ${project.myArgs.sender} \nmessage: ${project.myArgs.message}"
        println "Receiver is ${project.myArgs.nestArgs.receiver} \nemail: ${project.myArgs.nestArgs.email}"
    }
}