.class Lcom/fanwei/jubaosdk/shell/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->setUsingPackage(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPlugin sucess apkPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_42
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_4d
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlugin sucess delete file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlugin failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_VERSION_NEW"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_FILEPATH_NEW"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_MD5_NEW"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_LENGTH_NEW"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->writeLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$2;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->h(Lcom/fanwei/jubaosdk/shell/a;)V

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$2;->a(Ljava/util/Collection;)V

    return-void
.end method
