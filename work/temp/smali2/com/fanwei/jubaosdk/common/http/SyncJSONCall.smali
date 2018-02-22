.class public Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;


# instance fields
.field private final request:Lcom/fanwei/bluearty/tinyhttp/Request;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/Webb;->create()Lcom/fanwei/bluearty/tinyhttp/Webb;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setDefaultHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fanwei/jubaosdk/common/entity/PayMethodsRequest;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->post(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/tinyhttp/Request;->body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;

    return-void
.end method


# virtual methods
.method public execute()Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->asJsonObject()Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-class v1, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    invoke-static {v0, v1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->execute()Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/SyncJSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-object v0
.end method
