.class public Lcom/lidroid/xutils/http/client/multipart/content/FileBody;
.super Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;


# instance fields
.field private final charset:Ljava/lang/String;

.field private final file:Ljava/io/File;

.field private final filename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/lidroid/xutils/http/client/multipart/content/AbstractContentBody;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    if-eqz p2, :cond_16

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    :goto_13
    iput-object p4, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    return-void

    :cond_16
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    goto :goto_13
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    const-string v0, "binary"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->file:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_4b

    const/16 v0, 0x1000

    :try_start_19
    new-array v0, v0, [B

    :cond_1b
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_46

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_29
    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iget-wide v4, v3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/content/FileBody;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->doCallBack(Z)Z

    move-result v2

    if-nez v2, :cond_1b

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v2, "cancel"

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    :goto_47
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_4b
    move-exception v0

    move-object v1, v2

    goto :goto_47
.end method
