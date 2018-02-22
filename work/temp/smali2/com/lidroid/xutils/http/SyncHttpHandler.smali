.class public Lcom/lidroid/xutils/http/SyncHttpHandler;
.super Ljava/lang/Object;


# instance fields
.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedTimes:I


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    iput-object p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    iput-object p3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->charset:Ljava/lang/String;

    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_28

    new-instance v0, Lcom/lidroid/xutils/http/ResponseStream;

    iget-object v2, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->charset:Ljava/lang/String;

    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/ResponseStream;->setRequestMethod(Ljava/lang/String;)V

    :goto_27
    return-object v0

    :cond_28
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_30

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_48

    :cond_30
    iget-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    :cond_3b
    iget-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    if-eqz v0, :cond_5e

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/SyncHttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;

    move-result-object v0

    goto :goto_27

    :cond_48
    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_54

    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v2, "maybe the file has downloaded completely"

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_54
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_5e
    const/4 v0, 0x0

    goto :goto_27
.end method


# virtual methods
.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseStream;
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    :cond_6
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v0, Lcom/lidroid/xutils/http/ResponseStream;

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Ljava/lang/String;)V

    :goto_2f
    return-object v0

    :cond_30
    iget-object v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/SyncHttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseStream;
    :try_end_3b
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_3b} :catch_3d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3b} :catch_52
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_3b} :catch_60
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_6 .. :try_end_3b} :catch_7d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3b} :catch_7f

    move-result-object v0

    goto :goto_2f

    :catch_3d
    move-exception v0

    iget v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    :goto_4a
    if-nez v1, :cond_6

    new-instance v1, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_52
    move-exception v0

    iget v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_4a

    :catch_60
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_4a

    :catch_7d
    move-exception v0

    throw v0

    :catch_7f
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->retriedTimes:I

    iget-object v3, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_4a
.end method

.method public setExpiry(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->expiry:J

    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/SyncHttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    return-void
.end method
