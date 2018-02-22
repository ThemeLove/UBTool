.class public final Lokio/GzipSink;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# instance fields
.field private final a:Lokio/BufferedSink;

.field private final b:Ljava/util/zip/Deflater;

.field private final c:Lokio/DeflaterSink;

.field private d:Z

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method private a()V
    .registers 4

    iget-object v0, p0, Lokio/GzipSink;->a:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->h(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokio/GzipSink;->a:Lokio/BufferedSink;

    iget-object v1, p0, Lokio/GzipSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->h(I)Lokio/BufferedSink;

    return-void
.end method

.method private a(Lokio/Buffer;J)V
    .registers 9

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_21

    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lokio/GzipSink;->e:Ljava/util/zip/CRC32;

    iget-object v3, v0, Lokio/Segment;->a:[B

    iget v4, v0, Lokio/Segment;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_2

    :cond_21
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokio/GzipSink;->d:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    iget-object v0, p0, Lokio/GzipSink;->c:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->a()V

    invoke-direct {p0}, Lokio/GzipSink;->a()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_22

    :goto_e
    :try_start_e
    iget-object v0, p0, Lokio/GzipSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_25

    move-object v0, v1

    :cond_14
    :goto_14
    :try_start_14
    iget-object v1, p0, Lokio/GzipSink;->a:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_2a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/GzipSink;->d:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, Lokio/Util;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_22
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :catch_25
    move-exception v0

    if-eqz v1, :cond_14

    move-object v0, v1

    goto :goto_14

    :catch_2a
    move-exception v1

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_19
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokio/GzipSink;->c:Lokio/DeflaterSink;

    invoke-virtual {v0}, Lokio/DeflaterSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/GzipSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 7

    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-gez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    cmp-long v0, p2, v1

    if-nez v0, :cond_24

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lokio/GzipSink;->a(Lokio/Buffer;J)V

    iget-object v0, p0, Lokio/GzipSink;->c:Lokio/DeflaterSink;

    invoke-virtual {v0, p1, p2, p3}, Lokio/DeflaterSink;->write(Lokio/Buffer;J)V

    goto :goto_23
.end method
