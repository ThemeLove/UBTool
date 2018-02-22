.class public final Lcom/alipay/b/f/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)Lcom/alipay/b/f/b;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/b/f/b;

    const-string v3, "apdid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceInfoHash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/alipay/b/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    :goto_23
    return-object v0

    :catch_24
    move-exception v0

    invoke-static {v0}, Lcom/alipay/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_28
    move-object v0, v1

    goto :goto_23
.end method

.method public static declared-synchronized a()V
    .registers 1

    const-class v0, Lcom/alipay/b/f/a;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/alipay/b/f/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v3"

    const-string v2, "deviceid"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wxcasxx_v3"

    const-string v2, "wxcasxx"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/b/f/b;)V
    .registers 6

    const-class v1, Lcom/alipay/b/f/a;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "apdid"

    invoke-virtual {p1}, Lcom/alipay/b/f/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceInfoHash"

    invoke-virtual {p1}, Lcom/alipay/b/f/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/alipay/b/f/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vkeyid_profiles_v3"

    const-string v3, "deviceid"

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxcasxx_v3"

    const-string v3, "wxcasxx"

    invoke-static {v2, v3, v0}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_37
    .catchall {:try_start_3 .. :try_end_35} :catchall_3c

    :goto_35
    monitor-exit v1

    return-void

    :catch_37
    move-exception v0

    :try_start_38
    invoke-static {v0}, Lcom/alipay/b/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_35

    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/alipay/b/f/b;
    .registers 3

    const-class v1, Lcom/alipay/b/f/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "wxcasxx_v3"

    const-string v2, "wxcasxx"

    invoke-static {v0, v2}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x0

    :goto_12
    monitor-exit v1

    return-object v0

    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/alipay/b/f/a;->a(Ljava/lang/String;)Lcom/alipay/b/f/b;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_12

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/b/f/b;
    .registers 4

    const-class v1, Lcom/alipay/b/f/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v3"

    const-string v2, "deviceid"

    invoke-static {p0, v0, v2}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "wxcasxx_v3"

    const-string v2, "wxcasxx"

    invoke-static {v0, v2}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-static {v0}, Lcom/alipay/b/f/a;->a(Ljava/lang/String;)Lcom/alipay/b/f/b;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1f

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/alipay/b/f/b;
    .registers 4

    const-class v1, Lcom/alipay/b/f/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v3"

    const-string v2, "deviceid"

    invoke-static {p0, v0, v2}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    move-result v2

    if-eqz v2, :cond_14

    const/4 v0, 0x0

    :goto_12
    monitor-exit v1

    return-object v0

    :cond_14
    :try_start_14
    invoke-static {v0}, Lcom/alipay/b/f/a;->a(Ljava/lang/String;)Lcom/alipay/b/f/b;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_12

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
