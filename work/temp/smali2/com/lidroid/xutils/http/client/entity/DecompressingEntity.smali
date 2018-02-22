.class abstract Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private content:Ljava/io/InputStream;

.field private uncompressedLength:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    :catch_c
    move-exception v0

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method abstract decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    :cond_12
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->content:Ljava/io/InputStream;

    :goto_14
    return-object v0

    :cond_15
    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_59

    move-result-object v6

    const/16 v0, 0x1000

    :try_start_11
    new-array v7, v0, [B

    :cond_13
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_53

    :cond_2b
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_2f
    const/4 v1, 0x0

    :try_start_30
    invoke-virtual {p1, v7, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uncompressedLength:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->uploadedSize:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v0

    move-object v1, v6

    :goto_55
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_59
    move-exception v0

    goto :goto_55
.end method
