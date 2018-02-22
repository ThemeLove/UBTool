.class public final Lokhttp3/k;
.super Ljava/lang/Object;


# static fields
.field static final synthetic c:Z

.field private static final d:Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lokhttp3/internal/connection/RouteDatabase;

.field b:Z

.field private final e:I

.field private final f:J

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-class v0, Lokhttp3/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v7

    :goto_b
    sput-boolean v0, Lokhttp3/k;->c:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v8, "OkHttp ConnectionPool"

    invoke-static {v8, v7}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/k;->d:Ljava/util/concurrent/Executor;

    return-void

    :cond_27
    move v0, v1

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x5

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2, v3}, Lokhttp3/k;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/k$1;

    invoke-direct {v0, p0}, Lokhttp3/k$1;-><init>(Lokhttp3/k;)V

    iput-object v0, p0, Lokhttp3/k;->g:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    new-instance v0, Lokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lokhttp3/k;->a:Lokhttp3/internal/connection/RouteDatabase;

    iput p1, p0, Lokhttp3/k;->e:I

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/k;->f:J

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method private a(Lokhttp3/internal/connection/RealConnection;J)I
    .registers 11

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    move v1, v2

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5b

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_1a
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/ac;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ac;->a()Lokhttp3/a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/a;->a()Lokhttp3/s;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lokhttp3/k;->f:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    :goto_5a
    return v2

    :cond_5b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5a
.end method


# virtual methods
.method a(J)J
    .registers 15

    const/4 v0, 0x0

    const/4 v5, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    monitor-enter p0

    :try_start_5
    iget-object v1, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    move v7, v0

    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v0, p1, p2}, Lokhttp3/k;->a(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v2

    if-lez v2, :cond_23

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d

    :cond_23
    add-int/lit8 v6, v1, 0x1

    iget-wide v1, v0, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v1, p1, v1

    cmp-long v9, v1, v3

    if-lez v9, :cond_65

    move-wide v10, v1

    move-object v2, v0

    move-wide v0, v10

    :goto_30
    move-wide v3, v0

    move-object v5, v2

    move v1, v6

    goto :goto_d

    :cond_34
    iget-wide v8, p0, Lokhttp3/k;->f:J

    cmp-long v0, v3, v8

    if-gez v0, :cond_3e

    iget v0, p0, Lokhttp3/k;->e:I

    if-le v1, v0, :cond_4e

    :cond_3e
    iget-object v0, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    invoke-interface {v0, v5}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_55

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    const-wide/16 v0, 0x0

    :goto_4d
    return-wide v0

    :cond_4e
    if-lez v1, :cond_58

    :try_start_50
    iget-wide v0, p0, Lokhttp3/k;->f:J

    sub-long/2addr v0, v3

    monitor-exit p0

    goto :goto_4d

    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    if-lez v7, :cond_5e

    :try_start_5a
    iget-wide v0, p0, Lokhttp3/k;->f:J

    monitor-exit p0

    goto :goto_4d

    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/k;->b:Z

    const-wide/16 v0, -0x1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_4d

    :cond_65
    move-wide v0, v3

    move-object v2, v5

    goto :goto_30
.end method

.method a(Lokhttp3/a;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .registers 7

    sget-boolean v0, Lokhttp3/k;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    if-ge v2, v3, :cond_16

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/ac;

    move-result-object v2

    iget-object v2, v2, Lokhttp3/ac;->a:Lokhttp3/a;

    invoke-virtual {p1, v2}, Lokhttp3/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_16

    invoke-virtual {p2, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    :goto_3f
    return-object v0

    :cond_40
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method a(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    sget-boolean v0, Lokhttp3/k;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p0, Lokhttp3/k;->b:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/k;->b:Z

    sget-object v0, Lokhttp3/k;->d:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/k;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    iget-object v0, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lokhttp3/internal/connection/RealConnection;)Z
    .registers 3

    sget-boolean v0, Lokhttp3/k;->c:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-boolean v0, p1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v0, :cond_18

    iget v0, p0, Lokhttp3/k;->e:I

    if-nez v0, :cond_1f

    :cond_18
    iget-object v0, p0, Lokhttp3/k;->h:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    goto :goto_1e
.end method
