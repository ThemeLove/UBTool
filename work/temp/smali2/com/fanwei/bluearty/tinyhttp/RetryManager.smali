.class public Lcom/fanwei/bluearty/tinyhttp/RetryManager;
.super Ljava/lang/Object;


# static fields
.field protected static final BACKOFF:[I

.field static final DEFAULT:Lcom/fanwei/bluearty/tinyhttp/RetryManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->BACKOFF:[I

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    invoke-direct {v0}, Lcom/fanwei/bluearty/tinyhttp/RetryManager;-><init>()V

    sput-object v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->DEFAULT:Lcom/fanwei/bluearty/tinyhttp/RetryManager;

    return-void

    nop

    :array_12
    .array-data 4
        0x1
        0x2
        0x4
        0x7
        0xc
        0x14
        0x1e
        0x3c
        0x78
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRecoverable(Lcom/fanwei/bluearty/tinyhttp/WebbException;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/fanwei/bluearty/tinyhttp/WebbException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_a

    move v0, v2

    :goto_9
    return v0

    :cond_a
    instance-of v0, v1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_23

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "connection reset by peer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v3

    goto :goto_9

    :cond_23
    instance-of v0, v1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_29

    move v0, v3

    goto :goto_9

    :cond_29
    move v0, v2

    goto :goto_9
.end method

.method public isRetryUseful(Lcom/fanwei/bluearty/tinyhttp/Response;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/fanwei/bluearty/tinyhttp/Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_10

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_10

    const/16 v1, 0x208

    if-lt v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public wait(I)V
    .registers 6

    sget-object v0, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->BACKOFF:[I

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/RetryManager;->BACKOFF:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :try_start_11
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
