.class public Lcom/alipay/b/g/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/b/g/a$b;,
        Lcom/alipay/b/g/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/b/g/a;

.field private static c:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/b/g/a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/b/g/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/b/g/a;
    .registers 3

    sget-object v0, Lcom/alipay/b/g/a;->a:Lcom/alipay/b/g/a;

    if-nez v0, :cond_13

    sget-object v1, Lcom/alipay/b/g/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/alipay/b/g/a;->a:Lcom/alipay/b/g/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/alipay/b/g/a;

    invoke-direct {v0, p0}, Lcom/alipay/b/g/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/b/g/a;->a:Lcom/alipay/b/g/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/alipay/b/g/a;->a:Lcom/alipay/b/g/a;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/alipay/b/g/a$b;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/alipay/b/g/a$b;

    invoke-direct {v0, p0}, Lcom/alipay/b/g/a$b;-><init>(Lcom/alipay/b/g/a;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    :try_start_6
    iget-object v1, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alipay/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/b/g/a$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/b/f/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/b/g/a$b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/b/g/a$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/b/e/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/b/g/a$b;->d:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_28} :catch_2d
    .catchall {:try_start_6 .. :try_end_28} :catchall_2a

    :goto_28
    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2d
    move-exception v1

    goto :goto_28
.end method

.method public a(ILjava/util/Map;Lcom/alipay/b/g/a$a;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/b/g/a$a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/b/b/a;->a()Lcom/alipay/b/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/b/b/a;->a(I)V

    iget-object v0, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/b/f/h;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/b/b/a;->a()Lcom/alipay/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/b/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {v0, v1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/b/f/a;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/b/f/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/b/f/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/b/f/i;->h()V

    :cond_33
    invoke-static {v0, v1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/b/f/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3e
    const-string v0, "utdid"

    const-string v1, ""

    invoke-static {p2, v0, v1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    const-string v2, ""

    invoke-static {p2, v1, v2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    const-string v3, ""

    invoke-static {p2, v2, v3}, Lcom/alipay/c/a/a/a/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    iget-object v0, p0, Lcom/alipay/b/g/a;->b:Landroid/content/Context;

    const-string v0, ""

    :cond_60
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "utdid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tid"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "userId"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appName"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appKeyClient"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appchannel"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/b/h/b;->a()Lcom/alipay/b/h/b;

    move-result-object v0

    new-instance v1, Lcom/alipay/b/g/b;

    invoke-direct {v1, p0, v3, p3}, Lcom/alipay/b/g/b;-><init>(Lcom/alipay/b/g/a;Ljava/util/Map;Lcom/alipay/b/g/a$a;)V

    invoke-virtual {v0, v1}, Lcom/alipay/b/h/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
