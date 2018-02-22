.class public final Lokhttp3/internal/framed/Ping;
.super Ljava/lang/Object;


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private received:J

.field private sent:J


# direct methods
.method constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    iput-wide v2, p0, Lokhttp3/internal/framed/Ping;->sent:J

    iput-wide v2, p0, Lokhttp3/internal/framed/Ping;->received:J

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->sent:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->sent:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    iget-object v0, p0, Lokhttp3/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method receive()V
    .registers 5

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->sent:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    iget-object v0, p0, Lokhttp3/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public roundTripTime()J
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    iget-wide v2, p0, Lokhttp3/internal/framed/Ping;->sent:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public roundTripTime(JLjava/util/concurrent/TimeUnit;)J
    .registers 8

    iget-object v0, p0, Lokhttp3/internal/framed/Ping;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->received:J

    iget-wide v2, p0, Lokhttp3/internal/framed/Ping;->sent:J

    sub-long/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, -0x2

    goto :goto_d
.end method

.method send()V
    .registers 5

    iget-wide v0, p0, Lokhttp3/internal/framed/Ping;->sent:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/framed/Ping;->sent:J

    return-void
.end method
