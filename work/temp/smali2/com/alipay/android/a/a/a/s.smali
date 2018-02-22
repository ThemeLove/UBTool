.class public Lcom/alipay/android/a/a/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/android/a/a/a/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field protected a:Lcom/alipay/android/a/a/a/m;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/android/a/a/a/q;

.field d:Ljava/lang/String;

.field private f:Lorg/apache/http/client/methods/HttpUriRequest;

.field private g:Lorg/apache/http/protocol/HttpContext;

.field private h:Lorg/apache/http/client/CookieStore;

.field private i:Landroid/webkit/CookieManager;

.field private j:Lorg/apache/http/entity/AbstractHttpEntity;

.field private k:Lorg/apache/http/HttpHost;

.field private l:Ljava/net/URL;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/android/a/a/a/ai;

    invoke-direct {v0}, Lcom/alipay/android/a/a/a/ai;-><init>()V

    sput-object v0, Lcom/alipay/android/a/a/a/s;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/a/a/a/m;Lcom/alipay/android/a/a/a/q;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->g:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->h:Lorg/apache/http/client/CookieStore;

    iput v1, p0, Lcom/alipay/android/a/a/a/s;->m:I

    iput-boolean v1, p0, Lcom/alipay/android/a/a/a/s;->n:Z

    iput-boolean v1, p0, Lcom/alipay/android/a/a/a/s;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    iget-object v0, v0, Lcom/alipay/android/a/a/a/m;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    return-void
.end method

.method private f()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->b()Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1e

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->a()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iput-object v1, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    :goto_1b
    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_6

    :cond_1e
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->a()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    goto :goto_1b
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_9
    return-void
.end method

.method private h()Lcom/alipay/android/a/a/a/ah;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/q;->f()Lcom/alipay/android/a/a/a/ah;

    move-result-object v0

    return-object v0
.end method

.method private i()Lorg/apache/http/HttpResponse;
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->j()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private j()Lorg/apache/http/HttpResponse;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "By Http/Https to request. operationType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->l()Lcom/alipay/android/a/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/b;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->q()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->n()Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->o()I

    move-result v1

    const/16 v2, 0x50

    if-ne v1, v2, :cond_4c

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->p()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    :cond_4c
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->l()Lcom/alipay/android/a/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/a/a/a/s;->f:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->g:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/a/a/a/b;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->q:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    const-string v1, "operationType"

    invoke-virtual {v0, v1}, Lcom/alipay/android/a/a/a/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->q:Ljava/lang/String;

    goto :goto_a
.end method

.method private l()Lcom/alipay/android/a/a/a/b;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/m;->a()Lcom/alipay/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .registers 5

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_10

    :cond_24
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b;->a(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b;->b(Lorg/apache/http/HttpRequest;)V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->f()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    const-string v1, "cookie"

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->r()Landroid/webkit/CookieManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v3}, Lcom/alipay/android/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private n()Lorg/apache/http/HttpHost;
    .registers 5

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->k:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->k:Lorg/apache/http/HttpHost;

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->p()Ljava/net/URL;

    move-result-object v0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->o()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/alipay/android/a/a/a/s;->k:Lorg/apache/http/HttpHost;

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->k:Lorg/apache/http/HttpHost;

    goto :goto_6
.end method

.method private o()I
    .registers 4

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->p()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    invoke-virtual {v0}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_f
.end method

.method private p()Ljava/net/URL;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->l:Ljava/net/URL;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->l:Ljava/net/URL;

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->l:Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->l:Ljava/net/URL;

    goto :goto_6
.end method

.method private q()Lorg/apache/http/HttpHost;
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/a/a/a/v;->a(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "127.0.0.1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v2, 0x1f97

    if-ne v1, v2, :cond_1d

    const/4 v0, 0x0

    :cond_1d
    return-object v0
.end method

.method private r()Landroid/webkit/CookieManager;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->i:Landroid/webkit/CookieManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->i:Landroid/webkit/CookieManager;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->i:Landroid/webkit/CookieManager;

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->i:Landroid/webkit/CookieManager;

    goto :goto_6
.end method


# virtual methods
.method protected a([Ljava/lang/String;)J
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_21

    aget-object v1, p1, v0

    const-string v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    :try_start_16
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1d

    move-result-wide v0

    :goto_1c
    return-wide v0

    :catch_1d
    move-exception v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method protected a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/a/a/a/p;
    .registers 8

    new-instance v1, Lcom/alipay/android/a/a/a/p;

    invoke-direct {v1}, Lcom/alipay/android/a/a/a/p;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_1d

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/android/a/a/a/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-object v1
.end method

.method protected a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/a/a/a/x;
    .registers 12

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_9d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :try_start_37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_86

    :try_start_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-virtual {p0, v2, v5, v6, v1}, Lcom/alipay/android/a/a/a/s;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/a/a/a/s;->o:Z

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/a/a/a/m;->c(J)V

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    array-length v3, v2

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/android/a/a/a/m;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "res:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/alipay/android/a/a/a/r;

    invoke-virtual {p0, p1}, Lcom/alipay/android/a/a/a/s;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/android/a/a/a/p;

    move-result-object v3

    invoke-direct {v0, v3, p2, p3, v2}, Lcom/alipay/android/a/a/a/r;-><init>(Lcom/alipay/android/a/a/a/p;ILjava/lang/String;[B)V

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/a/a/a/s;->a(Lcom/alipay/android/a/a/a/r;Lorg/apache/http/HttpResponse;)V
    :try_end_75
    .catchall {:try_start_3c .. :try_end_75} :catchall_a7

    :try_start_75
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    :cond_78
    :goto_78
    return-object v0

    :catch_79
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_86
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_8a
    if-eqz v1, :cond_8f

    :try_start_8c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    :cond_8f
    throw v0

    :catch_90
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9d
    if-nez v2, :cond_78

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    goto :goto_78

    :catchall_a7
    move-exception v0

    goto :goto_8a
.end method

.method public a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/a/a/a/q;)Lcom/alipay/android/a/a/a/x;
    .registers 6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_34

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/a/a/a/s;->a(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v0, Lcom/alipay/android/a/a/a/l;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/a/a/a/s;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;)Lcom/alipay/android/a/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/net/URI;
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->d:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->d:Ljava/lang/String;

    :cond_c
    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_f
    if-ge v1, v5, :cond_37

    aget-object v6, v4, v1

    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_30

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v7, "Content-Type"

    aput-object v7, v0, v2

    aput-object v6, v0, v8

    :goto_25
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_30
    const-string v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_37
    return-object v3
.end method

.method protected a(Lcom/alipay/android/a/a/a/r;Lorg/apache/http/HttpResponse;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/alipay/android/a/a/a/s;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/a/a/a/s;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v0, "charset"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_27
    invoke-virtual {p1, v1}, Lcom/alipay/android/a/a/a/r;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/a/a/a/r;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/a/a/a/r;->a(J)V

    invoke-virtual {p1, v2, v3}, Lcom/alipay/android/a/a/a/r;->b(J)V

    return-void

    :cond_38
    move-object v0, v1

    goto :goto_27
.end method

.method protected a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;)V
    .registers 15

    if-nez p4, :cond_d

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {p1}, Lcom/alipay/android/a/a/a/b;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const/16 v0, 0x800

    :try_start_17
    new-array v0, v0, [B

    :cond_19
    :goto_19
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_69

    iget-object v5, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v5}, Lcom/alipay/android/a/a/a/q;->h()Z

    move-result v5

    if-nez v5, :cond_69

    const/4 v5, 0x0

    invoke-virtual {p4, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr p2, v4

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v4

    if-eqz v4, :cond_19

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_19

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    long-to-double v6, p2

    long-to-double v8, v2

    div-double/2addr v6, v8

    invoke-interface {v4, v5, v6, v7}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;D)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_46} :catch_47
    .catchall {:try_start_17 .. :try_end_46} :catchall_64

    goto :goto_19

    :catch_47
    move-exception v0

    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpWorker Request Error!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    invoke-static {v1}, Lcom/alipay/android/a/a/a/t;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_69
    :try_start_69
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_47
    .catchall {:try_start_69 .. :try_end_6c} :catchall_64

    invoke-static {v1}, Lcom/alipay/android/a/a/a/t;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method protected a(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x130

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(Lorg/apache/http/HttpResponse;)J
    .registers 7

    const-wide/16 v0, 0x0

    const-string v2, "Cache-Control"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1e

    :try_start_18
    invoke-virtual {p0, v2}, Lcom/alipay/android/a/a/a/s;->a([Ljava/lang/String;)J
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-wide v0

    :cond_1c
    :goto_1c
    return-wide v0

    :catch_1d
    move-exception v2

    :cond_1e
    const-string v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_1c
.end method

.method protected b()Lorg/apache/http/entity/AbstractHttpEntity;
    .registers 4

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/q;->b()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Lcom/alipay/android/a/a/a/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_31

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/a/a/a/b;->a([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    :goto_26
    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/q;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    :cond_31
    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_6

    :cond_34
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    iput-object v1, p0, Lcom/alipay/android/a/a/a/s;->j:Lorg/apache/http/entity/AbstractHttpEntity;

    goto :goto_26
.end method

.method protected c()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/q;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->d()Lcom/alipay/android/a/a/a/x;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/alipay/android/a/a/a/x;
    .registers 13

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x2

    :try_start_5
    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/a/a/a/v;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3e

    new-instance v1, Lcom/alipay/android/a/a/a/l;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The network is not available"

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Lcom/alipay/android/a/a/a/l; {:try_start_5 .. :try_end_1a} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_1a} :catch_f4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_1a} :catch_15e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_1a} :catch_18b
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_1a} :catch_1b8
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_5 .. :try_end_1a} :catch_1e5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_1a} :catch_212
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_1a} :catch_23f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_5 .. :try_end_1a} :catch_26c
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_5 .. :try_end_1a} :catch_29b
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_1a} :catch_2c4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_2f5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_1a} :catch_322
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_34c

    :catch_1a
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/l;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/l;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    throw v1

    :cond_3e
    :try_start_3e
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-interface {v1, v2}, Lcom/alipay/android/a/a/a/ah;->b(Lcom/alipay/android/a/a/a/w;)V

    :cond_4d
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->m()V

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->g:Lorg/apache/http/protocol/HttpContext;

    const-string v2, "http.cookie-store"

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v1, v2, v3}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->l()Lcom/alipay/android/a/a/a/b;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/a/a/a/s;->e:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v1, v2}, Lcom/alipay/android/a/a/a/b;->a(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->i()Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/alipay/android/a/a/a/s;->a:Lcom/alipay/android/a/a/a/m;

    sub-long v1, v4, v1

    invoke-virtual {v6, v1, v2}, Lcom/alipay/android/a/a/a/m;->b(J)V

    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->h:Lorg/apache/http/client/CookieStore;

    invoke-interface {v1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v2}, Lcom/alipay/android/a/a/a/q;->e()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->r()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_8a
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_104

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_94
    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_104

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_94

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_101

    const-string v1, "; Secure"

    :goto_d7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->r()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v5}, Lcom/alipay/android/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_f3
    .catch Lcom/alipay/android/a/a/a/l; {:try_start_3e .. :try_end_f3} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_3e .. :try_end_f3} :catch_f4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3e .. :try_end_f3} :catch_15e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3e .. :try_end_f3} :catch_18b
    .catch Ljavax/net/ssl/SSLException; {:try_start_3e .. :try_end_f3} :catch_1b8
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_3e .. :try_end_f3} :catch_1e5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3e .. :try_end_f3} :catch_212
    .catch Ljava/net/SocketTimeoutException; {:try_start_3e .. :try_end_f3} :catch_23f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_3e .. :try_end_f3} :catch_26c
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_3e .. :try_end_f3} :catch_29b
    .catch Ljava/net/UnknownHostException; {:try_start_3e .. :try_end_f3} :catch_2c4
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_f3} :catch_2f5
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_f3} :catch_322
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_f3} :catch_34c

    goto :goto_94

    :catch_f4
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Url parser error!"

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_101
    :try_start_101
    const-string v1, ""

    goto :goto_d7

    :cond_104
    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {p0, v3, v1}, Lcom/alipay/android/a/a/a/s;->a(Lorg/apache/http/HttpResponse;Lcom/alipay/android/a/a/a/q;)Lcom/alipay/android/a/a/a/x;

    move-result-object v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_11a

    invoke-virtual {v2}, Lcom/alipay/android/a/a/a/x;->b()[B

    move-result-object v1

    if-eqz v1, :cond_11a

    invoke-virtual {v2}, Lcom/alipay/android/a/a/a/x;->b()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v3, v1

    :cond_11a
    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_135

    instance-of v1, v2, Lcom/alipay/android/a/a/a/r;

    if-eqz v1, :cond_135

    move-object v0, v2

    check-cast v0, Lcom/alipay/android/a/a/a/r;

    move-object v1, v0
    :try_end_128
    .catch Lcom/alipay/android/a/a/a/l; {:try_start_101 .. :try_end_128} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_101 .. :try_end_128} :catch_f4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_101 .. :try_end_128} :catch_15e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_101 .. :try_end_128} :catch_18b
    .catch Ljavax/net/ssl/SSLException; {:try_start_101 .. :try_end_128} :catch_1b8
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_101 .. :try_end_128} :catch_1e5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_101 .. :try_end_128} :catch_212
    .catch Ljava/net/SocketTimeoutException; {:try_start_101 .. :try_end_128} :catch_23f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_101 .. :try_end_128} :catch_26c
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_101 .. :try_end_128} :catch_29b
    .catch Ljava/net/UnknownHostException; {:try_start_101 .. :try_end_128} :catch_2c4
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_128} :catch_2f5
    .catch Ljava/lang/NullPointerException; {:try_start_101 .. :try_end_128} :catch_322
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_128} :catch_34c

    :try_start_128
    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/r;->a()Lcom/alipay/android/a/a/a/p;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v1, v3}, Lcom/alipay/android/a/a/a/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_135} :catch_371
    .catch Lcom/alipay/android/a/a/a/l; {:try_start_128 .. :try_end_135} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_128 .. :try_end_135} :catch_f4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_128 .. :try_end_135} :catch_15e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_128 .. :try_end_135} :catch_18b
    .catch Ljavax/net/ssl/SSLException; {:try_start_128 .. :try_end_135} :catch_1b8
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_128 .. :try_end_135} :catch_1e5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_128 .. :try_end_135} :catch_212
    .catch Ljava/net/SocketTimeoutException; {:try_start_128 .. :try_end_135} :catch_23f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_128 .. :try_end_135} :catch_26c
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_128 .. :try_end_135} :catch_29b
    .catch Ljava/net/UnknownHostException; {:try_start_128 .. :try_end_135} :catch_2c4
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_135} :catch_2f5
    .catch Ljava/lang/NullPointerException; {:try_start_128 .. :try_end_135} :catch_322

    :cond_135
    :goto_135
    :try_start_135
    iget-object v1, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15d

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15d
    .catch Lcom/alipay/android/a/a/a/l; {:try_start_135 .. :try_end_15d} :catch_1a
    .catch Ljava/net/URISyntaxException; {:try_start_135 .. :try_end_15d} :catch_f4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_135 .. :try_end_15d} :catch_15e
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_135 .. :try_end_15d} :catch_18b
    .catch Ljavax/net/ssl/SSLException; {:try_start_135 .. :try_end_15d} :catch_1b8
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_135 .. :try_end_15d} :catch_1e5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_135 .. :try_end_15d} :catch_212
    .catch Ljava/net/SocketTimeoutException; {:try_start_135 .. :try_end_15d} :catch_23f
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_135 .. :try_end_15d} :catch_26c
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_135 .. :try_end_15d} :catch_29b
    .catch Ljava/net/UnknownHostException; {:try_start_135 .. :try_end_15d} :catch_2c4
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_15d} :catch_2f5
    .catch Ljava/lang/NullPointerException; {:try_start_135 .. :try_end_15d} :catch_322
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_15d} :catch_34c

    :cond_15d
    :goto_15d
    return-object v2

    :catch_15e
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_175

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v7, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_18b
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_1a2

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v7, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_1a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_1b8
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_1cf

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v9, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_1cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_1e5
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_1fc

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v8, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_1fc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_212
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_229

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v8, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_23f
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_256

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v11, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_26c
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_284

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    const/4 v4, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_29b
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_2b4

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    const/16 v4, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_2b4
    new-instance v2, Lcom/alipay/android/a/a/a/l;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_2c4
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_2dd

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_2dd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_2f5
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_30c

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v9, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_30c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_322
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    iget v2, p0, Lcom/alipay/android/a/a/a/s;->m:I

    if-gtz v2, :cond_336

    iget v1, p0, Lcom/alipay/android/a/a/a/s;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/android/a/a/a/s;->m:I

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/s;->d()Lcom/alipay/android/a/a/a/x;

    move-result-object v2

    goto/16 :goto_15d

    :cond_336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_34c
    move-exception v1

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->g()V

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-eqz v2, :cond_363

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/s;->h()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v10, v4}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    :cond_363
    new-instance v2, Lcom/alipay/android/a/a/a/l;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/alipay/android/a/a/a/l;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :catch_371
    move-exception v1

    goto/16 :goto_135
.end method

.method public e()Lcom/alipay/android/a/a/a/q;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/s;->c:Lcom/alipay/android/a/a/a/q;

    return-object v0
.end method
