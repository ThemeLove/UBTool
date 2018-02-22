.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 2

    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 2

    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public endPerformanceSnapshot()V
    .registers 1

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 9

    const/4 v0, 0x0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 9

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public isProfiling()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 12
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 2

    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 2

    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 2

    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 1

    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public startAllocCounting()V
    .registers 1

    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 1

    return-void
.end method

.method public startProfiling()V
    .registers 1

    return-void
.end method

.method public stopAllocCounting()V
    .registers 1

    return-void
.end method

.method public stopProfiling()V
    .registers 1

    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public waitForIdleSync()V
    .registers 1

    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method
