.class public final Lcom/alipay/b/f/g;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-class v1, Lcom/alipay/b/f/g;

    monitor-enter v1

    :try_start_3
    const-string v0, "openapi_file_pri"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openApi"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p0, v0, v2, v3}, Lcom/alipay/c/a/a/d/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v0, ""
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_35

    :cond_22
    :goto_22
    monitor-exit v1

    return-object v0

    :cond_24
    :try_start_24
    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/c/a/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v0, ""
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_35

    goto :goto_22

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .registers 1

    const-class v0, Lcom/alipay/b/f/g;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    const-class v1, Lcom/alipay/b/f/g;

    monitor-enter v1

    :try_start_3
    const-string v0, "openapi_file_pri"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/alipay/b/f/g;

    monitor-enter v1

    :try_start_3
    const-string v0, "openapi_file_pri"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openApi"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/c/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/alipay/c/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2d} :catch_32
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    :cond_2d
    :goto_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_32
    move-exception v0

    goto :goto_2d
.end method
