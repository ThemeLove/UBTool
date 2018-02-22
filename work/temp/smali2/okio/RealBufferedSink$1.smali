.class Lokio/RealBufferedSink$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/RealBufferedSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokio/RealBufferedSink;


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    iget-boolean v0, v0, Lokio/RealBufferedSink;->c:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->flush()V

    :cond_b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .registers 4

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    iget-boolean v0, v0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    iget-object v0, v0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    return-void
.end method

.method public write([BII)V
    .registers 6

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    iget-boolean v0, v0, Lokio/RealBufferedSink;->c:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    iget-object v0, v0, Lokio/RealBufferedSink;->a:Lokio/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    iget-object v0, p0, Lokio/RealBufferedSink$1;->a:Lokio/RealBufferedSink;

    invoke-virtual {v0}, Lokio/RealBufferedSink;->t()Lokio/BufferedSink;

    return-void
.end method
