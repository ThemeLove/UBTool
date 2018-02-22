.class public Lcom/fanwei/bluearty/pluginmgr/PluginManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static SINGLETON:Lcom/fanwei/bluearty/pluginmgr/PluginManager;


# instance fields
.field private activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

.field private context:Landroid/content/Context;

.field private dexInternalStoragePath:Ljava/io/File;

.field private dexOutputPath:Ljava/lang/String;

.field private mUsingPackage:Ljava/lang/String;

.field private pluginActivityLifeCycleCallback:Lcom/fanwei/bluearty/pluginmgr/PluginActivityLifeCycleCallback;

.field private pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

.field private pluginParentClassLoader:Ljava/lang/ClassLoader;

.field private final pluginPkgToInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private services:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/verify/SimpleLengthVerifier;

    invoke-direct {v0}, Lcom/fanwei/bluearty/pluginmgr/verify/SimpleLengthVerifier;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;->getDefault()Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "PluginManager must init in UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->context:Landroid/content/Context;

    const-string v0, "plugins-file"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexOutputPath:Ljava/lang/String;

    const-string v0, "plugins-opt"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexInternalStoragePath:Ljava/io/File;

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    instance-of v2, v1, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;

    if-nez v2, :cond_5a

    new-instance v2, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;

    invoke-direct {v2, v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginInstrumentation;-><init>(Landroid/app/Instrumentation;)V

    invoke-virtual {v0, v2}, Lcom/fanwei/bluearty/pluginmgr/delegate/DelegateActivityThread;->setInstrumentation(Landroid/app/Instrumentation;)V

    :cond_5a
    iput-object p2, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->services:[Ljava/lang/Object;

    return-void
.end method

.method private attachBaseContext(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/app/Application;)V
    .registers 7

    :try_start_0
    const-class v0, Landroid/content/ContextWrapper;

    const-string v1, "mBase"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->services:[Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v3}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;-><init>(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;[Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method private buildPlugInfo(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;
    .registers 12

    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-direct {v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;-><init>()V

    if-nez p2, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_b
    invoke-virtual {v1, p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setId(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexInternalStoragePath:Ljava/io/File;

    if-nez p3, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    :cond_18
    invoke-direct {v0, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->copyApkToPrivatePath(Ljava/io/File;Ljava/io/File;)V

    :cond_33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/fanwei/bluearty/pluginmgr/utils/PluginManifestUtil;->setManifestInfo(Landroid/content/Context;Ljava/lang/String;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V

    :try_start_3c
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setAssetManager(Landroid/content/res/AssetManager;)V

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v4, v0, v5, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v4}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setResources(Landroid/content/res/Resources;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_78} :catch_b3

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexOutputPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getPluginLibPath(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;-><init>(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->makeApplication(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->attachBaseContext(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/app/Application;)V

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setApplication(Landroid/app/Application;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Build pluginInfo => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V

    return-object v1

    :catch_b3
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create Resources&Assets for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkInit()V
    .registers 2

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please init the PluginManager first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private copyApkToPrivatePath(Ljava/io/File;Ljava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

    if-eqz v0, :cond_13

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

    invoke-interface {v0, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;->isOverdue(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-static {p1, p2}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_12
.end method

.method public static getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;
    .registers 1

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->checkInit()V

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    if-eqz v0, :cond_a

    const-string v0, "PluginManager have been initialized, YOU needn\'t initialize it again!"

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "init PluginManager..."

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    invoke-direct {v0, p0, p1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->SINGLETON:Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    goto :goto_9
.end method

.method private makeApplication(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ApplicationInfo;)Landroid/app/Application;
    .registers 7

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-nez v0, :cond_a

    const-class v0, Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create Application for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized savePluginToMap(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public addPlugByPkg(Ljava/lang/String;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Plugins is loaded, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V

    return-void
.end method

.method public findPluginByPackageName(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    return-object v0
.end method

.method public getActivitySelector()Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method getDexInternalStoragePath()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexInternalStoragePath:Ljava/io/File;

    return-object v0
.end method

.method public getPluginActivityLifeCycleCallback()Lcom/fanwei/bluearty/pluginmgr/PluginActivityLifeCycleCallback;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginActivityLifeCycleCallback:Lcom/fanwei/bluearty/pluginmgr/PluginActivityLifeCycleCallback;

    return-object v0
.end method

.method public getPluginBasePath(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getDexInternalStoragePath()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-dir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPluginLibPath(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getDexInternalStoragePath()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-dir/lib/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPluginOverdueVerifier()Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

    return-object v0
.end method

.method public getPluginParentClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getPlugins()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->services:[Ljava/lang/Object;

    return-object v0
.end method

.method public getUsingPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->mUsingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isMainThread()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public loadPlugin(Ljava/io/File;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate plugin file or Directory :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V

    :goto_1f
    return-object v0

    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-direct {p0, p1, v0, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->buildPlugInfo(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-direct {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->savePluginToMap(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V

    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1f

    :cond_34
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3d

    array-length v0, v2

    if-nez v0, :cond_56

    :cond_3d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find plugins in:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_59
    if-ge v1, v3, :cond_71

    aget-object v0, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_5f
    invoke-direct {p0, v0, v4, v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->buildPlugInfo(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-direct {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->savePluginToMap(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_68} :catch_6c

    :cond_68
    :goto_68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_59

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_68

    :cond_71
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1f
.end method

.method public loadPluginDex(Ljava/io/File;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexInternalStoragePath:Ljava/io/File;

    if-nez p2, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_b
    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->copyApkToPrivatePath(Ljava/io/File;Ljava/io/File;)V

    :cond_1f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->dexOutputPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;-><init>(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public removePlugByPkg(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setActivitySelector(Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;)V
    .registers 2

    if-nez p1, :cond_6

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/selector/DefaultActivitySelector;->getDefault()Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    move-result-object p1

    :cond_6
    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    return-void
.end method

.method public setPluginActivityLifeCycleCallback(Lcom/fanwei/bluearty/pluginmgr/PluginActivityLifeCycleCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginActivityLifeCycleCallback:Lcom/fanwei/bluearty/pluginmgr/PluginActivityLifeCycleCallback;

    return-void
.end method

.method public setPluginOverdueVerifier(Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginOverdueVerifier:Lcom/fanwei/bluearty/pluginmgr/verify/PluginOverdueVerifier;

    return-void
.end method

.method public setPluginParentClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginParentClassLoader:Ljava/lang/ClassLoader;

    goto :goto_4
.end method

.method public setUsingPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->mUsingPackage:Ljava/lang/String;

    return-void
.end method

.method public startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .registers 8

    if-nez p3, :cond_a

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "Cannot find ActivityInfo from plugin, could you declare this Activity in plugin?"

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p4, :cond_11

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    :cond_11
    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p4, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    invoke-interface {v1, p3}, Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;->selectDynamicActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "flag_act_fp"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2, p3}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p0, p2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;I)V
    .registers 9

    if-nez p3, :cond_a

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "Cannot find ActivityInfo from plugin, could you declare this Activity in plugin?"

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p4, :cond_11

    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    :cond_11
    if-eqz p1, :cond_16

    invoke-virtual {p2, p1}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->setHostActivity(Landroid/app/Activity;)V

    :cond_16
    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;

    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/fanwei/bluearty/pluginmgr/environment/CreateActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->activitySelector:Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;

    invoke-interface {v1, p3}, Lcom/fanwei/bluearty/pluginmgr/selector/DynamicActivitySelector;->selectDynamicActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "flag_act_fp"

    invoke-virtual {p4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;I)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 12

    invoke-virtual {p2, p3}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    invoke-virtual {p0, p2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 12

    invoke-virtual {p0, p2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public startMainActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startMainActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/Intent;)V

    return-void
.end method

.method public startMainActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getMainActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "Cannot find Main Activity from plugin."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public startMainActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startMainActivity(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;)V

    return-void
.end method

.method public startMainActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startMainActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/Intent;I)V

    return-void
.end method

.method public startMainActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/Intent;I)V
    .registers 11

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->pluginPkgToInfoMap:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getMainActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_1d

    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v1, "Cannot find Main Activity from plugin."

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;I)V

    goto :goto_c
.end method

.method public startPluginActivityFromOutside(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 11

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->mUsingPackage:Ljava/lang/String;

    if-eqz v0, :cond_8

    if-eqz p3, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->mUsingPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->findPluginByPackageName(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, p2}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-nez v3, :cond_34

    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find Activity from plugin."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->startActivityForResult(Landroid/app/Activity;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;I)V

    goto :goto_8
.end method

.method public tryGetPluginInfo(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->findPluginByPackageName(Ljava/lang/String;)Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/fanwei/bluearty/pluginmgr/verify/PluginNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plug not found by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/verify/PluginNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-object v0
.end method
