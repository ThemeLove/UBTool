.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Sink;


# instance fields
.field private final a:Lokio/BufferedSink;

.field private final b:Ljava/util/zip/Deflater;

.field private c:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    iput-object p2, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .registers 4

    invoke-static {p1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private a(Z)V
    .registers 9
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->b()Lokio/Buffer;

    move-result-object v1

    :cond_6
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v2

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v4, v2, Lokio/Segment;->c:I

    iget v5, v2, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    :goto_1c
    if-lez v0, :cond_3e

    iget v3, v2, Lokio/Segment;->c:I

    add-int/2addr v3, v0

    iput v3, v2, Lokio/Segment;->c:I

    iget-wide v2, v1, Lokio/Buffer;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lokio/Buffer;->b:J

    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->t()Lokio/BufferedSink;

    goto :goto_6

    :cond_2f
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v4, v2, Lokio/Segment;->c:I

    iget v5, v2, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x2000

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    goto :goto_1c

    :cond_3e
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v2, Lokio/Segment;->b:I

    iget v3, v2, Lokio/Segment;->c:I

    if-ne v0, v3, :cond_55

    invoke-virtual {v2}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v0

    iput-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v2}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    :cond_55
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->a(Z)V

    return-void
.end method

.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokio/DeflaterSink;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p0}, Lokio/DeflaterSink;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_27

    :goto_9
    :try_start_9
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1d

    move-object v0, v1

    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_22

    :cond_14
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/DeflaterSink;->c:Z

    if-eqz v0, :cond_4

    invoke-static {v0}, Lokio/Util;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1d
    move-exception v0

    if-eqz v1, :cond_f

    move-object v0, v1

    goto :goto_f

    :catch_22
    move-exception v1

    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_14

    :catch_27
    move-exception v1

    goto :goto_9
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->a(Z)V

    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

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
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_43

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v5, v0, Lokio/Segment;->a:[B

    iget v6, v0, Lokio/Segment;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lokio/DeflaterSink;->a(Z)V

    iget-wide v4, p1, Lokio/Buffer;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lokio/Buffer;->b:J

    iget v4, v0, Lokio/Segment;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/Segment;->b:I

    iget v4, v0, Lokio/Segment;->b:I

    iget v5, v0, Lokio/Segment;->c:I

    if-ne v4, v5, :cond_40

    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    :cond_40
    int-to-long v0, v1

    sub-long/2addr p2, v0

    goto :goto_8

    :cond_43
    return-void
.end method
