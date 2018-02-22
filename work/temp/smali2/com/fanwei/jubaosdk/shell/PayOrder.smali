.class public final Lcom/fanwei/jubaosdk/shell/PayOrder;
.super Ljava/lang/Object;


# instance fields
.field private amount:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "amount"
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "appid"
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "channelid"
    .end annotation
.end field

.field private goodsName:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "goodsname"
    .end annotation
.end field

.field private payId:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "payid"
    .end annotation
.end field

.field private playerId:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "playerid"
    .end annotation
.end field

.field private remark:Ljava/lang/String;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/NickName;
        value = "remark"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->amount:Ljava/lang/String;

    return-object v0
.end method

.method getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getPayId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->payId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->amount:Ljava/lang/String;

    return-object p0
.end method

.method setAppId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public setGoodsName(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->goodsName:Ljava/lang/String;

    return-object p0
.end method

.method public setPayId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->payId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->playerId:Ljava/lang/String;

    return-object p0
.end method

.method public setRemark(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/PayOrder;->remark:Ljava/lang/String;

    return-object p0
.end method
