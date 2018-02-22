.class public Lcom/fanwei/bluearty/pluginmgr/utils/FileUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11

    const/4 v5, 0x0

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_36
    .catchall {:try_start_1 .. :try_end_6} :catchall_57

    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_85
    .catchall {:try_start_6 .. :try_end_b} :catchall_75

    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_8a
    .catchall {:try_start_b .. :try_end_e} :catchall_79

    move-result-object v0

    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1c} :catch_8f
    .catchall {:try_start_f .. :try_end_1c} :catchall_7c

    if-eqz v7, :cond_21

    :try_start_1e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_21
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_26
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_2b
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catch_36
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    :goto_3a
    :try_start_3a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_81

    if-eqz v3, :cond_42

    :try_start_3f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_42
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_47
    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_4c
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_51} :catch_52

    goto :goto_30

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catchall_57
    move-exception v0

    move-object v1, v5

    move-object v6, v5

    move-object v7, v5

    :goto_5b
    if-eqz v7, :cond_60

    :try_start_5d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_60
    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_65
    if-eqz v6, :cond_6a

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    :cond_6a
    if-eqz v5, :cond_6f

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6f} :catch_70

    :cond_6f
    :goto_6f
    throw v0

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catchall_75
    move-exception v0

    move-object v1, v5

    move-object v6, v5

    goto :goto_5b

    :catchall_79
    move-exception v0

    move-object v1, v5

    goto :goto_5b

    :catchall_7c
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_5b

    :catchall_81
    move-exception v0

    move-object v6, v2

    move-object v7, v3

    goto :goto_5b

    :catch_85
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v7

    goto :goto_3a

    :catch_8a
    move-exception v0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    goto :goto_3a

    :catch_8f
    move-exception v1

    move-object v2, v6

    move-object v3, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3a
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 8

    const/16 v5, 0x400

    const/4 v4, 0x0

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v1, v5, [B

    :goto_f
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_f

    :cond_1a
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method
