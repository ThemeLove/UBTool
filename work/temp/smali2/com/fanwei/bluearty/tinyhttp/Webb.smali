.class public Lcom/fanwei/bluearty/tinyhttp/Webb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/bluearty/tinyhttp/Webb$FWHostnameVerifier;,
        Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;,
        Lcom/fanwei/bluearty/tinyhttp/Webb$AutoDisconnectInputStream;
    }
.end annotation


# static fields
.field public static final APP_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final APP_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final APP_JSON:Ljava/lang/String; = "application/json"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "com.fanwei.bluearty.tinyhttp.Webb/1.0"

.field public static final HDR_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HDR_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HDR_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HDR_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HDR_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HDR_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field static connectTimeout:Ljava/lang/Integer;

.field static globalBaseUri:Ljava/lang/String;

.field static final globalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static jsonIndentFactor:I

.field static readTimeout:Ljava/lang/Integer;


# instance fields
.field baseUri:Ljava/lang/String;

.field defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field followRedirects:Ljava/lang/Boolean;

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalHeaders:Ljava/util/Map;

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->connectTimeout:Ljava/lang/Integer;

    const v0, 0x2bf20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->readTimeout:Ljava/lang/Integer;

    const/4 v0, -0x1

    sput v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->jsonIndentFactor:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private _execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/bluearty/tinyhttp/Request;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, Lcom/fanwei/bluearty/tinyhttp/Response;

    invoke-direct {v4, p1}, Lcom/fanwei/bluearty/tinyhttp/Response;-><init>(Lcom/fanwei/bluearty/tinyhttp/Request;)V

    :try_start_7
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-ne v3, v5, :cond_40

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-eqz v3, :cond_40

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-static {v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->queryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_40
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4b
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_7 .. :try_end_4b} :catch_162
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4b} :catch_159
    .catchall {:try_start_7 .. :try_end_4b} :catchall_144

    :try_start_4b
    invoke-direct {p0, v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;->prepareSslConnection(Ljava/net/HttpURLConnection;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-virtual {v3}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    if-eqz v3, :cond_64

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_64
    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->useCaches:Z

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setTimeouts(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/net/HttpURLConnection;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->ifModifiedSince:Ljava/lang/Long;

    if-eqz v3, :cond_79

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->ifModifiedSince:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    :cond_79
    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->headers:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/fanwei/bluearty/tinyhttp/Webb;->mergeHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->addRequestProperties(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-class v3, Lorg/json/JSONObject;

    if-eq p2, v3, :cond_8a

    const-class v3, Lorg/json/JSONArray;

    if-ne p2, v3, :cond_91

    :cond_8a
    const-string v3, "Accept"

    const-string v5, "application/json"

    invoke-static {v0, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_91
    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-eq v3, v5, :cond_11c

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-eq v3, v5, :cond_11c

    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->streamPayload:Z

    if-eqz v3, :cond_f6

    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    invoke-static {v0, p1, v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->setContentTypeAndLengthForStreaming(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    iget-boolean v5, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    invoke-direct {p0, v0, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/Webb;->streamBody(Ljava/net/HttpURLConnection;Ljava/lang/Object;Z)V

    :cond_b1
    :goto_b1
    iput-object v0, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->statusCode:I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->responseMessage:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/fanwei/bluearty/tinyhttp/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_12d

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c8
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_4b .. :try_end_c8} :catch_108
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_c8} :catch_120
    .catchall {:try_start_4b .. :try_end_c8} :catchall_147

    move-result-object v2

    :goto_c9
    :try_start_c9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->wrapStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    if-ne p2, v3, :cond_db

    new-instance v3, Lcom/fanwei/bluearty/tinyhttp/Webb$AutoDisconnectInputStream;

    invoke-direct {v3, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb$AutoDisconnectInputStream;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    :try_end_da
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_c9 .. :try_end_da} :catch_108
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_da} :catch_15c
    .catchall {:try_start_c9 .. :try_end_da} :catchall_14d

    move-object v2, v3

    :cond_db
    :try_start_db
    invoke-virtual {v4}, Lcom/fanwei/bluearty/tinyhttp/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_132

    invoke-static {p2, v4, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->parseResponseBody(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V

    :goto_e4
    const-class v3, Ljava/io/InputStream;
    :try_end_e6
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_db .. :try_end_e6} :catch_108
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e6} :catch_136
    .catchall {:try_start_db .. :try_end_e6} :catchall_153

    if-ne p2, v3, :cond_e9

    const/4 v1, 0x0

    :cond_e9
    if-eqz v1, :cond_f5

    if-eqz v2, :cond_f0

    :try_start_ed
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_13c

    :cond_f0
    :goto_f0
    if-eqz v0, :cond_f5

    :try_start_f2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_13e

    :cond_f5
    :goto_f5
    return-object v4

    :cond_f6
    :try_start_f6
    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    sget v5, Lcom/fanwei/bluearty/tinyhttp/Webb;->jsonIndentFactor:I

    invoke-static {v0, p1, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->getPayloadAsBytesAndSetContentType(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;ZI)[B

    move-result-object v3

    if-eqz v3, :cond_b1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-direct {p0, v0, v3}, Lcom/fanwei/bluearty/tinyhttp/Webb;->writeBody(Ljava/net/HttpURLConnection;[B)V
    :try_end_107
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_f6 .. :try_end_107} :catch_108
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_107} :catch_120
    .catchall {:try_start_f6 .. :try_end_107} :catchall_147

    goto :goto_b1

    :catch_108
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_10c
    :try_start_10c
    throw v0
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10d

    :catchall_10d
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_111
    if-eqz v1, :cond_116

    :try_start_113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_140

    :cond_116
    :goto_116
    if-eqz v2, :cond_11b

    :try_start_118
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11b} :catch_142

    :cond_11b
    :goto_11b
    throw v0

    :cond_11c
    :try_start_11c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_11f
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_11c .. :try_end_11f} :catch_108
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_120
    .catchall {:try_start_11c .. :try_end_11f} :catchall_147

    goto :goto_b1

    :catch_120
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    :goto_125
    :try_start_125
    new-instance v3, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v3, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_12b

    :catchall_12b
    move-exception v0

    goto :goto_111

    :cond_12d
    :try_start_12d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_130
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_12d .. :try_end_130} :catch_108
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_130} :catch_120
    .catchall {:try_start_12d .. :try_end_130} :catchall_147

    move-result-object v2

    goto :goto_c9

    :cond_132
    :try_start_132
    invoke-static {p2, v4, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->parseErrorResponse(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V
    :try_end_135
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_132 .. :try_end_135} :catch_108
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_136
    .catchall {:try_start_132 .. :try_end_135} :catchall_153

    goto :goto_e4

    :catch_136
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_125

    :catch_13c
    move-exception v1

    goto :goto_f0

    :catch_13e
    move-exception v0

    goto :goto_f5

    :catch_140
    move-exception v1

    goto :goto_116

    :catch_142
    move-exception v1

    goto :goto_11b

    :catchall_144
    move-exception v0

    move-object v1, v2

    goto :goto_111

    :catchall_147
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catchall_14d
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catchall_153
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catch_159
    move-exception v0

    move-object v1, v2

    goto :goto_125

    :catch_15c
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_125

    :catch_162
    move-exception v0

    move-object v1, v2

    goto :goto_10c
.end method

.method private _executeHttps(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/bluearty/tinyhttp/Request;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<TT;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v4, Lcom/fanwei/bluearty/tinyhttp/Response;

    invoke-direct {v4, p1}, Lcom/fanwei/bluearty/tinyhttp/Response;-><init>(Lcom/fanwei/bluearty/tinyhttp/Request;)V

    :try_start_7
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-ne v3, v5, :cond_40

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-eqz v3, :cond_40

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-static {v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->queryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_40
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4b
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_7 .. :try_end_4b} :catch_162
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4b} :catch_159
    .catchall {:try_start_7 .. :try_end_4b} :catchall_144

    :try_start_4b
    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setSSLParams(Ljavax/net/ssl/HttpsURLConnection;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-virtual {v3}, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    if-eqz v3, :cond_64

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_64
    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->useCaches:Z

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    invoke-direct {p0, p1, v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setTimeouts(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/net/HttpURLConnection;)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->ifModifiedSince:Ljava/lang/Long;

    if-eqz v3, :cond_79

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->ifModifiedSince:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    :cond_79
    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->headers:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/fanwei/bluearty/tinyhttp/Webb;->mergeHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->addRequestProperties(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    const-class v3, Lorg/json/JSONObject;

    if-eq p2, v3, :cond_8a

    const-class v3, Lorg/json/JSONArray;

    if-ne p2, v3, :cond_91

    :cond_8a
    const-string v3, "Accept"

    const-string v5, "application/json"

    invoke-static {v0, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_91
    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-eq v3, v5, :cond_11c

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v5, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-eq v3, v5, :cond_11c

    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->streamPayload:Z

    if-eqz v3, :cond_f6

    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    invoke-static {v0, p1, v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->setContentTypeAndLengthForStreaming(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    iget-object v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    iget-boolean v5, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    invoke-direct {p0, v0, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/Webb;->streamBody(Ljava/net/HttpURLConnection;Ljava/lang/Object;Z)V

    :cond_b1
    :goto_b1
    iput-object v0, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->statusCode:I

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/fanwei/bluearty/tinyhttp/Response;->responseMessage:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/fanwei/bluearty/tinyhttp/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_12d

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_c8
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_4b .. :try_end_c8} :catch_108
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_c8} :catch_120
    .catchall {:try_start_4b .. :try_end_c8} :catchall_147

    move-result-object v2

    :goto_c9
    :try_start_c9
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->wrapStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    const-class v3, Ljava/io/InputStream;

    if-ne p2, v3, :cond_db

    new-instance v3, Lcom/fanwei/bluearty/tinyhttp/Webb$AutoDisconnectInputStream;

    invoke-direct {v3, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb$AutoDisconnectInputStream;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    :try_end_da
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_c9 .. :try_end_da} :catch_108
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_da} :catch_15c
    .catchall {:try_start_c9 .. :try_end_da} :catchall_14d

    move-object v2, v3

    :cond_db
    :try_start_db
    invoke-virtual {v4}, Lcom/fanwei/bluearty/tinyhttp/Response;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_132

    invoke-static {p2, v4, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->parseResponseBody(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V

    :goto_e4
    const-class v3, Ljava/io/InputStream;
    :try_end_e6
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_db .. :try_end_e6} :catch_108
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e6} :catch_136
    .catchall {:try_start_db .. :try_end_e6} :catchall_153

    if-ne p2, v3, :cond_e9

    const/4 v1, 0x0

    :cond_e9
    if-eqz v1, :cond_f5

    if-eqz v2, :cond_f0

    :try_start_ed
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_13c

    :cond_f0
    :goto_f0
    if-eqz v0, :cond_f5

    :try_start_f2
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_13e

    :cond_f5
    :goto_f5
    return-object v4

    :cond_f6
    :try_start_f6
    iget-boolean v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    sget v5, Lcom/fanwei/bluearty/tinyhttp/Webb;->jsonIndentFactor:I

    invoke-static {v0, p1, v3, v5}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->getPayloadAsBytesAndSetContentType(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;ZI)[B

    move-result-object v3

    if-eqz v3, :cond_b1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-direct {p0, v0, v3}, Lcom/fanwei/bluearty/tinyhttp/Webb;->writeBody(Ljava/net/HttpURLConnection;[B)V
    :try_end_107
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_f6 .. :try_end_107} :catch_108
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_107} :catch_120
    .catchall {:try_start_f6 .. :try_end_107} :catchall_147

    goto :goto_b1

    :catch_108
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_10c
    :try_start_10c
    throw v0
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10d

    :catchall_10d
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_111
    if-eqz v1, :cond_116

    :try_start_113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_140

    :cond_116
    :goto_116
    if-eqz v2, :cond_11b

    :try_start_118
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11b} :catch_142

    :cond_11b
    :goto_11b
    throw v0

    :cond_11c
    :try_start_11c
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_11f
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_11c .. :try_end_11f} :catch_108
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_120
    .catchall {:try_start_11c .. :try_end_11f} :catchall_147

    goto :goto_b1

    :catch_120
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    :goto_125
    :try_start_125
    new-instance v3, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v3, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_12b

    :catchall_12b
    move-exception v0

    goto :goto_111

    :cond_12d
    :try_start_12d
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_130
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_12d .. :try_end_130} :catch_108
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_130} :catch_120
    .catchall {:try_start_12d .. :try_end_130} :catchall_147

    move-result-object v2

    goto :goto_c9

    :cond_132
    :try_start_132
    invoke-static {p2, v4, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->parseErrorResponse(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V
    :try_end_135
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_132 .. :try_end_135} :catch_108
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_136
    .catchall {:try_start_132 .. :try_end_135} :catchall_153

    goto :goto_e4

    :catch_136
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_125

    :catch_13c
    move-exception v1

    goto :goto_f0

    :catch_13e
    move-exception v0

    goto :goto_f5

    :catch_140
    move-exception v1

    goto :goto_116

    :catch_142
    move-exception v1

    goto :goto_11b

    :catchall_144
    move-exception v0

    move-object v1, v2

    goto :goto_111

    :catchall_147
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catchall_14d
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catchall_153
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_111

    :catch_159
    move-exception v0

    move-object v1, v2

    goto :goto_125

    :catch_15c
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_125

    :catch_162
    move-exception v0

    move-object v1, v2

    goto :goto_10c
.end method

.method private buildPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pathOrUri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_1a
    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->baseUri:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->baseUri:Ljava/lang/String;

    :goto_21
    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_35
    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalBaseUri:Ljava/lang/String;

    goto :goto_21
.end method

.method public static create()Lcom/fanwei/bluearty/tinyhttp/Webb;
    .registers 1

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-direct {v0}, Lcom/fanwei/bluearty/tinyhttp/Webb;-><init>()V

    return-object v0
.end method

.method private prepareSslConnection(Ljava/net/HttpURLConnection;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_20

    :cond_8
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_20

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_17
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_20
    return-void
.end method

.method public static setConnectTimeout(I)V
    .registers 2

    if-lez p0, :cond_9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->connectTimeout:Ljava/lang/Integer;

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static setGlobalBaseUri(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalBaseUri:Ljava/lang/String;

    return-void
.end method

.method public static setGlobalHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_8

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalHeaders:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalHeaders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public static setJsonIndentFactor(I)V
    .registers 1

    sput p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->jsonIndentFactor:I

    return-void
.end method

.method public static setReadTimeout(I)V
    .registers 2

    if-lez p0, :cond_9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_6
    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->readTimeout:Ljava/lang/Integer;

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private setTimeouts(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/net/HttpURLConnection;)V
    .registers 4

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->connectTimeout:Ljava/lang/Integer;

    if-nez v0, :cond_8

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->connectTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_15

    :cond_8
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->connectTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->connectTimeout:Ljava/lang/Integer;

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_15
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->readTimeout:Ljava/lang/Integer;

    if-nez v0, :cond_1d

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->readTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    :cond_1d
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->readTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->readTimeout:Ljava/lang/Integer;

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_2a
    return-void

    :cond_2b
    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->connectTimeout:Ljava/lang/Integer;

    goto :goto_e

    :cond_2e
    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/Webb;->readTimeout:Ljava/lang/Integer;

    goto :goto_23
.end method

.method private streamBody(Ljava/net/HttpURLConnection;Ljava/lang/Object;Z)V
    .registers 7

    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_2d

    new-instance v1, Ljava/io/FileInputStream;

    check-cast p2, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x1

    move-object p2, v1

    :goto_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p3, :cond_1a

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v1

    :cond_1a
    invoke-static {p2, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_31

    if-eqz v2, :cond_25

    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_3f

    :cond_25
    :goto_25
    if-eqz p2, :cond_2c

    if-eqz v0, :cond_2c

    :try_start_29
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_41

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    check-cast p2, Ljava/io/InputStream;

    const/4 v0, 0x0

    goto :goto_d

    :catchall_31
    move-exception v1

    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_43

    :cond_37
    :goto_37
    if-eqz p2, :cond_3e

    if-eqz v0, :cond_3e

    :try_start_3b
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_45

    :cond_3e
    :goto_3e
    throw v1

    :catch_3f
    move-exception v1

    goto :goto_25

    :catch_41
    move-exception v0

    goto :goto_2c

    :catch_43
    move-exception v2

    goto :goto_37

    :catch_45
    move-exception v0

    goto :goto_3e
.end method

.method private writeBody(Ljava/net/HttpURLConnection;[B)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_11

    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_18

    :cond_10
    :goto_10
    return-void

    :catchall_11
    move-exception v0

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1a

    :cond_17
    :goto_17
    throw v0

    :catch_18
    move-exception v0

    goto :goto_10

    :catch_1a
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->buildPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb;Lcom/fanwei/bluearty/tinyhttp/Request$Method;Ljava/lang/String;)V

    return-object v0
.end method

.method execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fanwei/bluearty/tinyhttp/Request;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->retryCount:I

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lcom/fanwei/bluearty/tinyhttp/Request;->isHttpsRequest()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1, p2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->_executeHttps(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    :cond_f
    :goto_f
    if-nez v0, :cond_61

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->_execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    goto :goto_f

    :cond_1c
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    if-nez v0, :cond_24

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->DEFAULT:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    :cond_24
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_28
    iget v2, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->retryCount:I

    if-gt v1, v2, :cond_f

    :try_start_2c
    invoke-virtual {p1}, Lcom/fanwei/bluearty/tinyhttp/Request;->isHttpsRequest()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-direct {p0, p1, p2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->_executeHttps(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    :goto_36
    iget v2, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->retryCount:I

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    invoke-virtual {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->isRetryUseful(Lcom/fanwei/bluearty/tinyhttp/Response;)Z
    :try_end_3f
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_2c .. :try_end_3f} :catch_53

    move-result v2

    if-eqz v2, :cond_f

    :cond_42
    iget-boolean v2, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->waitExponential:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    invoke-virtual {v2, v1}, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->wait(I)V

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_4e
    :try_start_4e
    invoke-direct {p0, p1, p2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->_execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;
    :try_end_51
    .catch Lcom/fanwei/bluearty/tinyhttp/WebbException; {:try_start_4e .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_36

    :catch_53
    move-exception v2

    iget v3, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->retryCount:I

    if-ge v1, v3, :cond_60

    iget-object v3, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    invoke-virtual {v3, v2}, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->isRecoverable(Lcom/fanwei/bluearty/tinyhttp/WebbException;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_60
    throw v2

    :cond_61
    iget-boolean v1, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->ensureSuccess:Z

    if-eqz v1, :cond_68

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->ensureSuccess()V

    :cond_68
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->buildPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb;Lcom/fanwei/bluearty/tinyhttp/Request$Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->baseUri:Ljava/lang/String;

    return-object v0
.end method

.method mergeHeaders(Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Webb;->globalHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_13
    iget-object v1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    if-eqz v1, :cond_23

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1e
    iget-object v1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_23
    if-eqz p1, :cond_2b

    if-nez v0, :cond_28

    :goto_27
    return-object p1

    :cond_28
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2b
    move-object p1, v0

    goto :goto_27
.end method

.method public post(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->POST:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->buildPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb;Lcom/fanwei/bluearty/tinyhttp/Request$Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Request;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->PUT:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->buildPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb;Lcom/fanwei/bluearty/tinyhttp/Request$Method;Ljava/lang/String;)V

    return-object v0
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->baseUri:Ljava/lang/String;

    return-void
.end method

.method public setDefaultHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    :cond_b
    if-nez p2, :cond_13

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method public setFollowRedirects(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->followRedirects:Ljava/lang/Boolean;

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setRetryManager(Lcom/fanwei/bluearty/tinyhttp/RetryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->retryManager:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    return-void
.end method

.method public setSSLParams(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    :try_start_4
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;

    invoke-direct {v3, p0}, Lcom/fanwei/bluearty/tinyhttp/Webb$FWX509TrustManager;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb;)V

    aput-object v3, v1, v2

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_27} :catch_30

    :cond_27
    :goto_27
    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/Webb$FWHostnameVerifier;

    invoke-direct {v0, v4}, Lcom/fanwei/bluearty/tinyhttp/Webb$FWHostnameVerifier;-><init>(Lcom/fanwei/bluearty/tinyhttp/Webb$1;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    goto :goto_27
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Webb;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
