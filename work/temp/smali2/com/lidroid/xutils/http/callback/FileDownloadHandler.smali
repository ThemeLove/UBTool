.class public Lcom/lidroid/xutils/http/callback/FileDownloadHandler;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;
    .registers 19

    if-eqz p1, :cond_8

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    const/4 v7, 0x0

    :cond_9
    :goto_9
    return-object v7

    :cond_a
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_27
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_2a
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p4, :cond_60

    :try_start_30
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    :goto_3c
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    add-long/2addr v2, v4

    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_68

    :try_start_4a
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_ee

    if-eqz p2, :cond_72

    const/4 v6, 0x1

    move-object v1, p2

    :try_start_53
    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_f3

    move-result v1

    if-nez v1, :cond_72

    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_9

    :cond_60
    :try_start_60
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_68

    goto :goto_3c

    :catchall_68
    move-exception v1

    move-object v2, v6

    move-object v3, v8

    :goto_6b
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_72
    const/16 v1, 0x1000

    :try_start_74
    new-array v10, v1, [B

    :cond_76
    invoke-virtual {v9, v10}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_b3

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    if-eqz p2, :cond_87

    const/4 v6, 0x1

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_87
    .catchall {:try_start_74 .. :try_end_87} :catchall_f3

    :cond_87
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_cb

    invoke-virtual {v7, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_ec

    :goto_b0
    move-object v7, v1

    goto/16 :goto_9

    :cond_b3
    const/4 v6, 0x0

    :try_start_b4
    invoke-virtual {v8, v10, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v11, v1

    add-long/2addr v4, v11

    if-eqz p2, :cond_76

    const/4 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z
    :try_end_c0
    .catchall {:try_start_b4 .. :try_end_c0} :catchall_f3

    move-result v1

    if-nez v1, :cond_76

    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_9

    :cond_cb
    new-instance v1, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_ec
    move-object v1, v7

    goto :goto_b0

    :catchall_ee
    move-exception v1

    move-object v2, v6

    move-object v3, v9

    goto/16 :goto_6b

    :catchall_f3
    move-exception v1

    move-object v2, v8

    move-object v3, v9

    goto/16 :goto_6b
.end method
