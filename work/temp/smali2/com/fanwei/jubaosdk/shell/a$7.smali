.class Lcom/fanwei/jubaosdk/shell/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->a(Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/a$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify plugin success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    sget-wide v1, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_36
    return-void

    :cond_37
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/a$7;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_50
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    sget-wide v1, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_36
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify plugin failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->i(Lcom/fanwei/jubaosdk/shell/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "verify plugin throws a exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->j(Lcom/fanwei/jubaosdk/shell/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$7;->b:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    sget-wide v2, Lcom/fanwei/jubaosdk/shell/internal/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$7;->a(Ljava/lang/String;)V

    return-void
.end method
