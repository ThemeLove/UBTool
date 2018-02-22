.class Lcom/fanwei/jubaosdk/shell/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
        "<",
        "Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;)V
    .registers 5

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->getUseHttps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->a:Z

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->getPrintLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;Z)V

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->getLoadRunInMainThread()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/internal/a;->b:Z

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "loadRunInMainThread"

    sget-boolean v2, Lcom/fanwei/jubaosdk/shell/internal/a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->writeBoolean(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get sdk debug success useHttps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->getUseHttps()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enableLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->getPrintLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_5c
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get sdk debug failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->i(Lcom/fanwei/jubaosdk/shell/a;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GetSDKDebug throws a exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$4;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->f(Lcom/fanwei/jubaosdk/shell/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/shell/a$4;->a(Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;)V

    return-void
.end method

.method public responseClassType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;

    return-object v0
.end method
