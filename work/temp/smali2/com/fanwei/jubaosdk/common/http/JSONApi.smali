.class public final Lcom/fanwei/jubaosdk/common/http/JSONApi;
.super Ljava/lang/Object;


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://sdk.jubaopay.com"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/Webb;->create()Lcom/fanwei/bluearty/tinyhttp/Webb;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-string v1, "http://sdk.jubaopay.com"

    invoke-virtual {v0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setBaseUri(Ljava/lang/String;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setDefaultHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No Instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static newGetHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/http/JSONCall;
    .registers 4

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->get(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    new-instance v1, Lcom/fanwei/jubaosdk/common/http/JSONCall;

    invoke-direct {v1, p0, v0}, Lcom/fanwei/jubaosdk/common/http/JSONCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V

    return-object v1
.end method

.method public static newGetHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONCall;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/jubaosdk/common/core/Dispatcher;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/fanwei/jubaosdk/common/http/JSONCall;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONApi;->newGetHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)Lcom/fanwei/jubaosdk/common/http/JSONCall;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_15

    move-result-object v0

    :try_start_5
    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->getRequest()Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v1

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;->body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_14} :catch_23

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_19
    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_23
    move-exception v1

    goto :goto_19
.end method

.method public static newPostHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONCall;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/jubaosdk/common/core/Dispatcher;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/fanwei/jubaosdk/common/http/JSONCall;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->post(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v2

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONCall;

    invoke-direct {v0, p0, v2}, Lcom/fanwei/jubaosdk/common/http/JSONCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_17
.end method

.method public static newRetryPostHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONCall;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/jubaosdk/common/core/Dispatcher;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/fanwei/jubaosdk/common/http/JSONCall;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    invoke-direct {v0}, Lcom/fanwei/bluearty/tinyhttp/RetryManager;-><init>()V

    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setRetryManager(Lcom/fanwei/bluearty/tinyhttp/RetryManager;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->post(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/fanwei/bluearty/tinyhttp/Request;->retry(IZ)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v2

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONCall;

    invoke-direct {v0, p0, v2}, Lcom/fanwei/jubaosdk/common/http/JSONCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_30

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_2f
.end method

.method public static retryPostHttpCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/jubaosdk/common/core/Dispatcher;",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/fanwei/jubaosdk/common/http/JSONApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->post(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v2

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->toJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;

    invoke-direct {v0, p0, v2}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_18

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    sget-object v2, Lcom/fanwei/jubaosdk/common/http/JSONApi;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fanwei/jubaosdk/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_17
.end method
