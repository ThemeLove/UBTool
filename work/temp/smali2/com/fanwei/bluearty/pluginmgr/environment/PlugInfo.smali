.class public Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activities:Ljava/util/Map;
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

.field private transient application:Landroid/app/Application;

.field private transient assetManager:Landroid/content/res/AssetManager;

.field private transient classLoader:Ljava/lang/ClassLoader;

.field private filePath:Ljava/lang/String;

.field private hostActivity:Landroid/app/Activity;

.field private id:Ljava/lang/String;

.field private transient isApplicationOnCreated:Z

.field private mainActivity:Landroid/content/pm/ResolveInfo;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient resources:Landroid/content/res/Resources;

.field private services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fixActivityInfo(Landroid/content/pm/ActivityInfo;)V
    .registers 4

    if-eqz p1, :cond_25

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_25
    return-void
.end method


# virtual methods
.method public addActivity(Landroid/content/pm/ResolveInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    :cond_d
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->fixActivityInfo(Landroid/content/pm/ActivityInfo;)V

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->mainActivity:Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->mainActivity:Landroid/content/pm/ResolveInfo;

    :cond_39
    return-void
.end method

.method public addReceiver(Landroid/content/pm/ResolveInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addService(Landroid/content/pm/ResolveInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ensureApplicationCreated()V
    .registers 6

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->isApplicationCreated()Z

    move-result v0

    if-eqz v0, :cond_6a

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_66

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2c} :catch_65
    .catchall {:try_start_7 .. :try_end_2c} :catchall_6b

    if-eqz v1, :cond_1e

    :try_start_2e
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->application:Landroid/app/Application;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v1, v4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_45} :catch_46
    .catchall {:try_start_2e .. :try_end_45} :catchall_6b

    goto :goto_1e

    :catch_46
    move-exception v1

    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create Receiver : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/Trace;->store(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_64} :catch_65
    .catchall {:try_start_47 .. :try_end_64} :catchall_6b

    goto :goto_1e

    :catch_65
    move-exception v0

    :cond_66
    const/4 v0, 0x1

    :try_start_67
    iput-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->isApplicationOnCreated:Z

    monitor-exit p0

    :cond_6a
    return-void

    :catchall_6b
    move-exception v0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    if-nez v2, :cond_21

    iget-object v2, p1, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public findActivityByAction(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_e

    :cond_34
    move-object v0, v1

    goto :goto_e
.end method

.method public findActivityByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_26
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-nez v0, :cond_32

    move-object v0, v1

    goto :goto_8

    :cond_32
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_8
.end method

.method public findActivityByClassNameFromPkg(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1e
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_25

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_2c
    if-ge v2, v4, :cond_24

    aget-object v1, v3, v2

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object v0, v1

    goto :goto_24

    :cond_3a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2c
.end method

.method public findReceiverByClassName(Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v0, v1

    goto :goto_7

    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f
.end method

.method public findServiceByAction(Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_15

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_e

    :cond_30
    move-object v0, v1

    goto :goto_e
.end method

.method public findServiceByClassName(Ljava/lang/String;)Landroid/content/pm/ServiceInfo;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object v0, v1

    goto :goto_7

    :cond_1d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f
.end method

.method public getActivities()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_5
.end method

.method public getActivityMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->assetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHostActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->hostActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMainActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->mainActivity:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->providers:Ljava/util/List;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    return v0

    :cond_8
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public isApplicationCreated()Z
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->application:Landroid/app/Application;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->isApplicationOnCreated:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setApplication(Landroid/app/Application;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->application:Landroid/app/Application;

    return-void
.end method

.method public setAssetManager(Landroid/content/res/AssetManager;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setHostActivity(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->hostActivity:Landroid/app/Activity;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .registers 4

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->activities:Ljava/util/Map;

    return-void
.end method

.method public setProviders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->providers:Ljava/util/List;

    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method public setServices(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->services:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
