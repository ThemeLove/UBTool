.class public final Lcom/alipay/c/a/a/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/c/a/a/c/a;


# static fields
.field private static d:Lcom/alipay/c/a/a/c/b;

.field private static e:Lcom/alipay/f/a/a/b/a/a/b;


# instance fields
.field private a:Lcom/alipay/android/a/a/a/z;

.field private b:Lcom/alipay/f/a/a/a/a;

.field private c:Lcom/alipay/f/a/a/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/c/a/a/c/b;->d:Lcom/alipay/c/a/a/c/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->a:Lcom/alipay/android/a/a/a/z;

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->b:Lcom/alipay/f/a/a/a/a;

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->c:Lcom/alipay/f/a/a/b/a/a;

    new-instance v1, Lcom/alipay/android/a/a/a/ae;

    invoke-direct {v1}, Lcom/alipay/android/a/a/a/ae;-><init>()V

    invoke-virtual {v1, p2}, Lcom/alipay/android/a/a/a/ae;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/a/a/a/h;

    invoke-direct {v0, p1}, Lcom/alipay/android/a/a/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->a:Lcom/alipay/android/a/a/a/z;

    iget-object v0, p0, Lcom/alipay/c/a/a/c/b;->a:Lcom/alipay/android/a/a/a/z;

    const-class v2, Lcom/alipay/f/a/a/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/a/a/a/z;->a(Ljava/lang/Class;Lcom/alipay/android/a/a/a/ae;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/f/a/a/a/a;

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->b:Lcom/alipay/f/a/a/a/a;

    iget-object v0, p0, Lcom/alipay/c/a/a/c/b;->a:Lcom/alipay/android/a/a/a/z;

    const-class v2, Lcom/alipay/f/a/a/b/a/a;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/a/a/a/z;->a(Ljava/lang/Class;Lcom/alipay/android/a/a/a/ae;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/f/a/a/b/a/a;

    iput-object v0, p0, Lcom/alipay/c/a/a/c/b;->c:Lcom/alipay/f/a/a/b/a/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/c/a/a/c/b;
    .registers 4

    const-class v1, Lcom/alipay/c/a/a/c/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/c/a/a/c/b;->d:Lcom/alipay/c/a/a/c/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/alipay/c/a/a/c/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/c/a/a/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/c/a/a/c/b;->d:Lcom/alipay/c/a/a/c/b;

    :cond_e
    sget-object v0, Lcom/alipay/c/a/a/c/b;->d:Lcom/alipay/c/a/a/c/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Lcom/alipay/f/a/a/b/a/a/b;
    .registers 1

    sget-object v0, Lcom/alipay/c/a/a/c/b;->e:Lcom/alipay/f/a/a/b/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/f/a/a/b/a/a/b;)Lcom/alipay/f/a/a/b/a/a/b;
    .registers 1

    sput-object p0, Lcom/alipay/c/a/a/c/b;->e:Lcom/alipay/f/a/a/b/a/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/c/a/a/c/b;)Lcom/alipay/f/a/a/b/a/a;
    .registers 2

    iget-object v0, p0, Lcom/alipay/c/a/a/c/b;->c:Lcom/alipay/f/a/a/b/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/f/a/a/b/a/a/a;)Lcom/alipay/f/a/a/b/a/a/b;
    .registers 5

    iget-object v0, p0, Lcom/alipay/c/a/a/c/b;->c:Lcom/alipay/f/a/a/b/a/a;

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/c/a/a/c/b;->e:Lcom/alipay/f/a/a/b/a/a/b;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/c/a/a/c/c;

    invoke-direct {v1, p0, p1}, Lcom/alipay/c/a/a/c/c;-><init>(Lcom/alipay/c/a/a/c/b;Lcom/alipay/f/a/a/b/a/a/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const v0, 0x493e0

    :goto_17
    sget-object v1, Lcom/alipay/c/a/a/c/b;->e:Lcom/alipay/f/a/a/b/a/a/b;

    if-nez v1, :cond_25

    if-ltz v0, :cond_25

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, -0x32

    goto :goto_17

    :cond_25
    sget-object v0, Lcom/alipay/c/a/a/c/b;->e:Lcom/alipay/f/a/a/b/a/a/b;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    iget-object v0, p0, Lcom/alipay/c/a/a/c/b;->b:Lcom/alipay/f/a/a/a/a;

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/alipay/c/a/a/c/b;->b:Lcom/alipay/f/a/a/a/a;

    invoke-static {p1}, Lcom/alipay/c/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/f/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_30

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2e
    move v1, v0

    goto :goto_7

    :catch_30
    move-exception v2

    goto :goto_17

    :cond_32
    move v0, v1

    goto :goto_2e
.end method
