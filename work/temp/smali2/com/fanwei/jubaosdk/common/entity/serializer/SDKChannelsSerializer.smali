.class public Lcom/fanwei/jubaosdk/common/entity/serializer/SDKChannelsSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/bluearty/simplejson/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/bluearty/simplejson/serializer/Serializer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialization(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/common/entity/serializer/SDKChannelsSerializer;->deserialization(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deserialization(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_b1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    new-instance v4, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;

    invoke-direct {v4}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;-><init>()V

    const-string v5, "payType"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setPayType(Ljava/lang/Integer;)V

    const-string v5, "payChannel"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setPayChannel(Ljava/lang/String;)V

    const-string v5, "channelType"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setChannelType(Ljava/lang/Integer;)V

    const-string v5, "successUrl"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setSuccessUrl(Ljava/lang/String;)V

    const-string v5, "sdkUpstream"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setSdkUpstream(Ljava/lang/Integer;)V

    const-string v5, "hideWebView"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setHideWebView(Ljava/lang/Integer;)V

    const-string v5, "time"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setTime(Ljava/lang/String;)V

    const-string v5, "count"

    const-string v6, "0"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setCount(Ljava/lang/String;)V

    const-string v5, "useHistory"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setUseHistory(Ljava/lang/Integer;)V

    const-string v5, "srcSchemes"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setSrcSchemes(Ljava/lang/String;)V

    const-string v5, "dstSchemes"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fanwei/jubaosdk/common/entity/SDKChannel;->setDstSchemes(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a8} :catch_ad

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_c

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b1
    return-object v2
.end method

.method public bridge synthetic serialization(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/common/entity/serializer/SDKChannelsSerializer;->serialization(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialization(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/entity/SDKChannel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
