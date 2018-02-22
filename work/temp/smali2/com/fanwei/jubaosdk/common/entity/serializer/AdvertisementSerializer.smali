.class public Lcom/fanwei/jubaosdk/common/entity/serializer/AdvertisementSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/bluearty/simplejson/serializer/Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fanwei/bluearty/simplejson/serializer/Serializer",
        "<",
        "Lcom/fanwei/jubaosdk/common/entity/Advertisement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialization(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/Advertisement;
    .registers 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/fanwei/jubaosdk/common/entity/Advertisement;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/common/entity/Advertisement;-><init>()V

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fanwei/jubaosdk/common/entity/Advertisement;->setName(Ljava/lang/String;)V

    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/entity/Advertisement;->setUrl(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_21

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_20
.end method

.method public bridge synthetic deserialization(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/common/entity/serializer/AdvertisementSerializer;->deserialization(Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/entity/Advertisement;

    move-result-object v0

    return-object v0
.end method

.method public serialization(Lcom/fanwei/jubaosdk/common/entity/Advertisement;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/common/entity/Advertisement;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/common/entity/Advertisement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialization(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    check-cast p1, Lcom/fanwei/jubaosdk/common/entity/Advertisement;

    invoke-virtual {p0, p1}, Lcom/fanwei/jubaosdk/common/entity/serializer/AdvertisementSerializer;->serialization(Lcom/fanwei/jubaosdk/common/entity/Advertisement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
