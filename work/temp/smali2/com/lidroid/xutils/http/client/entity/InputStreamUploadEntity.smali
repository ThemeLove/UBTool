.class public Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

.field private final content:Ljava/io/InputStream;

.field private final length:J

.field private uploadedSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .registers 6

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 15

    const-wide/16 v11, 0x0

    const/4 v10, -0x1

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v8, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->content:Ljava/io/InputStream;

    const/16 v0, 0x800

    :try_start_11
    new-array v9, v0, [B

    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    cmp-long v0, v0, v11

    if-gez v0, :cond_60

    :cond_19
    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ne v0, v10, :cond_34

    :cond_1f
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_5b

    :cond_30
    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_34
    const/4 v1, 0x0

    :try_start_35
    invoke-virtual {p1, v9, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_60
    :try_start_60
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    :goto_62
    cmp-long v2, v0, v11

    if-lez v2, :cond_1f

    const/4 v2, 0x0

    const-wide/16 v3, 0x800

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v8, v9, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v10, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {p1, v9, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v2

    sub-long v6, v0, v3

    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    iget-wide v1, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->length:J

    iget-wide v3, p0, Lcom/lidroid/xutils/http/client/entity/InputStreamUploadEntity;->uploadedSize:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_9a

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "cancel"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9a
    .catchall {:try_start_60 .. :try_end_9a} :catchall_5b

    :cond_9a
    move-wide v0, v6

    goto :goto_62
.end method
