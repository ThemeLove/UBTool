.class public final Lcom/alipay/b/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/b/d/d;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_16

    :try_start_8
    const-string v2, "AE16"

    new-instance v3, Lcom/alipay/b/c/b;

    invoke-direct {v3}, Lcom/alipay/b/c/b;-><init>()V

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_19
    .catchall {:try_start_8 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_19
    move-exception v2

    goto :goto_14
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/alipay/b/d/d;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/alipay/c/a/a/b/d;->a()Lcom/alipay/c/a/a/b/d;

    invoke-static {}, Lcom/alipay/c/a/a/b/b;->a()Lcom/alipay/c/a/a/b/b;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AE1"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "1"

    :goto_26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AE3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/alipay/c/a/a/b/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string v0, "1"

    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE4"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE5"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE6"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE7"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE8"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE9"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE10"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE11"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE12"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE13"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE14"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE15"

    invoke-static {}, Lcom/alipay/c/a/a/b/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AE21"

    invoke-static {}, Lcom/alipay/c/a/a/b/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c0
    .catchall {:try_start_3 .. :try_end_c0} :catchall_ca

    monitor-exit v1

    return-object v2

    :cond_c2
    :try_start_c2
    const-string v0, "0"

    goto/16 :goto_26

    :cond_c6
    const-string v0, "0"
    :try_end_c8
    .catchall {:try_start_c2 .. :try_end_c8} :catchall_ca

    goto/16 :goto_40

    :catchall_ca
    move-exception v0

    monitor-exit v1

    throw v0
.end method
