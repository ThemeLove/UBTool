.class public Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;
.super Ljava/lang/Object;


# instance fields
.field private loadRunInMainThread:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "runInMainThread"
    .end annotation
.end field

.field private printLog:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "printLog"
    .end annotation
.end field

.field private useHttps:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "useHttps"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadRunInMainThread()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->loadRunInMainThread:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintLog()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->printLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUseHttps()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->useHttps:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadRunInMainThread(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->loadRunInMainThread:Ljava/lang/String;

    iput-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->loadRunInMainThread:Ljava/lang/String;

    return-void
.end method

.method public setPrintLog(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->printLog:Ljava/lang/String;

    return-void
.end method

.method public setUseHttps(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->useHttps:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDKDebugResp{useHttps=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->useHttps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", printLog=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->printLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadRunInMainThread=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/SDKDebugResp;->loadRunInMainThread:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
