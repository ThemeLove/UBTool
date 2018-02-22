.class public Lcom/fanwei/jubaosdk/shell/internal/d;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/internal/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;"
        }
    .end annotation

    const-string v1, "tag"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load plugin on main thread : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v0, v3, :cond_2f

    const/4 v0, 0x1

    :goto_18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/d;->a:Ljava/lang/String;

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LoadPlugin throws a exception : filePath is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_18

    :cond_31
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LoadPlugin throws a exception : filePath not exists "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->loadPlugin(Ljava/io/File;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/shell/internal/d;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
