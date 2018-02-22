.class public Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;
.super Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;


# instance fields
.field private plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

.field private services:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;-><init>(Landroid/content/Context;)V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Create a plugin context, but not given host context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    iput-object p3, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->services:[Ljava/lang/Object;

    return-void
.end method

.method private getBaseContextInner(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    move-object v0, p1

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_c
    return-object v0
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->getBaseContextInner(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->services:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    const-string v0, "GetHostContext"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-super {p0}, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    const-string v0, "GetHostRes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_c

    :cond_1c
    const-string v0, "GetHostAssets"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_c

    :cond_2b
    const-string v0, "GetHostClassLoader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_c

    :cond_3a
    const-string v0, "GetPluginPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_49
    const-string v0, "GetPluginPkgName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_58
    const-string v0, "GetPluginPkgInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_c

    :cond_67
    const-string v0, "GetHostActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_c

    :cond_76
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->services:[Ljava/lang/Object;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->services:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_9a

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginContext;->services:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_84
    if-ge v1, v3, :cond_9a

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_84

    :cond_9a
    invoke-super {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/delegate/LayoutInflaterProxyContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_c
.end method
