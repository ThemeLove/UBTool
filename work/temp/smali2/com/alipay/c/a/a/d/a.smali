.class public Lcom/alipay/c/a/a/d/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-class v1, Lcom/alipay/c/a/a/d/a;

    monitor-enter v1

    if-eqz p0, :cond_12

    :try_start_6
    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_22

    :goto_13
    return-object v0

    :cond_14
    :try_start_14
    const-string v2, ""

    invoke-static {p0, p1, p2, v2}, Lcom/alipay/c/a/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1d} :catch_2f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    move-result v3

    if-eqz v3, :cond_25

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_22

    goto :goto_13

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    :try_start_25
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alipay/c/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2c} :catch_2f
    .catchall {:try_start_25 .. :try_end_2c} :catchall_22

    move-result-object v0

    :goto_2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_22

    goto :goto_13

    :catch_2f
    move-exception v2

    goto :goto_2d
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/alipay/c/a/a/d/a;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p0, :cond_13

    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    :goto_12
    return-void

    :cond_13
    :try_start_13
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/alipay/c/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v2}, Lcom/alipay/c/a/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_26} :catch_2b
    .catchall {:try_start_13 .. :try_end_26} :catchall_28

    :goto_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_28

    goto :goto_12

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_2b
    move-exception v0

    goto :goto_26
.end method
