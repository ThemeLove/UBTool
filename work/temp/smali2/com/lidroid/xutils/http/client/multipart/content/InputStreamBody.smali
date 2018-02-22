.class public Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;


# instance fields
.field private final filename:Ljava/lang/String;

.field private final in:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 10

    const-string v4, "no_name"

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .registers 11

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p5}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->length:J

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->length:J

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/16 v0, 0x1000

    :try_start_c
    new-array v0, v0, [B

    :cond_e
    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_3d

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_20
    const/4 v2, 0x0

    :try_start_21
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v3, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/InputStreamBody;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
