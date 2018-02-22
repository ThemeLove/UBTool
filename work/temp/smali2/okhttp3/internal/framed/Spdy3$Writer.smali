.class final Lokhttp3/internal/framed/Spdy3$Writer;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/framed/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final headerBlockBuffer:Lokio/Buffer;

.field private final headerBlockOut:Lokio/BufferedSink;

.field private final sink:Lokio/BufferedSink;


# direct methods
.method constructor <init>(Lokio/BufferedSink;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lokhttp3/internal/framed/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iput-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    new-instance v1, Lokio/DeflaterSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/DeflaterSink;-><init>(Lokio/Sink;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_f
    if-ge v1, v2, :cond_41

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v0, v0, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v3, v0}, Lokio/BufferedSink;->b(Lokio/ByteString;)Lokio/BufferedSink;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_41
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method


# virtual methods
.method public applyAndAckSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockOut:Lokio/BufferedSink;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZILokio/Buffer;I)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_4
    :try_start_4
    invoke-virtual {p0, p2, v0, p3, p4}, Lokhttp3/internal/framed/Spdy3$Writer;->sendDataFrame(IILokio/Buffer;I)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized goAway(ILokhttp3/internal/framed/ErrorCode;[B)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-direct {p0, p2}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v2, -0x7ffcfff8

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v2, 0xffffff

    and-int/2addr v0, v2

    or-int/lit8 v0, v0, 0x0

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->a(Lokio/Source;)J
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public maxDataLength()I
    .registers 2

    const/16 v0, 0x3fff

    return v0
.end method

.method public declared-synchronized ping(ZII)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v2, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget-boolean v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->client:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_25

    move v2, v0

    :goto_19
    if-eq v3, v2, :cond_27

    :goto_1b
    if-eq p1, v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move v2, v1

    goto :goto_19

    :cond_27
    move v0, v1

    goto :goto_1b

    :cond_29
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_f

    monitor-exit p0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized rstStream(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget v1, p2, Lokhttp3/internal/framed/ErrorCode;->spdyRstCode:I

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_d

    monitor-exit p0

    return-void
.end method

.method sendDataFrame(IILokio/Buffer;I)V
    .registers 9

    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    int-to-long v0, p4

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    if-lez p4, :cond_4c

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lokio/BufferedSink;->write(Lokio/Buffer;J)V

    :cond_4c
    return-void
.end method

.method public declared-synchronized settings(Lokhttp3/internal/framed/Settings;)V
    .registers 7

    const v4, 0xffffff

    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lokhttp3/internal/framed/Settings;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    const/4 v0, 0x0

    :goto_31
    const/16 v1, 0xa

    if-gt v0, v1, :cond_58

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_3e

    :goto_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3e
    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->flags(I)I

    move-result v1

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/Settings;->get(I)I

    move-result v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    goto :goto_3b

    :cond_58
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-direct {p0, p3}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    if-eqz p1, :cond_4d

    const/4 v0, 0x1

    :goto_16
    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, -0x7ffcfffe

    invoke-interface {v2, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->a(Lokio/Source;)J

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_d

    monitor-exit p0

    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    const v5, 0x7fffffff

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_5
    iget-boolean v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    invoke-direct {p0, p5}, Lokhttp3/internal/framed/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    const-wide/16 v1, 0xa

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->a()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v2, v1

    if-eqz p1, :cond_60

    const/4 v1, 0x1

    :goto_24
    if-eqz p2, :cond_27

    const/4 v0, 0x2

    :cond_27
    or-int/2addr v0, v1

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v3, -0x7ffcffff

    invoke-interface {v1, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v1, p3, v5

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    and-int v1, p4, v5

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lokio/BufferedSink;->j(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Writer;->headerBlockBuffer:Lokio/Buffer;

    invoke-interface {v0, v1}, Lokio/BufferedSink;->a(Lokio/Source;)J

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_5e
    .catchall {:try_start_14 .. :try_end_5e} :catchall_11

    monitor-exit p0

    return-void

    :cond_60
    move v1, v0

    goto :goto_24
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->closed:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_36

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Writer;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_d

    monitor-exit p0

    return-void
.end method
