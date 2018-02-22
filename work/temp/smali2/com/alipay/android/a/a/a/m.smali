.class public Lcom/alipay/android/a/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/a/a/a/ag;


# static fields
.field private static b:Lcom/alipay/android/a/a/a/m;

.field private static final i:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field a:Landroid/content/Context;

.field private c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private d:Lcom/alipay/android/a/a/a/b;

.field private e:J

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;

    new-instance v0, Lcom/alipay/android/a/a/a/o;

    invoke-direct {v0}, Lcom/alipay/android/a/a/a/o;-><init>()V

    sput-object v0, Lcom/alipay/android/a/a/a/m;->i:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/m;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/m;->e()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/alipay/android/a/a/a/m;
    .registers 2

    sget-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lcom/alipay/android/a/a/a/m;->b(Landroid/content/Context;)Lcom/alipay/android/a/a/a/m;

    move-result-object v0

    goto :goto_6
.end method

.method private a(Lcom/alipay/android/a/a/a/s;)Ljava/util/concurrent/FutureTask;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/a/a/a/s;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/alipay/android/a/a/a/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/a/a/a/n;

    invoke-direct {v0, p0, p1, p1}, Lcom/alipay/android/a/a/a/n;-><init>(Lcom/alipay/android/a/a/a/m;Ljava/util/concurrent/Callable;Lcom/alipay/android/a/a/a/s;)V

    return-object v0
.end method

.method private static final declared-synchronized b(Landroid/content/Context;)Lcom/alipay/android/a/a/a/m;
    .registers 3

    const-class v1, Lcom/alipay/android/a/a/a/m;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/alipay/android/a/a/a/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/a/a/a/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/a/a/a/m;->b:Lcom/alipay/android/a/a/a/m;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .registers 11

    const/4 v9, 0x1

    const-string v0, "android"

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/a/a/a/m;->d:Lcom/alipay/android/a/a/a/b;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0xa

    const/16 v2, 0xb

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v7, Lcom/alipay/android/a/a/a/m;->i:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_26
    iget-object v0, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_39

    :goto_2c
    iget-object v0, p0, Lcom/alipay/android/a/a/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    return-void

    :catch_39
    move-exception v0

    goto :goto_2c
.end method


# virtual methods
.method public a()Lcom/alipay/android/a/a/a/b;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/m;->d:Lcom/alipay/android/a/a/a/b;

    return-object v0
.end method

.method protected a(Lcom/alipay/android/a/a/a/q;)Lcom/alipay/android/a/a/a/s;
    .registers 3

    new-instance v0, Lcom/alipay/android/a/a/a/s;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/a/a/a/s;-><init>(Lcom/alipay/android/a/a/a/m;Lcom/alipay/android/a/a/a/q;)V

    return-object v0
.end method

.method public a(Lcom/alipay/android/a/a/a/w;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/a/a/a/w;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/android/a/a/a/x;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/alipay/android/a/a/a/q;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "request send error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/alipay/android/a/a/a/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/a/a/a/u;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/m;->d()Ljava/lang/String;

    :cond_17
    check-cast p1, Lcom/alipay/android/a/a/a/q;

    invoke-virtual {p0, p1}, Lcom/alipay/android/a/a/a/m;->a(Lcom/alipay/android/a/a/a/q;)Lcom/alipay/android/a/a/a/s;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/a/a/a/m;->a(Lcom/alipay/android/a/a/a/s;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public a(J)V
    .registers 5

    iget-wide v0, p0, Lcom/alipay/android/a/a/a/m;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/a/a/a/m;->e:J

    return-void
.end method

.method public b()J
    .registers 5

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/alipay/android/a/a/a/m;->g:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, p0, Lcom/alipay/android/a/a/a/m;->e:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/android/a/a/a/m;->g:J

    div-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    goto :goto_8
.end method

.method public b(J)V
    .registers 5

    iget-wide v0, p0, Lcom/alipay/android/a/a/a/m;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/a/a/a/m;->f:J

    iget v0, p0, Lcom/alipay/android/a/a/a/m;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/a/a/a/m;->h:I

    return-void
.end method

.method public c()J
    .registers 5

    iget v0, p0, Lcom/alipay/android/a/a/a/m;->h:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/alipay/android/a/a/a/m;->f:J

    iget v2, p0, Lcom/alipay/android/a/a/a/m;->h:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_6
.end method

.method public c(J)V
    .registers 5

    iget-wide v0, p0, Lcom/alipay/android/a/a/a/m;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/alipay/android/a/a/a/m;->g:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpManager"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/a/a/a/m;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/m;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/m;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/alipay/android/a/a/a/m;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/alipay/android/a/a/a/m;->f:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-wide v3, p0, Lcom/alipay/android/a/a/a/m;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/alipay/android/a/a/a/m;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
