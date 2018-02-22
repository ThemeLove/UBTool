.class final Lokhttp3/internal/framed/Spdy3$Reader;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/framed/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private final headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    new-instance v0, Lokhttp3/internal/framed/NameValueBlockReader;

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/framed/NameValueBlockReader;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    iput-boolean p2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_15

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->i()I

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdyGoAway(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    sget-object v1, Lokio/ByteString;->b:Lokio/ByteString;

    invoke-interface {p1, v0, v2, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->goAway(ILokhttp3/internal/framed/ErrorCode;Lokio/ByteString;)V

    return-void
.end method

.method private readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_HEADERS:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void
.end method

.method private readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p3, v2, :cond_14

    const-string v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_14
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->i()I

    move-result v3

    iget-boolean v4, p0, Lokhttp3/internal/framed/Spdy3$Reader;->client:Z

    and-int/lit8 v2, v3, 0x1

    if-ne v2, v0, :cond_27

    move v2, v0

    :goto_21
    if-ne v4, v2, :cond_29

    :goto_23
    invoke-interface {p1, v0, v3, v1}, Lokhttp3/internal/framed/FrameReader$Handler;->ping(ZII)V

    return-void

    :cond_27
    move v2, v1

    goto :goto_21

    :cond_29
    move v0, v1

    goto :goto_23
.end method

.method private readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_15

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_15
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->i()I

    move-result v1

    invoke-static {v1}, Lokhttp3/internal/framed/ErrorCode;->fromSpdy3Rst(I)Lokhttp3/internal/framed/ErrorCode;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3a
    invoke-interface {p1, v0, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method private readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->i()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_24

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_24
    new-instance v4, Lokhttp3/internal/framed/Settings;

    invoke-direct {v4}, Lokhttp3/internal/framed/Settings;-><init>()V

    move v2, v1

    :goto_2a
    if-ge v2, v3, :cond_47

    iget-object v5, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v5}, Lokio/BufferedSource;->i()I

    move-result v5

    iget-object v6, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->i()I

    move-result v6

    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_47
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4f

    :goto_4b
    invoke-interface {p1, v0, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->settings(ZLokhttp3/internal/framed/Settings;)V

    return-void

    :cond_4f
    move v0, v1

    goto :goto_4b
.end method

.method private readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()I

    move-result v0

    const v2, 0x7fffffff

    and-int v3, v0, v2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    :goto_19
    const/4 v4, -0x1

    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_REPLY:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void

    :cond_21
    move v2, v1

    goto :goto_19
.end method

.method private readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 11

    const v5, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->i()I

    move-result v2

    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->i()I

    move-result v4

    and-int v3, v2, v5

    and-int/2addr v4, v5

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->h()S

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    add-int/lit8 v5, p3, -0xa

    invoke-virtual {v2, v5}, Lokhttp3/internal/framed/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_31

    move v2, v1

    :goto_26
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_33

    :goto_2a
    sget-object v6, Lokhttp3/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lokhttp3/internal/framed/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lokhttp3/internal/framed/FrameReader$Handler;->headers(ZZIILjava/util/List;Lokhttp3/internal/framed/HeadersMode;)V

    return-void

    :cond_31
    move v2, v0

    goto :goto_26

    :cond_33
    move v1, v0

    goto :goto_2a
.end method

.method private readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V
    .registers 11

    const v2, 0x7fffffff

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_18

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_18
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->i()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->i()I

    move-result v1

    and-int/2addr v0, v2

    and-int/2addr v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_3c

    const-string v0, "windowSizeIncrement was 0"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Lokhttp3/internal/framed/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3c
    invoke-interface {p1, v0, v1, v2}, Lokhttp3/internal/framed/FrameReader$Handler;->windowUpdate(IJ)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->headerBlockReader:Lokhttp3/internal/framed/NameValueBlockReader;

    invoke-virtual {v0}, Lokhttp3/internal/framed/NameValueBlockReader;->close()V

    return-void
.end method

.method public nextFrame(Lokhttp3/internal/framed/FrameReader$Handler;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->i()I

    move-result v3

    iget-object v2, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->i()I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_44

    move-result v4

    const/high16 v2, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_47

    move v2, v1

    :goto_14
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v4, v6

    if-eqz v2, :cond_73

    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x10

    const v2, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_49

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version != 3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_44
    move-exception v1

    move v1, v0

    :goto_46
    return v1

    :cond_47
    move v2, v0

    goto :goto_14

    :cond_49
    packed-switch v2, :pswitch_data_82

    :pswitch_4c
    iget-object v0, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->g(J)V

    goto :goto_46

    :pswitch_53
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_57
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSynReply(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_5b
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readRstStream(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_5f
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readSettings(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_63
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readPing(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_67
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readGoAway(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_6b
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readHeaders(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :pswitch_6f
    invoke-direct {p0, p1, v5, v4}, Lokhttp3/internal/framed/Spdy3$Reader;->readWindowUpdate(Lokhttp3/internal/framed/FrameReader$Handler;II)V

    goto :goto_46

    :cond_73
    const v2, 0x7fffffff

    and-int/2addr v2, v3

    and-int/lit8 v3, v5, 0x1

    if-eqz v3, :cond_7c

    move v0, v1

    :cond_7c
    iget-object v3, p0, Lokhttp3/internal/framed/Spdy3$Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, v2, v3, v4}, Lokhttp3/internal/framed/FrameReader$Handler;->data(ZILokio/BufferedSource;I)V

    goto :goto_46

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_53
        :pswitch_57
        :pswitch_5b
        :pswitch_5f
        :pswitch_4c
        :pswitch_63
        :pswitch_67
        :pswitch_6b
        :pswitch_6f
    .end packed-switch
.end method

.method public readConnectionPreface()V
    .registers 1

    return-void
.end method
