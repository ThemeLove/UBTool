.class Lcom/fanwei/jubaosdk/shell/a$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->a(Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/a$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/fanwei/jubaosdk/shell/a$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "load plugin file success"

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_e7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;

    invoke-static {}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->getSingleton()Lcom/fanwei/bluearty/pluginmgr/PluginManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/pluginmgr/PluginManager;->setUsingPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_FILEPATH_NEW"

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a$8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/a;->l(Lcom/fanwei/jubaosdk/shell/a;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_VERSION_NEW"

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v3}, Lcom/fanwei/jubaosdk/shell/a;->l(Lcom/fanwei/jubaosdk/shell/a;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_MD5_NEW"

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v3}, Lcom/fanwei/jubaosdk/shell/a;->l(Lcom/fanwei/jubaosdk/shell/a;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v1}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_LENGTH_NEW"

    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v3}, Lcom/fanwei/jubaosdk/shell/a;->l(Lcom/fanwei/jubaosdk/shell/a;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->getUpdateFileSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->writeLong(Ljava/lang/String;J)V

    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load plugin file success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/a$8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fanwei/bluearty/pluginmgr/environment/PlugInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_af
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    if-eqz v0, :cond_e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load plugin sCheckForUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/fanwei/jubaosdk/shell/internal/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_e6
    return-void

    :cond_e7
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_af
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load plugin file failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;)Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->i(Lcom/fanwei/jubaosdk/shell/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LoadNewPlugin throws a exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$8;->c:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$8;->a(Ljava/util/Collection;)V

    return-void
.end method
