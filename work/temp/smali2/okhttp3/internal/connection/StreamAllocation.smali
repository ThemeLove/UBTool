.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;


# instance fields
.field public final address:Lokhttp3/a;

.field private canceled:Z

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/k;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lokhttp3/ac;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private stream:Lokhttp3/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lokhttp3/k;Lokhttp3/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/a;

    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/a;Lokhttp3/internal/connection/RouteDatabase;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    return-void
.end method

.method private deallocate(ZZZ)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    if-eqz p3, :cond_9

    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    :cond_9
    if-eqz p2, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    :cond_e
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_4f

    if-eqz p1, :cond_19

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    :cond_19
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v2, :cond_27

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v2, v2, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v2, :cond_4f

    :cond_27
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v2}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v2, v2, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v2, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v2, v3, v4}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    :cond_4c
    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_7 .. :try_end_50} :catchall_5a

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_59
    return-void

    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method private findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .registers 11

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "stream != null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_34

    iget-boolean v2, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-nez v2, :cond_34

    monitor-exit v1

    :goto_33
    return-object v0

    :cond_34
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/a;

    invoke-virtual {v0, v2, v3, p0}, Lokhttp3/internal/Internal;->get(Lokhttp3/k;Lokhttp3/a;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_44

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    monitor-exit v1

    goto :goto_33

    :cond_44
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_f

    if-nez v0, :cond_99

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/ac;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    :try_start_52
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    const/4 v2, 0x0

    iput v2, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_7c

    move-object v1, v0

    :goto_59
    new-instance v0, Lokhttp3/internal/connection/RealConnection;

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ac;)V

    invoke-virtual {p0, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;)V

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    :try_start_64
    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/Internal;->put(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v2, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-eqz v2, :cond_7f

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_79
    move-exception v0

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_64 .. :try_end_7b} :catchall_79

    throw v0

    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    :cond_7f
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_79

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/a;

    invoke-virtual {v1}, Lokhttp3/a;->f()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/RealConnection;->connect(IIILjava/util/List;Z)V

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/ac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/ac;)V

    goto :goto_33

    :cond_99
    move-object v1, v0

    goto :goto_59
.end method

.method private findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .registers 9

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    :try_start_7
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_d

    monitor-exit v1

    :cond_c
    return-object v0

    :cond_d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_18

    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto :goto_0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_22

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .registers 3

    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/k;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;)V
    .registers 4

    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .registers 4

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lokhttp3/internal/http/HttpStream;->cancel()V

    :cond_10
    :goto_10
    return-void

    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    goto :goto_10
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    if-nez v0, :cond_c

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newStream(Lokhttp3/v;Z)Lokhttp3/internal/http/HttpStream;
    .registers 9

    invoke-virtual {p1}, Lokhttp3/v;->a()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/v;->b()I

    move-result v2

    invoke-virtual {p1}, Lokhttp3/v;->c()I

    move-result v3

    invoke-virtual {p1}, Lokhttp3/v;->r()Z

    move-result v4

    move-object v0, p0

    move v5, p2

    :try_start_12
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v1

    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_28

    new-instance v0, Lokhttp3/internal/http/Http2xStream;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->framedConnection:Lokhttp3/internal/framed/FramedConnection;

    invoke-direct {v0, p1, p0, v1}, Lokhttp3/internal/http/Http2xStream;-><init>(Lokhttp3/v;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/framed/FramedConnection;)V

    :goto_21
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_24} :catch_51

    :try_start_24
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v0, v1, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v2, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    new-instance v0, Lokhttp3/internal/http/Http1xStream;

    iget-object v2, v1, Lokhttp3/internal/connection/RealConnection;->source:Lokio/BufferedSource;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->sink:Lokio/BufferedSink;

    invoke-direct {v0, p1, p0, v2, v1}, Lokhttp3/internal/http/Http1xStream;-><init>(Lokhttp3/v;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_50} :catch_51

    goto :goto_21

    :catch_51
    move-exception v0

    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_51
.end method

.method public noNewStreams()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public release()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public stream()Lokhttp3/internal/http/HttpStream;
    .registers 3

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v3

    :try_start_5
    instance-of v0, p1, Lokhttp3/internal/framed/StreamResetException;

    if-eqz v0, :cond_2a

    check-cast p1, Lokhttp3/internal/framed/StreamResetException;

    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_17

    iget v0, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    :cond_17
    iget-object v0, p1, Lokhttp3/internal/framed/StreamResetException;->errorCode:Lokhttp3/internal/framed/ErrorCode;

    sget-object v4, Lokhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/framed/ErrorCode;

    if-ne v0, v4, :cond_21

    iget v0, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v0, v2, :cond_50

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    :cond_24
    :goto_24
    move v0, v2

    :goto_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_4d

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    return-void

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v0, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v0, :cond_24

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    invoke-virtual {v0, v4, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/ac;Ljava/io/IOException;)V

    :cond_49
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/ac;

    goto :goto_24

    :catchall_4d
    move-exception v0

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_2a .. :try_end_4f} :catchall_4d

    throw v0

    :cond_50
    move v0, v1

    goto :goto_25
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpStream;)V
    .registers 7

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/k;

    monitor-enter v1

    if-eqz p2, :cond_9

    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    if-eq p2, v0, :cond_31

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->stream:Lokhttp3/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    if-nez p1, :cond_3b

    :try_start_33
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_2e

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
