package com.xyg.wm;

import org.gradle.BuildListener
import org.gradle.BuildResult
import org.gradle.api.Task
import org.gradle.api.execution.TaskExecutionListener
import org.gradle.api.initialization.Settings
import org.gradle.api.invocation.Gradle
import org.gradle.api.tasks.TaskState
import org.gradle.util.Clock


public class TimerListener implements TaskExecutionListener, BuildListener {


    private Clock clock
    private times = []

    @Override
    void buildStarted(Gradle gradle) {

    }

    @Override
    void settingsEvaluated(Settings settings) {

    }

    @Override
    void projectsLoaded(Gradle gradle) {

    }

    @Override
    void projectsEvaluated(Gradle gradle) {

    }

    @Override
    void buildFinished(BuildResult buildResult) {
        //整个编译结束
        println "Task spend time:"
        for (time in times) {
            if (time[0] >= 50) {
                printf "%7sms  %s\n", time
            }
        }
    }

    @Override
    void beforeExecute(Task task) {
        clock = new org.gradle.util.Clock();
    }

    @Override
    void afterExecute(Task task, TaskState taskState) {
        def ms = clock.timeInMs;
        times.add([ms, task.path]);
        task.project.logger.warn "${task.path} spend ${ms}ms";
    }
}