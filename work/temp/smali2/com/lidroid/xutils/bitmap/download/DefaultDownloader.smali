.class public Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;
.super Lcom/lidroid/xutils/bitmap/download/Downloader;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/bitmap/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<*>;)J"
        }
    .end annotation

    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_e
    const-wide/16 v1, -0x1

    :goto_10
    return-wide v1

    :cond_11
    const/4 v3, 0x0

    invoke-static {}, Lcom/lidroid/xutils/util/OtherUtils;->trustAllHttpsURLConnection()V

    const-wide/16 v4, 0x0

    :try_start_17
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    int-to-long v6, v2

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2e} :catch_111
    .catchall {:try_start_17 .. :try_end_2e} :catchall_103

    :try_start_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_115
    .catchall {:try_start_2e .. :try_end_35} :catchall_108

    move-result-wide v10

    add-long/2addr v8, v10

    move-object v3, v2

    move-wide v1, v8

    :goto_39
    :try_start_39
    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_45

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_42} :catch_f2
    .catchall {:try_start_39 .. :try_end_42} :catchall_103

    move-result-object v8

    if-nez v8, :cond_b9

    :cond_45
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v1, -0x1

    goto :goto_10

    :cond_4b
    :try_start_4b
    const-string v1, "assets/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide v6, 0x7fffffffffffffffL

    move-object v3, v8

    move-wide v12, v6

    move-wide v6, v1

    move-wide v1, v12

    goto :goto_39

    :cond_7c
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultConnectTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_9c} :catch_111
    .catchall {:try_start_4b .. :try_end_9c} :catchall_103

    :try_start_9c
    invoke-virtual {v1}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v8, v6

    if-gez v3, :cond_b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/download/DefaultDownloader;->getDefaultExpiry()J

    move-result-wide v8

    add-long/2addr v8, v6

    :cond_b1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_b4} :catch_119
    .catchall {:try_start_9c .. :try_end_b4} :catchall_10b

    move-result v1

    int-to-long v6, v1

    move-object v3, v2

    move-wide v1, v8

    goto :goto_39

    :cond_b9
    const/16 v8, 0x1000

    :try_start_bb
    new-array v8, v8, [B

    new-instance v9, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_c4
    invoke-virtual {v3, v8}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d3

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_ce} :catch_f2
    .catchall {:try_start_bb .. :try_end_ce} :catchall_103

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_10

    :cond_d3
    const/4 v11, 0x0

    :try_start_d4
    invoke-virtual {v9, v8, v11, v10}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v10, v10

    add-long/2addr v4, v10

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_e5

    invoke-virtual/range {p3 .. p3}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_e2} :catch_f2
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_103

    move-result-object v10

    if-nez v10, :cond_ec

    :cond_e5
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v1, -0x1

    goto/16 :goto_10

    :cond_ec
    :try_start_ec
    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->updateProgress(JJ)V
    :try_end_f1
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f1} :catch_f2
    .catchall {:try_start_ec .. :try_end_f1} :catchall_103

    goto :goto_c4

    :catch_f2
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    :goto_f5
    const-wide/16 v1, -0x1

    :try_start_f7
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_10e

    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_10

    :catchall_103
    move-exception v1

    :goto_104
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :catchall_108
    move-exception v1

    move-object v3, v2

    goto :goto_104

    :catchall_10b
    move-exception v1

    move-object v3, v2

    goto :goto_104

    :catchall_10e
    move-exception v1

    move-object v3, v4

    goto :goto_104

    :catch_111
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    goto :goto_f5

    :catch_115
    move-exception v1

    move-object v3, v1

    move-object v4, v2

    goto :goto_f5

    :catch_119
    move-exception v1

    move-object v3, v1

    move-object v4, v2

    goto :goto_f5
.end method
