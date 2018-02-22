.class public Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;
.super Ljava/lang/Object;


# instance fields
.field private errorInfo:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "errorInfo"
    .end annotation
.end field

.field private networkType:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "networkType"
    .end annotation
.end field

.field private pluginName:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "pluginName"
    .end annotation
.end field

.field private pluginVersion:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "pluginVersion"
    .end annotation
.end field

.field private sdkVersion:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "sdkVersion"
    .end annotation
.end field

.field private systemDetail:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "systemDetail"
    .end annotation
.end field

.field private systemType:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "systemType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->errorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->pluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemDetail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->systemDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->systemType:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->errorInfo:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->networkType:Ljava/lang/String;

    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->pluginName:Ljava/lang/String;

    return-void
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->pluginVersion:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSystemDetail(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->systemDetail:Ljava/lang/String;

    return-void
.end method

.method public setSystemType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/internal/CheckUpdateReq;->systemType:Ljava/lang/String;

    return-void
.end method
