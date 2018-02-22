.class public Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;
.super Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;


# instance fields
.field private currentPackageName:Ljava/lang/String;

.field private currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

.field private currentPluginActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentPluginClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    return-void
.end method

.method private static changeActivityInfo(Landroid/content/pm/ActivityInfo;Landroid/app/Activity;)V
    .registers 4

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "mActivityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    :try_start_c
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_15

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private lookupActivityInPlugin(Landroid/app/Activity;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v1, v0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;

    if-eqz v1, :cond_2d

    check-cast v0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;->getPlugInfo()Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getActivityMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPluginActivities:Ljava/util/Map;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPluginClassLoader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPackageName:Ljava/lang/String;

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    goto :goto_2c
.end method

.method private replaceIntentTargetIfNeed(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "flag_act_fp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_22
    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    invoke-direct {v1, v2, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :goto_31
    if-eqz v0, :cond_54

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getActivitySelector()Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;->selectDynamicActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "flag_act_fp"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_54
    :goto_54
    return-void

    :cond_55
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPackageName:Ljava/lang/String;

    goto :goto_22

    :cond_58
    invoke-virtual {p0, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_31

    :cond_5d
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPluginClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_54
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->lookupActivityInPlugin(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    if-eqz v1, :cond_a4

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getServices()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;-><init>(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;[Ljava/lang/Object;)V

    :try_start_1b
    invoke-static {p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v1

    const-string v3, "mResources"

    invoke-virtual {v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_28} :catch_a8

    :goto_28
    :try_start_28
    const-class v1, Landroid/content/ContextWrapper;

    const-string v3, "mBase"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_b2

    :try_start_37
    invoke-static {p1}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v1

    const-string v2, "mApplication"

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v3}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_46
    .catch Lcom/fanwei/bluearty/pluginmgr/reflect/ReflectException; {:try_start_37 .. :try_end_46} :catch_b7
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_46} :catch_b2

    :goto_46
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPlugin:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_80

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v3

    if-eqz v3, :cond_80

    :try_start_5c
    const-class v1, Landroid/view/ContextThemeWrapper;

    const-string v4, "mTheme"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "OPPO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_75} :catch_d2

    move-result-object v1

    if-nez v1, :cond_d0

    :cond_78
    :goto_78
    if-eqz v0, :cond_80

    invoke-static {v2, p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->changeActivityInfo(Landroid/content/pm/ActivityInfo;Landroid/app/Activity;)V

    invoke-virtual {p1, v3}, Landroid/app/Activity;->setTheme(I)V

    :cond_80
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;

    move-result-object v1

    :try_start_92
    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    instance-of v2, v0, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;

    if-nez v2, :cond_a4

    const-string v2, "mLayoutInflater"

    new-instance v3, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;

    invoke-direct {v3, v0}, Lcom/fanwei/bluearty/pluginmgr/widget/LayoutInflaterWrapper;-><init>(Landroid/view/LayoutInflater;)V

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/pluginmgr/reflect/Reflect;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_a4} :catch_d7

    :cond_a4
    :goto_a4
    invoke-super {p0, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void

    :catch_a8
    move-exception v1

    :try_start_a9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b0} :catch_b2

    goto/16 :goto_28

    :catch_b2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    :catch_b7
    move-exception v1

    :try_start_b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application not inject success into : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_ce} :catch_b2

    goto/16 :goto_46

    :cond_d0
    const/4 v0, 0x0

    goto :goto_78

    :catch_d2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_78

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a4
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->lookupActivityInPlugin(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 8

    invoke-direct {p0, p1, p5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->replaceIntentTargetIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super/range {p0 .. p6}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 9

    invoke-direct {p0, p1, p5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->replaceIntentTargetIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super/range {p0 .. p7}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .registers 8

    invoke-direct {p0, p1, p5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->replaceIntentTargetIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super/range {p0 .. p6}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 9

    invoke-direct {p0, p1, p5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->replaceIntentTargetIfNeed(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-super/range {p0 .. p7}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPluginActivities:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_22
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;->currentPluginActivities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_2e

    move-object v0, v1

    goto :goto_6

    :cond_2e
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 8

    const-string v0, "newActivity start"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    const-string v0, "activityName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "packageName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7d

    if-eqz v1, :cond_7d

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getPlugins()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newActivity activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :try_start_43
    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->ensureApplicationCreated()V
    :try_end_4e
    .catch Lcom/fanwei/bluearty/pluginmgr/verify/PluginNotFoundException; {:try_start_43 .. :try_end_4e} :catch_5c

    invoke-virtual {v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "newActivity start end jump to other activity"

    invoke-static {v2}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    invoke-super {p0, v1, v0, p3}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    :goto_5b
    return-object v0

    :catch_5c
    move-exception v0

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dump()V

    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get plugin Info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    const-string v0, "flag_act_fp"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    if-eqz v0, :cond_d0

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getPlugins()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_d0

    :try_start_95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ Start Plugin Activity => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    iget-object v2, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->ensureApplicationCreated()V
    :try_end_c6
    .catch Lcom/fanwei/bluearty/pluginmgr/verify/PluginNotFoundException; {:try_start_95 .. :try_end_c6} :catch_da

    iget-object v2, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    if-eqz v2, :cond_d0

    iget-object p2, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->activityName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_d0
    const-string v0, "newActivity end"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateInstrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_5b

    :catch_da
    move-exception v1

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dump()V

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get plugin Info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;->pluginPkg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
