.class Lokhttp3/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/k;


# direct methods
.method constructor <init>(Lokhttp3/k;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/k$1;->a:Lokhttp3/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const-wide/32 v6, 0xf4240

    :cond_3
    :goto_3
    iget-object v0, p0, Lokhttp3/k$1;->a:Lokhttp3/k;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/k;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    return-void

    :cond_14
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    div-long v2, v0, v6

    mul-long v4, v2, v6

    sub-long/2addr v0, v4

    iget-object v4, p0, Lokhttp3/k$1;->a:Lokhttp3/k;

    monitor-enter v4

    :try_start_22
    iget-object v5, p0, Lokhttp3/k$1;->a:Lokhttp3/k;

    long-to-int v0, v0

    invoke-virtual {v5, v2, v3, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_28} :catch_2d
    .catchall {:try_start_22 .. :try_end_28} :catchall_2a

    :goto_28
    :try_start_28
    monitor-exit v4

    goto :goto_3

    :catchall_2a
    move-exception v0

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v0

    :catch_2d
    move-exception v0

    goto :goto_28
.end method
