.class public Lcom/alipay/b/h/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    :try_start_10
    const-string v1, ""

    invoke-static {p0, p1, p2, v1}, Lcom/alipay/c/a/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/c/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_f

    :catch_25
    move-exception v1

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/b/h/a;

    monitor-enter v1

    :try_start_4
    invoke-static {p0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1e

    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Lcom/alipay/c/a/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_19} :catch_3c
    .catchall {:try_start_12 .. :try_end_19} :catchall_1e

    move-result v3

    if-eqz v3, :cond_21

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1e

    goto :goto_11

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_21
    :try_start_21
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2d} :catch_3c
    .catchall {:try_start_21 .. :try_end_2d} :catchall_1e

    move-result v3

    if-eqz v3, :cond_32

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_1e

    goto :goto_11

    :cond_32
    :try_start_32
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/c/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_39} :catch_3c
    .catchall {:try_start_32 .. :try_end_39} :catchall_1e

    move-result-object v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_1e

    goto :goto_11

    :catch_3c
    move-exception v2

    monitor-exit v1

    goto :goto_11
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/c/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/alipay/c/a/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v0

    goto :goto_e
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v2, Lcom/alipay/b/h/a;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_8c

    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-static {p0}, Lcom/alipay/c/a/a/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1d} :catch_96
    .catchall {:try_start_11 .. :try_end_1d} :catchall_8c

    move-result v3

    if-eqz v3, :cond_25

    :try_start_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_8f
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_25} :catch_96
    .catchall {:try_start_20 .. :try_end_25} :catchall_8c

    :cond_25
    :goto_25
    :try_start_25
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alipay/c/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_33} :catch_96
    .catchall {:try_start_25 .. :try_end_33} :catchall_8c

    move-result-object v3

    :try_start_34
    invoke-static {v3}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p0, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3d} :catch_b6
    .catchall {:try_start_34 .. :try_end_3d} :catchall_8c

    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/alipay/c/a/a/d/c;->a()Z

    move-result v0

    if-eqz v0, :cond_8a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ".SystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_57} :catch_96
    .catchall {:try_start_3d .. :try_end_57} :catchall_8c

    move-result-object v0

    :try_start_58
    invoke-static {}, Lcom/alipay/c/a/a/d/c;->a()Z

    move-result v1

    if-eqz v1, :cond_8a

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7d} :catch_a9
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7d} :catch_96
    .catchall {:try_start_58 .. :try_end_7d} :catchall_8c

    const/4 v1, 0x0

    :try_start_7e
    new-instance v0, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_84} :catch_98
    .catchall {:try_start_7e .. :try_end_84} :catchall_a2

    :try_start_84
    invoke-virtual {v0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_b4
    .catchall {:try_start_84 .. :try_end_87} :catchall_af

    :try_start_87
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_a9
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_96
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8c

    :cond_8a
    :goto_8a
    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8c

    goto :goto_10

    :catchall_8c
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_8f
    move-exception v0

    :try_start_90
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_95} :catch_96
    .catchall {:try_start_90 .. :try_end_95} :catchall_8c

    goto :goto_25

    :catch_96
    move-exception v0

    goto :goto_8a

    :catch_98
    move-exception v0

    move-object v0, v1

    :goto_9a
    if-eqz v0, :cond_8a

    :try_start_9c
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_a9
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9f} :catch_96
    .catchall {:try_start_9c .. :try_end_9f} :catchall_8c

    goto :goto_8a

    :catch_a0
    move-exception v0

    goto :goto_8a

    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v1, :cond_a8

    :try_start_a5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_96
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_8c

    :cond_a8
    :goto_a8
    :try_start_a8
    throw v0
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a9} :catch_a9
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_a9} :catch_96
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_8c

    :catch_a9
    move-exception v0

    goto :goto_8a

    :catch_ab
    move-exception v0

    goto :goto_8a

    :catch_ad
    move-exception v1

    goto :goto_a8

    :catchall_af
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_a3

    :catch_b4
    move-exception v1

    goto :goto_9a

    :catch_b6
    move-exception v0

    goto :goto_3d
.end method
