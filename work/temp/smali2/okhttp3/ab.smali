.class public abstract Lokhttp3/ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .registers 3

    invoke-virtual {p0}, Lokhttp3/ab;->contentType()Lokhttp3/u;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v1, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lokhttp3/u;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_c
.end method

.method public static create(Lokhttp3/u;JLokio/BufferedSource;)Lokhttp3/ab;
    .registers 6

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lokhttp3/ab$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/ab$1;-><init>(Lokhttp3/u;JLokio/BufferedSource;)V

    return-object v0
.end method

.method public static create(Lokhttp3/u;Ljava/lang/String;)Lokhttp3/ab;
    .registers 5

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_23

    invoke-virtual {p0}, Lokhttp3/u;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_23

    sget-object v0, Lokhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/u;->a(Ljava/lang/String;)Lokhttp3/u;

    move-result-object p0

    :cond_23
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lokio/Buffer;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Buffer;->a()J

    move-result-wide v1

    invoke-static {p0, v1, v2, v0}, Lokhttp3/ab;->create(Lokhttp3/u;JLokio/BufferedSource;)Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lokhttp3/u;[B)Lokhttp3/ab;
    .registers 5

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    move-result-object v0

    array-length v1, p1

    int-to-long v1, v1

    invoke-static {p0, v1, v2, v0}, Lokhttp3/ab;->create(Lokhttp3/u;JLokio/BufferedSource;)Lokhttp3/ab;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/ab;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->e()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .registers 7

    invoke-virtual {p0}, Lokhttp3/ab;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_24

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    invoke-virtual {p0}, Lokhttp3/ab;->source()Lokio/BufferedSource;

    move-result-object v2

    :try_start_28
    invoke-interface {v2}, Lokio/BufferedSource;->p()[B
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_43

    move-result-object v3

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_48

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_48

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_43
    move-exception v0

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_48
    return-object v3
.end method

.method public final charStream()Ljava/io/Reader;
    .registers 4

    iget-object v0, p0, Lokhttp3/ab;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lokhttp3/ab;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ab;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/ab;->reader:Ljava/io/Reader;

    goto :goto_4
.end method

.method public close()V
    .registers 2

    invoke-virtual {p0}, Lokhttp3/ab;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lokhttp3/u;
.end method

.method public abstract source()Lokio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/ab;->bytes()[B

    move-result-object v1

    invoke-direct {p0}, Lokhttp3/ab;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
