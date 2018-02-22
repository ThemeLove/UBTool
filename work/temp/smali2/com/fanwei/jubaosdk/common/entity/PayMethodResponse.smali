.class public Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelTypeList:Ljava/lang/String;

.field private channels:Ljava/util/List;
    .annotation runtime Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;
        value = Lcom/fanwei/jubaosdk/common/entity/serializer/SDKChannelsSerializer;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/Integer;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelTypeList()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->channelTypeList:Ljava/lang/String;

    return-object v0
.end method

.method public getChannels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelTypeList(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->channelTypeList:Ljava/lang/String;

    return-void
.end method

.method public setChannels(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->channels:Ljava/util/List;

    return-void
.end method

.method public setCode(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->code:Ljava/lang/Integer;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->message:Ljava/lang/String;

    return-void
.end method
