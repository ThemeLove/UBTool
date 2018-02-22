.class public final Lcom/alipay/b/f/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v1, Lcom/alipay/b/f/i;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apdidTokenCache"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sget-object v2, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;)Z
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2d

    move-result v2

    if-eqz v2, :cond_2a

    :goto_28
    monitor-exit v1

    return-object v0

    :cond_2a
    :try_start_2a
    const-string v0, ""
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    goto :goto_28

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .registers 1

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Lcom/alipay/b/f/b;)V
    .registers 3

    const-class v1, Lcom/alipay/b/f/i;

    monitor-enter v1

    if-eqz p0, :cond_17

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/b/f/b;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->c:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/alipay/b/f/c;)V
    .registers 3

    const-class v1, Lcom/alipay/b/f/i;

    monitor-enter v1

    if-eqz p0, :cond_23

    :try_start_5
    invoke-virtual {p0}, Lcom/alipay/b/f/c;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/c;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/c;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/b/f/c;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/b/f/i;->c:Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/alipay/b/f/i;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apdidTokenCache"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    sget-object v2, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const-wide/32 v0, 0x5265c00

    const-class v4, Lcom/alipay/b/f/i;

    monitor-enter v4

    :try_start_6
    invoke-static {p0}, Lcom/alipay/b/f/h;->a(Landroid/content/Context;)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_2a
    .catchall {:try_start_6 .. :try_end_9} :catchall_2c

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gez v5, :cond_2f

    :goto_10
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, p1}, Lcom/alipay/b/f/h;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1c} :catch_24
    .catchall {:try_start_10 .. :try_end_1c} :catchall_2c

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_28

    const/4 v0, 0x1

    :goto_22
    monitor-exit v4

    return v0

    :catch_24
    move-exception v0

    :try_start_25
    invoke-static {v0}, Lcom/alipay/b/c/a;->a(Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    :cond_28
    const/4 v0, 0x0

    goto :goto_22

    :catch_2a
    move-exception v2

    goto :goto_10

    :catchall_2c
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_2f
    move-wide v0, v2

    goto :goto_10
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/alipay/b/f/i;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/alipay/b/f/i;->b:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized d()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/alipay/b/f/i;->d:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/alipay/b/f/i;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/alipay/b/f/i;->e:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/alipay/b/f/i;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/alipay/b/f/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/alipay/b/f/i;->c:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/alipay/b/f/i;->e:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized g()Lcom/alipay/b/f/c;
    .registers 7

    const-class v6, Lcom/alipay/b/f/i;

    monitor-enter v6

    :try_start_3
    new-instance v0, Lcom/alipay/b/f/c;

    sget-object v1, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    sget-object v2, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    sget-object v3, Lcom/alipay/b/f/i;->c:Ljava/lang/String;

    sget-object v4, Lcom/alipay/b/f/i;->d:Ljava/lang/String;

    sget-object v5, Lcom/alipay/b/f/i;->e:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/alipay/b/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v6

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static h()V
    .registers 1

    sget-object v0, Lcom/alipay/b/f/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/alipay/b/f/i;->c:Ljava/lang/String;

    return-void
.end method
