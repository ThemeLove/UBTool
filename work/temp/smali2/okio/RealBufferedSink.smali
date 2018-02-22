.class final Lokio/RealBufferedSink;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/BufferedSink;


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Sink;

.field c:Z


# direct methods
.method constructor <init>(Lokio/Sink;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    return-void
.end method


# virtual methods
.method public a(Lokio/Source;)J
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    const-wide/16 v3, 0x2000

    invoke-interface {p1, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1f

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    goto :goto_c

    :cond_1f
    return-wide v0
.end method

.method public b()Lokio/Buffer;
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public b(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public c([B)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 6

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v1, v1, Lokio/Buffer;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b

    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-object v3, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v3, v3, Lokio/Buffer;->b:J

    invoke-interface {v1, v2, v3, v4}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1b} :catch_2e

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_29

    :cond_20
    :goto_20
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, Lokio/Util;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_29
    move-exception v1

    if-nez v0, :cond_20

    move-object v0, v1

    goto :goto_20

    :catch_2e
    move-exception v0

    goto :goto_1b
.end method

.method public flush()V
    .registers 5

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v0, v0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v1, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-object v2, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    iget-wide v2, v2, Lokio/Buffer;->b:J

    invoke-interface {v0, v1, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_21
    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->flush()V

    return-void
.end method

.method public h(I)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->e(I)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->d(I)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->c(I)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public j(J)Lokio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->i(J)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public k(I)Lokio/BufferedSink;
    .registers 4

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public k(J)Lokio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->h(J)Lokio/Buffer;

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method public t()Lokio/BufferedSink;
    .registers 5

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1f

    iget-object v2, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    iget-object v3, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-interface {v2, v3, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_1f
    return-object p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 6

    iget-boolean v0, p0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    invoke-virtual {p0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    return-void
.end method
