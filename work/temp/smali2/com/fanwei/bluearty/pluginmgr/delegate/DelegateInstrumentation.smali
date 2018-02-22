.class public Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;
.super Landroid/app/Instrumentation;


# instance fields
.field private mBase:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v0

    return v0
.end method

.method public endPerformanceSnapshot()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 14

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 14

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 16

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public isProfiling()Z
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendTrackballEventSync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->setAutomaticPerformanceSnapshots()V

    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->start()V

    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startAllocCounting()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startAllocCounting()V

    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    return-void
.end method

.method public startProfiling()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startProfiling()V

    return-void
.end method

.method public stopAllocCounting()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopAllocCounting()V

    return-void
.end method

.method public stopProfiling()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopProfiling()V

    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method public waitForIdleSync()V
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
