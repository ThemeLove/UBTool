.class public Lcom/lidroid/xutils/http/client/RetryHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# static fields
.field private static final RETRY_SLEEP_INTERVAL:I = 0x1f4

.field private static exceptionBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static exceptionWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final maxRetries:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Lorg/apache/http/NoHttpResponseException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/UnknownHostException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    const-class v1, Ljava/net/SocketException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    const-class v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p3, :cond_7

    :cond_6
    :goto_6
    return v1

    :cond_7
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_37

    move v0, v1

    :goto_10
    iget v3, p0, Lcom/lidroid/xutils/http/client/RetryHandler;->maxRetries:I

    if-le p2, v3, :cond_3e

    move v2, v1

    :cond_15
    :goto_15
    if-eqz v2, :cond_79

    :try_start_17
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    instance-of v3, v0, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v3, :cond_5b

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v2, "GET"

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2e} :catch_72

    move-result v1

    :goto_2f
    if-eqz v1, :cond_6

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    :cond_37
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_3e
    sget-object v3, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionBlackList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    move v2, v1

    goto :goto_15

    :cond_4c
    sget-object v3, Lcom/lidroid/xutils/http/client/RetryHandler;->exceptionWhiteList:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    if-nez v0, :cond_15

    goto :goto_15

    :cond_5b
    :try_start_5b
    instance-of v3, v0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v3, :cond_79

    check-cast v0, Lorg/apache/http/impl/client/RequestWrapper;

    const-string v2, "GET"

    invoke-virtual {v0}, Lorg/apache/http/impl/client/RequestWrapper;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2f

    :cond_6c
    const-string v0, "retry error, curr request is null"

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_71} :catch_72

    goto :goto_2f

    :catch_72
    move-exception v0

    const-string v2, "retry error"

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    :cond_79
    move v1, v2

    goto :goto_2f
.end method
