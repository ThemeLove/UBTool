.class public Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;
.super Ljava/lang/Object;


# instance fields
.field private checkForUpdate:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "checkForUpdate"
    .end annotation
.end field

.field private checkForUpdateInterval:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "checkForUpdateInterval"
    .end annotation
.end field

.field private checkForUpdateIntervalShort:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "checkForUpdateIntervalShort"
    .end annotation
.end field

.field private checkNetworkInterval:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "checkNetworkInterval"
    .end annotation
.end field

.field private downloadMaxCount:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "downloadMaxCount"
    .end annotation
.end field

.field private downloadTimeOut:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "downloadTimeOut"
    .end annotation
.end field

.field private needUpdate:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "needUpdate"
    .end annotation
.end field

.field private requestTimeOut:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "requestTimeOut"
    .end annotation
.end field

.field private resumeFromBreak:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "resumeFromBreak"
    .end annotation
.end field

.field private updateFileSize:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "updateFileSize"
    .end annotation
.end field

.field private updateMd5:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "updateMd5"
    .end annotation
.end field

.field private updateUrl:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "updateUrl"
    .end annotation
.end field

.field private updateVersion:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "updateVersion"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckForUpdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckForUpdateInterval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdateInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckForUpdateIntervalShort()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdateIntervalShort:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckNetworkInterval()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkNetworkInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadMaxCount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadMaxCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTimeOut()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadTimeOut:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedUpdate()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->needUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeOut()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->requestTimeOut:Ljava/lang/String;

    return-object v0
.end method

.method public getResumeFromBreak()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->resumeFromBreak:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFileSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateFileSize:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateMd5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckForUpdate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdate:Ljava/lang/String;

    return-void
.end method

.method public setCheckForUpdateInterval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdateInterval:Ljava/lang/String;

    return-void
.end method

.method public setCheckForUpdateIntervalShort(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdateIntervalShort:Ljava/lang/String;

    return-void
.end method

.method public setCheckNetworkInterval(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkNetworkInterval:Ljava/lang/String;

    return-void
.end method

.method public setDownloadMaxCount(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadMaxCount:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTimeOut(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadTimeOut:Ljava/lang/String;

    return-void
.end method

.method public setNeedUpdate(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->needUpdate:Ljava/lang/String;

    return-void
.end method

.method public setRequestTimeOut(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->requestTimeOut:Ljava/lang/String;

    return-void
.end method

.method public setResumeFromBreak(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->resumeFromBreak:Ljava/lang/String;

    return-void
.end method

.method public setUpdateFileSize(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateFileSize:Ljava/lang/String;

    return-void
.end method

.method public setUpdateMd5(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateMd5:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUpdateResp{needUpdate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->needUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateFileSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->updateFileSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resumeFromBreak=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->resumeFromBreak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkForUpdate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkForUpdateInterval=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkForUpdateInterval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkNetworkInterval=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->checkNetworkInterval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadMaxCount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadMaxCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadTimeOut=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->downloadTimeOut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestTimeOut=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateResp;->requestTimeOut:Ljava/lang/String;

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
