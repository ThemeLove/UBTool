.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/t;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private volatile canceled:Z

.field private final client:Lokhttp3/v;

.field private forWebSocket:Z

.field private streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    return-void
.end method

.method private createAddress(Lokhttp3/s;)Lokhttp3/a;
    .registers 15

    const/4 v7, 0x0

    invoke-virtual {p1}, Lokhttp3/s;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->k()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v6

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->l()Lokhttp3/g;

    move-result-object v7

    :goto_19
    new-instance v0, Lokhttp3/a;

    invoke-virtual {p1}, Lokhttp3/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/s;->g()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v3}, Lokhttp3/v;->h()Lokhttp3/p;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v4}, Lokhttp3/v;->i()Ljavax/net/SocketFactory;

    move-result-object v4

    iget-object v8, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v8}, Lokhttp3/v;->n()Lokhttp3/b;

    move-result-object v8

    iget-object v9, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v9}, Lokhttp3/v;->d()Ljava/net/Proxy;

    move-result-object v9

    iget-object v10, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v10}, Lokhttp3/v;->t()Ljava/util/List;

    move-result-object v10

    iget-object v11, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v11}, Lokhttp3/v;->u()Ljava/util/List;

    move-result-object v11

    iget-object v12, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v12}, Lokhttp3/v;->e()Ljava/net/ProxySelector;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lokhttp3/a;-><init>(Ljava/lang/String;ILokhttp3/p;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/g;Lokhttp3/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v0

    :cond_51
    move-object v6, v7

    move-object v5, v7

    goto :goto_19
.end method

.method private followUpRequest(Lokhttp3/aa;)Lokhttp3/y;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lokhttp3/j;->route()Lokhttp3/ac;

    move-result-object v0

    :goto_15
    invoke-virtual {p1}, Lokhttp3/aa;->c()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/y;->b()Ljava/lang/String;

    move-result-object v3

    sparse-switch v2, :sswitch_data_fa

    :cond_24
    :goto_24
    return-object v1

    :cond_25
    move-object v0, v1

    goto :goto_15

    :sswitch_27
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lokhttp3/ac;->b()Ljava/net/Proxy;

    move-result-object v1

    :goto_2d
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_44

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v1}, Lokhttp3/v;->d()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_2d

    :cond_44
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v1}, Lokhttp3/v;->n()Lokhttp3/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lokhttp3/b;->a(Lokhttp3/ac;Lokhttp3/aa;)Lokhttp3/y;

    move-result-object v1

    goto :goto_24

    :sswitch_4f
    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v1}, Lokhttp3/v;->m()Lokhttp3/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lokhttp3/b;->a(Lokhttp3/ac;Lokhttp3/aa;)Lokhttp3/y;

    move-result-object v1

    goto :goto_24

    :sswitch_5a
    const-string v0, "GET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_6a
    :sswitch_6a
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->q()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/s;->c(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lokhttp3/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/s;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v2}, Lokhttp3/v;->p()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_a6
    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/y;->e()Lokhttp3/y$a;

    move-result-object v2

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-static {v3}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e3

    const-string v3, "GET"

    invoke-virtual {v2, v3, v1}, Lokhttp3/y$a;->a(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    :goto_bf
    const-string v1, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    const-string v1, "Content-Length"

    invoke-virtual {v2, v1}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    const-string v1, "Content-Type"

    invoke-virtual {v2, v1}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    :cond_ce
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/aa;Lokhttp3/s;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "Authorization"

    invoke-virtual {v2, v1}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    :cond_d9
    invoke-virtual {v2, v0}, Lokhttp3/y$a;->a(Lokhttp3/s;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->a()Lokhttp3/y;

    move-result-object v1

    goto/16 :goto_24

    :cond_e3
    invoke-virtual {v2, v3, v1}, Lokhttp3/y$a;->a(Ljava/lang/String;Lokhttp3/z;)Lokhttp3/y$a;

    goto :goto_bf

    :sswitch_e7
    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v0, :cond_24

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v1

    goto/16 :goto_24

    nop

    :sswitch_data_fa
    .sparse-switch
        0x12c -> :sswitch_6a
        0x12d -> :sswitch_6a
        0x12e -> :sswitch_6a
        0x12f -> :sswitch_6a
        0x133 -> :sswitch_5a
        0x134 -> :sswitch_5a
        0x191 -> :sswitch_4f
        0x197 -> :sswitch_27
        0x198 -> :sswitch_e7
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/net/ProtocolException;

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    instance-of v2, p1, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_15

    instance-of v2, p1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    :goto_11
    move v1, v0

    goto :goto_6

    :cond_13
    move v0, v1

    goto :goto_11

    :cond_15
    instance-of v2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v2, :cond_21

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/CertificateException;

    if-nez v2, :cond_6

    :cond_21
    instance-of v2, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v2, :cond_6

    move v1, v0

    goto :goto_6
.end method

.method private recover(Ljava/io/IOException;ZLokhttp3/y;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1, p1}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v1}, Lokhttp3/v;->r()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    if-nez p2, :cond_19

    invoke-virtual {p3}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v1

    instance-of v1, v1, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-nez v1, :cond_e

    :cond_19
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method private sameConnection(Lokhttp3/aa;Lokhttp3/s;)Z
    .registers 6

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/s;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/s;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lokhttp3/s;->g()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/s;->g()I

    move-result v2

    if-ne v1, v2, :cond_30

    invoke-virtual {v0}, Lokhttp3/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->cancel()V

    :cond_a
    return-void
.end method

.method public client()Lokhttp3/v;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    return-object v0
.end method

.method public intercept(Lokhttp3/t$a;)Lokhttp3/aa;
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v2

    new-instance v4, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v5, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v5}, Lokhttp3/v;->o()Lokhttp3/k;

    move-result-object v5

    invoke-virtual {v2}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v6

    invoke-direct {p0, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/s;)Lokhttp3/a;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/k;Lokhttp3/a;)V

    iput-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    move v4, v1

    move-object v5, v2

    move-object v2, v3

    :cond_1e
    :goto_1e
    iget-boolean v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    :try_start_2f
    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    move-object v1, v0

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v7, v8}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/y;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/j;)Lokhttp3/aa;
    :try_end_3a
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_2f .. :try_end_3a} :catch_65
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3a} :catch_82
    .catchall {:try_start_2f .. :try_end_3a} :catchall_76

    move-result-object v1

    if-eqz v2, :cond_55

    invoke-virtual {v1}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {v2}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->c(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v1

    :cond_55
    invoke-direct {p0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/aa;)Lokhttp3/y;

    move-result-object v5

    if-nez v5, :cond_8b

    iget-boolean v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    if-nez v2, :cond_64

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    :cond_64
    return-object v1

    :catch_65
    move-exception v1

    :try_start_66
    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/y;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v1}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v1

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    iget-object v2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    throw v1

    :catch_82
    move-exception v1

    const/4 v6, 0x0

    :try_start_84
    invoke-direct {p0, v1, v6, v5}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;ZLokhttp3/y;)Z

    move-result v6

    if-nez v6, :cond_1e

    throw v1
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_76

    :cond_8b
    invoke-virtual {v1}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v4, 0x1

    const/16 v4, 0x14

    if-le v2, v4, :cond_b6

    iget-object v1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v1}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many follow-up requests: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b6
    invoke-virtual {v5}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v4

    instance-of v4, v4, Lokhttp3/internal/http/UnrepeatableRequestBody;

    if-eqz v4, :cond_ca

    new-instance v2, Ljava/net/HttpRetryException;

    const-string v3, "Cannot retry streamed HTTP body"

    invoke-virtual {v1}, Lokhttp3/aa;->c()I

    move-result v1

    invoke-direct {v2, v3, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_ca
    invoke-virtual {v5}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lokhttp3/aa;Lokhttp3/s;)Z

    move-result v4

    if-nez v4, :cond_f2

    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->release()V

    new-instance v4, Lokhttp3/internal/connection/StreamAllocation;

    iget-object v6, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v6}, Lokhttp3/v;->o()Lokhttp3/k;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v7

    invoke-direct {p0, v7}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lokhttp3/s;)Lokhttp3/a;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lokhttp3/internal/connection/StreamAllocation;-><init>(Lokhttp3/k;Lokhttp3/a;)V

    iput-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    :cond_ee
    move v4, v2

    move-object v2, v1

    goto/16 :goto_1e

    :cond_f2
    iget-object v4, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v4}, Lokhttp3/internal/connection/StreamAllocation;->stream()Lokhttp3/internal/http/HttpStream;

    move-result-object v4

    if-eqz v4, :cond_ee

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing the body of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public isForWebSocket()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return v0
.end method

.method public setForWebSocket(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    return-void
.end method

.method public streamAllocation()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method
