.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/k/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/alipay/sdk/j/e;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/c/c;->a()Lcom/alipay/sdk/c/c;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/h/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/sdk/k/a;

    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/k/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/k/a;

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->a()V

    const/4 v1, 0x0

    :try_start_4
    new-instance v0, Lcom/alipay/sdk/f/a/a;

    invoke-direct {v0}, Lcom/alipay/sdk/f/a/a;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/alipay/sdk/f/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/f/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "form"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "onload"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/g/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    const/4 v0, 0x0

    move v2, v0

    :goto_26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4a

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    iget-object v0, v0, Lcom/alipay/sdk/g/b;->a:Lcom/alipay/sdk/g/a;

    sget-object v4, Lcom/alipay/sdk/g/a;->b:Lcom/alipay/sdk/g/a;

    if-ne v0, v4, :cond_46

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    invoke-direct {p0, v0}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/g/b;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_41} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_41} :catch_76
    .catchall {:try_start_4 .. :try_end_41} :catchall_83

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    :goto_45
    return-object v0

    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_26

    :cond_4a
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    move-object v0, v1

    :goto_4e
    if-nez v0, :cond_58

    sget-object v0, Lcom/alipay/sdk/app/j;->b:Lcom/alipay/sdk/app/j;

    iget v0, v0, Lcom/alipay/sdk/app/j;->h:I

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(I)Lcom/alipay/sdk/app/j;

    move-result-object v0

    :cond_58
    iget v1, v0, Lcom/alipay/sdk/app/j;->h:I

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_45

    :catch_63
    move-exception v0

    :try_start_64
    sget-object v1, Lcom/alipay/sdk/app/j;->d:Lcom/alipay/sdk/app/j;

    iget v1, v1, Lcom/alipay/sdk/app/j;->h:I

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(I)Lcom/alipay/sdk/app/j;

    move-result-object v1

    const-string v2, "net"

    invoke-static {v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_83

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    move-object v0, v1

    goto :goto_4e

    :catch_76
    move-exception v0

    :try_start_77
    const-string v2, "biz"

    const-string v3, "H5AuthDataAnalysisError"

    invoke-static {v2, v3, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_83

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    move-object v0, v1

    goto :goto_4e

    :catchall_83
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    throw v0
.end method

.method private a(Lcom/alipay/sdk/g/b;)Ljava/lang/String;
    .registers 6

    iget-object v0, p1, Lcom/alipay/sdk/g/b;->b:[Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_23
    sget-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_36
    .catchall {:try_start_23 .. :try_end_28} :catchall_3d

    monitor-exit v1

    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    :cond_35
    :goto_35
    return-object v0

    :catch_36
    move-exception v0

    :try_start_37
    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_35

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->a()V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/AuthTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/alipay/sdk/j/k;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_14} :catch_1a

    const/16 v2, 0x49

    if-lt v1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catch_1a
    move-exception v1

    goto :goto_11
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->b()V

    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    if-eqz p2, :cond_6

    :try_start_3
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->a()V

    :cond_6
    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/c/c;->a()Lcom/alipay/sdk/c/c;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/h/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_88

    move-result-object v1

    :try_start_16
    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    new-instance v0, Lcom/alipay/sdk/h/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/alipay/sdk/j/e;

    new-instance v4, Lcom/alipay/sdk/app/b;

    invoke-direct {v4, p0}, Lcom/alipay/sdk/app/b;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    invoke-direct {v0, v2, v4}, Lcom/alipay/sdk/j/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/j/e$a;)V

    invoke-virtual {v0, v3}, Lcom/alipay/sdk/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "failed"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_48} :catch_61
    .catchall {:try_start_16 .. :try_end_48} :catchall_75

    move-result-object v0

    :cond_49
    :goto_49
    :try_start_49
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_88

    :goto_5a
    monitor-exit p0

    return-object v0

    :cond_5c
    :try_start_5c
    invoke-direct {p0, v2, v3}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_61
    .catchall {:try_start_5c .. :try_end_5f} :catchall_75

    move-result-object v0

    goto :goto_49

    :catch_61
    move-exception v0

    :try_start_62
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5a

    :catchall_75
    move-exception v0

    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v0
    :try_end_88
    .catchall {:try_start_62 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized authV2(Ljava/lang/String;Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->auth(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/j/i;->a(Ljava/lang/String;)Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
