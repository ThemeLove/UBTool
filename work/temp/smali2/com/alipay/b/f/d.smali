.class public final Lcom/alipay/b/f/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)Lcom/alipay/b/f/c;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/b/f/c;

    const-string v1, "apdid"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceInfoHash"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tid"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "utdid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/b/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    :goto_2f
    return-object v0

    :catch_30
    move-exception v0

    invoke-static {v0}, Lcom/alipay/b/c/a;->a(Ljava/lang/Throwable;)V

    :cond_34
    move-object v0, v6

    goto :goto_2f
.end method

.method public static declared-synchronized a()V
    .registers 1

    const-class v0, Lcom/alipay/b/f/d;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    const-class v1, Lcom/alipay/b/f/d;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wxcasxx_v4"

    const-string v2, "key_wxcasxx_v4"

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

.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/b/f/c;)V
    .registers 6

    const-class v1, Lcom/alipay/b/f/d;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "apdid"

    invoke-virtual {p1}, Lcom/alipay/b/f/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceInfoHash"

    invoke-virtual {p1}, Lcom/alipay/b/f/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    invoke-virtual {p1}, Lcom/alipay/b/f/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tid"

    invoke-virtual {p1}, Lcom/alipay/b/f/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "utdid"

    invoke-virtual {p1}, Lcom/alipay/b/f/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vkeyid_profiles_v4"

    const-string v3, "key_deviceid_v4"

    invoke-static {p0, v2, v3, v0}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxcasxx_v4"

    const-string v3, "key_wxcasxx_v4"

    invoke-static {v2, v3, v0}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_47} :catch_49
    .catchall {:try_start_3 .. :try_end_47} :catchall_4e

    :goto_47
    monitor-exit v1

    return-void

    :catch_49
    move-exception v0

    :try_start_4a
    invoke-static {v0}, Lcom/alipay/b/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_47

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/alipay/b/f/c;
    .registers 3

    const-class v1, Lcom/alipay/b/f/d;

    monitor-enter v1

    :try_start_3
    const-string v0, "wxcasxx_v4"

    const-string v2, "key_wxcasxx_v4"

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
    invoke-static {v0}, Lcom/alipay/b/f/d;->a(Ljava/lang/String;)Lcom/alipay/b/f/c;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_12

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/b/f/c;
    .registers 4

    const-class v1, Lcom/alipay/b/f/d;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

    invoke-static {p0, v0, v2}, Lcom/alipay/b/h/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "wxcasxx_v4"

    const-string v2, "key_wxcasxx_v4"

    invoke-static {v0, v2}, Lcom/alipay/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_19
    invoke-static {v0}, Lcom/alipay/b/f/d;->a(Ljava/lang/String;)Lcom/alipay/b/f/c;
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

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/alipay/b/f/c;
    .registers 4

    const-class v1, Lcom/alipay/b/f/d;

    monitor-enter v1

    :try_start_3
    const-string v0, "vkeyid_profiles_v4"

    const-string v2, "key_deviceid_v4"

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
    invoke-static {v0}, Lcom/alipay/b/f/d;->a(Ljava/lang/String;)Lcom/alipay/b/f/c;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_19

    move-result-object v0

    goto :goto_12

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
