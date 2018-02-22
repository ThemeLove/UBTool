.class public Lcom/lidroid/xutils/http/ResponseStream;
.super Ljava/io/InputStream;


# instance fields
.field private _directResult:Ljava/lang/String;

.field private baseResponse:Lorg/apache/http/HttpResponse;

.field private baseStream:Ljava/io/InputStream;

.field private charset:Ljava/lang/String;

.field private expiry:J

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "result may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;J)V
    .registers 11

    const-string v2, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/http/ResponseStream;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseResponse may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/lidroid/xutils/http/ResponseStream;->charset:Ljava/lang/String;

    iput-object p3, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    iput-wide p4, p0, Lcom/lidroid/xutils/http/ResponseStream;->expiry:J

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_5
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_4
.end method

.method public getBaseResponse()Lorg/apache/http/HttpResponse;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getBaseStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_8
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/16 v0, 0xc8

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    goto :goto_6
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    goto :goto_4
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    goto :goto_5
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_5
.end method

.method public read([B)I
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_5
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_5
.end method

.method public readFile(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :try_start_a
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_41

    :try_start_14
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_37

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :cond_32
    const/4 v4, 0x0

    :try_start_33
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_1f

    :catchall_37
    move-exception v0

    :goto_38
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_41
    move-exception v0

    move-object v1, v2

    goto :goto_38
.end method

.method public readString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    :goto_22
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;

    iget-wide v3, p0, Lcom/lidroid/xutils/http/ResponseStream;->expiry:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_47
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->_directResult:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_d .. :try_end_49} :catchall_53

    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :cond_4f
    :try_start_4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_22

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRequestMethod(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseStream;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method public skip(J)J
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_6
.end method
