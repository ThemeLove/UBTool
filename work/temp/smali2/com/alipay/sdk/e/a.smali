.class public final Lcom/alipay/sdk/e/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/e/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/net/URL;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_8
.end method

.method private b()Landroid/net/NetworkInfo;
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/e/a;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f
.end method

.method private c()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/e/a;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    const-string v0, "wifi"

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_22

    move-result-object v0

    goto :goto_15

    :cond_1f
    const-string v0, "none"

    goto :goto_15

    :catch_22
    move-exception v0

    const-string v0, "none"

    goto :goto_15
.end method


# virtual methods
.method public final a([BLjava/util/List;)Lorg/apache/http/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/sdk/e/b;->a()Lcom/alipay/sdk/e/b;

    move-result-object v3

    if-nez v3, :cond_14

    :cond_13
    :goto_13
    return-object v1

    :cond_14
    :try_start_14
    iget-object v2, v3, Lcom/alipay/sdk/e/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_94

    invoke-direct {p0}, Lcom/alipay/sdk/e/a;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_69

    const-string v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_69

    :cond_2e
    :goto_2e
    if-eqz v1, :cond_35

    const-string v4, "http.route.default-proxy"

    invoke-interface {v2, v4, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_35
    if-eqz p1, :cond_3a

    array-length v1, p1

    if-nez v1, :cond_b7

    :cond_3a
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_41
    if-eqz p2, :cond_e6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_56} :catch_57

    goto :goto_47

    :catch_57
    move-exception v1

    if-eqz v3, :cond_68

    :try_start_5a
    iget-object v2, v3, Lcom/alipay/sdk/e/b;->b:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_68

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v2, 0x0

    sput-object v2, Lcom/alipay/sdk/e/b;->a:Lcom/alipay/sdk/e/b;
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_68} :catch_124

    :cond_68
    :goto_68
    throw v1

    :cond_69
    :try_start_69
    invoke-direct {p0}, Lcom/alipay/sdk/e/a;->a()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v4, "https.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "https.proxyPort"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2e

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_2e

    :cond_94
    invoke-direct {p0}, Lcom/alipay/sdk/e/a;->b()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    if-eqz v4, :cond_2e

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_2e

    :cond_b7
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/sdk/e/a;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "application/octet-stream;binary/octet-stream"

    invoke-virtual {v4, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v1, "Accept-Charset"

    const-string v4, "UTF-8"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Keep-Alive"

    const-string v4, "timeout=180, max=100"

    invoke-interface {v2, v1, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41

    :cond_e6
    invoke-virtual {v3, v2}, Lcom/alipay/sdk/e/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_106

    array-length v4, v2

    if-lez v4, :cond_106

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_106

    const-string v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_106
    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_13

    array-length v4, v2

    if-lez v4, :cond_13

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_13

    const-string v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_122} :catch_57

    goto/16 :goto_13

    :catch_124
    move-exception v2

    goto/16 :goto_68
.end method
