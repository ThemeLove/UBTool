.class Lokhttp3/internal/cache/FaultHidingSink;
.super Lokio/ForwardingSink;


# instance fields
.field private hasErrors:Z


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .registers 2

    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_4
.end method

.method public flush()V
    .registers 3

    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    invoke-super {p0}, Lokio/ForwardingSink;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_4

    :catch_9
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_4
.end method

.method protected onException(Ljava/io/IOException;)V
    .registers 2

    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6

    iget-boolean v0, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->g(J)V

    :goto_7
    return-void

    :cond_8
    :try_start_8
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_7

    :catch_c
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/cache/FaultHidingSink;->hasErrors:Z

    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/FaultHidingSink;->onException(Ljava/io/IOException;)V

    goto :goto_7
.end method
