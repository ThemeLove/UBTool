.class public Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;
.super Lorg/apache/http/entity/FileEntity;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private fileSize:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    return-void
.end method


# virtual methods
.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

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
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_61

    const/16 v0, 0x1000

    :try_start_19
    new-array v7, v0, [B

    :cond_1b
    invoke-virtual {v6, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_5b

    :cond_33
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_37
    const/4 v1, 0x0

    :try_start_38
    invoke-virtual {p1, v7, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->fileSize:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/FileUploadEntity;->uploadedSize:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_38 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    move-object v1, v6

    :goto_5d
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_61
    move-exception v0

    goto :goto_5d
.end method
