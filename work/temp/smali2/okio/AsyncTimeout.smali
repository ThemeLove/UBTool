.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static declared-synchronized awaitTimeout()Lokio/AsyncTimeout;
    .registers 9

    const-wide/32 v7, 0xf4240

    const/4 v0, 0x0

    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_7
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v1, :cond_14

    const-class v1, Lokio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    :goto_12
    monitor-exit v2

    return-object v0

    :cond_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_33

    const-wide/32 v5, 0xf4240

    div-long v5, v3, v5

    mul-long/2addr v7, v5

    sub-long/2addr v3, v7

    const-class v1, Lokio/AsyncTimeout;

    long-to-int v3, v3

    invoke-virtual {v1, v5, v6, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_12

    :catchall_30
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_33
    :try_start_33
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v0, 0x0

    iput-object v0, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_30

    move-object v0, v1

    goto :goto_12
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4

    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_5
    if-eqz v0, :cond_18

    iget-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v0, 0x0

    iput-object v0, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    const/4 v0, 0x0

    :goto_13
    monitor-exit v1

    return v0

    :cond_15
    :try_start_15
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1a

    goto :goto_5

    :cond_18
    const/4 v0, 0x1

    goto :goto_13

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remainingNanos(J)J
    .registers 5

    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 12

    const-wide/16 v4, 0x0

    const-class v1, Lokio/AsyncTimeout;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v0, :cond_18

    new-instance v0, Lokio/AsyncTimeout;

    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Lokio/AsyncTimeout$Watchdog;->start()V

    :cond_18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_53

    if-eqz p3, :cond_53

    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lokio/AsyncTimeout;->timeoutAt:J

    :goto_2e
    invoke-direct {p0, v2, v3}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_34
    iget-object v6, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v6, :cond_42

    iget-object v6, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v6, v2, v3}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6e

    :cond_42
    iget-object v2, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v0, v2, :cond_51

    const-class v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_5c

    :cond_51
    monitor-exit v1

    return-void

    :cond_53
    cmp-long v0, p1, v4

    if-eqz v0, :cond_5f

    add-long v4, v2, p1

    :try_start_59
    iput-wide v4, p0, Lokio/AsyncTimeout;->timeoutAt:J
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5c

    goto :goto_2e

    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5f
    if-eqz p3, :cond_68

    :try_start_61
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_2e

    :cond_68
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6e
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_70
    .catchall {:try_start_61 .. :try_end_70} :catchall_5c

    goto :goto_34
.end method


# virtual methods
.method public final enter()V
    .registers 6

    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_1d

    if-nez v2, :cond_1d

    :goto_1c
    return-void

    :cond_1d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    goto :goto_1c
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_6
.end method

.method final exit(Z)V
    .registers 3

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_e
    return-void
.end method

.method public final exit()Z
    .registers 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iput-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_5
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3

    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3

    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method
