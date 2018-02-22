.class public Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;
.super Ldalvik/system/DexClassLoader;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field protected plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;


# direct methods
.method public constructor <init>(Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6

    invoke-direct {p0, p2, p3, p4, p5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    return-void
.end method


# virtual methods
.method public getPlugInfo()Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/environment/PluginClassLoader;->plugInfo:Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    return-object v0
.end method
