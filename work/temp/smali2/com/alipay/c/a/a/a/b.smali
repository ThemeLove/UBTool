.class public final Lcom/alipay/c/a/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    :goto_11
    return-object v0

    :cond_12
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v4, v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_4f
    .catchall {:try_start_6 .. :try_end_23} :catchall_3f

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_2d
    .catchall {:try_start_23 .. :try_end_2c} :catchall_4d

    goto :goto_23

    :catch_2d
    move-exception v0

    move-object v0, v1

    :goto_2f
    if-eqz v0, :cond_34

    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_49

    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_34

    :catch_3d
    move-exception v0

    goto :goto_34

    :catchall_3f
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_43
    if-eqz v1, :cond_48

    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_4b

    :cond_48
    :goto_48
    throw v0

    :catch_49
    move-exception v0

    goto :goto_34

    :catch_4b
    move-exception v1

    goto :goto_48

    :catchall_4d
    move-exception v0

    goto :goto_43

    :catch_4f
    move-exception v1

    goto :goto_2f
.end method
