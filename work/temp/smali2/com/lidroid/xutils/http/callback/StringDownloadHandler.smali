.class public Lcom/lidroid/xutils/http/callback/StringDownloadHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_6

    move-object v0, v6

    :goto_5
    return-object v0

    :cond_6
    const-wide/16 v3, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    if-eqz p2, :cond_17

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_17

    move-object v0, v6

    goto :goto_5

    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1c
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v6, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    :cond_2c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_45

    :goto_32
    if-eqz p2, :cond_39

    const/4 v5, 0x1

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_5e

    :cond_39
    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_45
    :try_start_45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Lcom/lidroid/xutils/util/OtherUtils;->sizeOfString(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v3, v9

    if-eqz p2, :cond_2c

    const/4 v5, 0x0

    move-object v0, p2

    invoke-interface/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_5e

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_32

    :catchall_5e
    move-exception v0

    invoke-static {v6}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
