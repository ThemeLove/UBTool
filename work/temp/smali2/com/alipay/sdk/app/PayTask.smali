.class public Lcom/alipay/sdk/app/PayTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/PayTask$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/k/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/PayTask$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/alipay/sdk/j/e;

    sput-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "wappaygw.alipay.com/service/rest.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/service/rest.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    const-string v0, "mclient.alipay.com/home/exterfaceAssign.htm"

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/sdk/c/c;->a()Lcom/alipay/sdk/c/c;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/h/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/sdk/k/a;

    const-string v1, "\u53bb\u652f\u4ed8\u5b9d\u4ed8\u6b3e"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/k/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    return-void
.end method

.method private a(Lcom/alipay/sdk/g/b;)Ljava/lang/String;
    .registers 7

    iget-object v0, p1, Lcom/alipay/sdk/g/b;->b:[Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5PayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24

    const/4 v3, 0x1

    aget-object v0, v0, v3

    const-string v3, "cookie"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2f
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_34} :catch_42
    .catchall {:try_start_2f .. :try_end_34} :catchall_49

    monitor-exit v1

    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v0

    :try_start_43
    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_49

    goto :goto_41

    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()V

    const/4 v1, 0x0

    :try_start_5
    new-instance v0, Lcom/alipay/sdk/f/a/d;

    invoke-direct {v0}, Lcom/alipay/sdk/f/a/d;-><init>()V

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/alipay/sdk/f/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/f/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "form"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "onload"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/g/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    move v3, v2

    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_df

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    iget-object v0, v0, Lcom/alipay/sdk/g/b;->a:Lcom/alipay/sdk/g/a;

    sget-object v5, Lcom/alipay/sdk/g/a;->c:Lcom/alipay/sdk/g/a;

    if-ne v0, v5, :cond_6e

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    iget-object v0, v0, Lcom/alipay/sdk/g/b;->b:[Ljava/lang/String;

    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6e

    const-string v5, "tid"

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v5

    iget-object v5, v5, Lcom/alipay/sdk/h/b;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/sdk/i/b;->a()Lcom/alipay/sdk/i/b;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6e

    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72

    :cond_6e
    :goto_6e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_29

    :cond_72
    const/4 v7, 0x1

    aget-object v7, v0, v7

    iput-object v7, v6, Lcom/alipay/sdk/i/b;->a:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v0, v0, v7

    iput-object v0, v6, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    new-instance v7, Lcom/alipay/sdk/i/a;

    invoke-direct {v7, v5}, Lcom/alipay/sdk/i/a;-><init>(Landroid/content/Context;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_81} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_81} :catch_c8
    .catchall {:try_start_5 .. :try_end_81} :catchall_da

    :try_start_81
    invoke-static {v5}, Lcom/alipay/sdk/j/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/j/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/alipay/sdk/j/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/sdk/j/b;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v6, Lcom/alipay/sdk/i/b;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v0, v5, v8, v6}, Lcom/alipay/sdk/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_98} :catch_c3
    .catchall {:try_start_81 .. :try_end_98} :catchall_d5

    :try_start_98
    invoke-virtual {v7}, Lcom/alipay/sdk/i/a;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_c8
    .catchall {:try_start_98 .. :try_end_9b} :catchall_da

    goto :goto_6e

    :catch_9c
    move-exception v0

    :try_start_9d
    sget-object v1, Lcom/alipay/sdk/app/j;->d:Lcom/alipay/sdk/app/j;

    iget v1, v1, Lcom/alipay/sdk/app/j;->h:I

    invoke-static {v1}, Lcom/alipay/sdk/app/j;->a(I)Lcom/alipay/sdk/app/j;

    move-result-object v1

    const-string v2, "net"

    invoke-static {v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_da

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    move-object v0, v1

    :goto_ae
    if-nez v0, :cond_b8

    sget-object v0, Lcom/alipay/sdk/app/j;->b:Lcom/alipay/sdk/app/j;

    iget v0, v0, Lcom/alipay/sdk/app/j;->h:I

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(I)Lcom/alipay/sdk/app/j;

    move-result-object v0

    :cond_b8
    iget v1, v0, Lcom/alipay/sdk/app/j;->h:I

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c2
    return-object v0

    :catch_c3
    move-exception v0

    :try_start_c4
    invoke-virtual {v7}, Lcom/alipay/sdk/i/a;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_c8
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_da

    goto :goto_6e

    :catch_c8
    move-exception v0

    :try_start_c9
    const-string v2, "biz"

    const-string v3, "H5PayDataAnalysisError"

    invoke-static {v2, v3, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_da

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    move-object v0, v1

    goto :goto_ae

    :catchall_d5
    move-exception v0

    :try_start_d6
    invoke-virtual {v7}, Lcom/alipay/sdk/i/a;->close()V

    throw v0
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_da} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_da} :catch_c8
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    throw v0

    :cond_df
    :try_start_df
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    :goto_e2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_106

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    iget-object v0, v0, Lcom/alipay/sdk/g/b;->a:Lcom/alipay/sdk/g/a;

    sget-object v3, Lcom/alipay/sdk/g/a;->b:Lcom/alipay/sdk/g/a;

    if-ne v0, v3, :cond_102

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/b;

    invoke-direct {p0, v0}, Lcom/alipay/sdk/app/PayTask;->a(Lcom/alipay/sdk/g/b;)Ljava/lang/String;
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_fd} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_df .. :try_end_fd} :catch_c8
    .catchall {:try_start_df .. :try_end_fd} :catchall_da

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    goto :goto_c2

    :cond_102
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e2

    :cond_106
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    move-object v0, v1

    goto :goto_ae
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->a()V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/PayTask;)V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    return-void
.end method

.method private static varargs a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, ""

    array-length v4, p5

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_5a

    aget-object v5, p5, v3

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz p1, :cond_44

    move v0, v2

    :goto_24
    return v0

    :cond_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_29
    if-eqz p0, :cond_46

    const-string v1, "&"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    :goto_44
    const/4 v0, 0x1

    goto :goto_24

    :cond_46
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_5a
    move-object v0, v1

    goto :goto_1b
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/PayTask;->c:Lcom/alipay/sdk/k/a;

    :cond_c
    return-void
.end method


# virtual methods
.method public declared-synchronized fetchOrderInfoFromH5PayUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_315

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(http|https)://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/h/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    const-string v2, "sc"

    const-string v3, "h5tonative"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a1} :catch_314
    .catchall {:try_start_1 .. :try_end_a1} :catchall_35f

    move-result-object v0

    :goto_a2
    monitor-exit p0

    return-object v0

    :cond_a4
    :try_start_a4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13d

    :cond_d2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(http|https)://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13d

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "req_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "<request_token>"

    const-string v2, "</request_token>"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_input_charset=\"utf-8\"&ordertoken=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&pay_channel_id=\"alipay_sdk\"&bizcontext=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/h/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    const-string v2, "sc"

    const-string v3, "h5tonative"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a2

    :cond_13d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    :cond_16b
    const-string v0, "alipay.wap.create.direct.pay.by.user"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(http|https)://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_197
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_197} :catch_314
    .catchall {:try_start_a4 .. :try_end_197} :catchall_35f

    move-result v0

    if-nez v0, :cond_1ce

    :try_start_19a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bizcontext"

    new-instance v2, Lcom/alipay/sdk/h/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    const-string v3, "sc"

    const-string v4, "h5tonative"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new_external_info=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_19a .. :try_end_1ca} :catch_1cd
    .catchall {:try_start_19a .. :try_end_1ca} :catchall_35f

    move-result-object v0

    goto/16 :goto_a2

    :catch_1cd
    move-exception v0

    :cond_1ce
    :try_start_1ce
    const-string v0, "^(http|https)://(maliprod\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mali\\.alipay\\.com\\/w\\/trade_pay\\.do.?|mclient\\.alipay\\.com\\/w\\/trade_pay\\.do.?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_319

    const-string v0, "?"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_319

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "trade_no"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "trade_no"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "alipay_trade_no"

    aput-object v8, v5, v7

    invoke-static/range {v0 .. v5}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_319

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "pay_phase_id"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "payPhaseId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "pay_phase_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "out_relation_id"

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v0, "&biz_sub_type=\"TRADE\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&biz_type=\"trade\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app_name"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28a

    const-string v1, "cid"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28a

    const-string v0, "ali1688"

    :cond_24d
    :goto_24d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&app_name=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const/4 v1, 0x1

    const-string v2, "extern_token"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "extern_token"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "cid"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "sid"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "s_id"

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2af

    const-string v0, ""

    goto/16 :goto_a2

    :cond_28a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24d

    const-string v1, "sid"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2ac

    const-string v1, "s_id"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24d

    :cond_2ac
    const-string v0, "tb"

    goto :goto_24d

    :cond_2af
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "appenv"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "appenv"

    aput-object v7, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/alipay/sdk/app/PayTask;->a(ZZLjava/lang/String;Ljava/lang/StringBuilder;Ljava/util/Map;[Ljava/lang/String;)Z

    const-string v0, "&pay_channel_id=\"alipay_sdk\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/alipay/sdk/app/PayTask$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;B)V

    const-string v0, "return_url"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    const-string v0, "pay_order_id"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&bizcontext=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Lcom/alipay/sdk/h/a;

    iget-object v3, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    const-string v3, "sc"

    const-string v4, "h5tonative"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_312
    .catch Ljava/lang/Throwable; {:try_start_1ce .. :try_end_312} :catch_314
    .catchall {:try_start_1ce .. :try_end_312} :catchall_35f

    goto/16 :goto_a2

    :catch_314
    move-exception v0

    :cond_315
    :try_start_315
    const-string v0, ""
    :try_end_317
    .catchall {:try_start_315 .. :try_end_317} :catchall_35f

    goto/16 :goto_a2

    :cond_319
    :try_start_319
    const-string v0, "mclient.alipay.com/cashier/mobilepay.htm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32f

    invoke-static {}, Lcom/alipay/sdk/app/a;->a()Z

    move-result v0

    if-eqz v0, :cond_315

    const-string v0, "mobileclientgw.alipaydev.com/cashier/mobilepay.htm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_315

    :cond_32f
    new-instance v0, Lcom/alipay/sdk/h/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    const-string v1, "sc"

    const-string v2, "h5tonative"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "url"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bizcontext"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "new_external_info==%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_35c
    .catch Ljava/lang/Throwable; {:try_start_319 .. :try_end_35c} :catch_314
    .catchall {:try_start_319 .. :try_end_35c} :catchall_35f

    move-result-object v0

    goto/16 :goto_a2

    :catchall_35f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchTradeToken()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_trade_token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/j/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "15.3.6"

    return-object v0
.end method

.method public declared-synchronized h5Pay(Ljava/lang/String;Z)Lcom/alipay/sdk/j/a;
    .registers 12

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v2, Lcom/alipay/sdk/j/a;

    invoke-direct {v2}, Lcom/alipay/sdk/j/a;-><init>()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_141

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, v1

    :goto_1a
    if-ge v0, v4, :cond_55

    aget-object v5, v1, v0

    const-string v6, "={"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "={"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v8

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_55
    const-string v0, "resultStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "resultStatus"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->b(Ljava/lang/String;)V

    :cond_68
    const-string v0, "callBackUrl"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "callBackUrl"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->a(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7b} :catch_15b
    .catchall {:try_start_7 .. :try_end_7b} :catchall_141

    :cond_7b
    :goto_7b
    move-object v0, v2

    :goto_7c
    monitor-exit p0

    return-object v0

    :cond_7e
    :try_start_7e
    const-string v0, "result"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_83} :catch_15b
    .catchall {:try_start_7e .. :try_end_83} :catchall_141

    move-result v0

    if-eqz v0, :cond_7b

    :try_start_86
    const-string v0, "result"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xf

    if-le v1, v3, :cond_144

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/sdk/app/PayTask$a;

    if-eqz v1, :cond_c8

    iget-object v0, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b4

    iget-object v0, v1, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->a(Ljava/lang/String;)V

    :goto_ad
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_7c

    :cond_b4
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;

    const-string v3, "$OrderId$"

    iget-object v1, v1, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->a(Ljava/lang/String;)V

    goto :goto_ad

    :catch_c6
    move-exception v0

    goto :goto_7b

    :cond_c8
    const-string v1, "&callBackUrl=\""

    const-string v3, "\""

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v1, "&call_back_url=\""

    const-string v3, "\""

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v1, "&return_url=\""

    const-string v3, "\""

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v1, "&return_url="

    const-string v3, "&"

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_114

    const-string v1, "&callBackUrl="

    const-string v3, "&"

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15e

    const-string v3, "call_back_url"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15e

    const-string v1, "call_back_url=\""

    const-string v3, "\""

    invoke-static {v1, v3, v0}, Lcom/alipay/sdk/j/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13c

    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;

    :cond_13c
    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->a(Ljava/lang/String;)V
    :try_end_13f
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_13f} :catch_c6
    .catchall {:try_start_86 .. :try_end_13f} :catchall_141

    goto/16 :goto_7b

    :catchall_141
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_144
    :try_start_144
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/app/PayTask$a;

    if-eqz v0, :cond_7b

    iget-object v0, v0, Lcom/alipay/sdk/app/PayTask$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/j/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_144 .. :try_end_158} :catch_c6
    .catchall {:try_start_144 .. :try_end_158} :catchall_141

    move-object v0, v2

    goto/16 :goto_7c

    :catch_15b
    move-exception v0

    goto/16 :goto_7b

    :cond_15e
    move-object v0, v1

    goto :goto_130
.end method

.method public declared-synchronized pay(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    const/4 v3, 0x0

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p2, :cond_8

    :try_start_5
    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->a()V

    :cond_8
    const-string v1, "service=alipay.acquire.mr.ord.createandpay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alipay/sdk/b/a;->c:Z

    :cond_13
    sget-boolean v1, Lcom/alipay/sdk/b/a;->c:Z

    if-eqz v1, :cond_2b

    const-string v1, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9e

    const-string v1, "https://wappaygw.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x35

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_159

    move-result-object p1

    :cond_2b
    :goto_2b
    :try_start_2b
    new-instance v1, Lcom/alipay/sdk/h/a;

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/alipay/sdk/h/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/alipay/sdk/h/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "paymethod=\"expressGateway\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b4

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/sdk/j/k;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b4

    new-instance v4, Lcom/alipay/sdk/j/e;

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    new-instance v5, Lcom/alipay/sdk/app/h;

    invoke-direct {v5, p0}, Lcom/alipay/sdk/app/h;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    invoke-direct {v4, v1, v5}, Lcom/alipay/sdk/j/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/j/e$a;)V

    invoke-virtual {v4, v2}, Lcom/alipay/sdk/j/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    const-string v4, "failed"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v1

    :cond_6b
    :goto_6b
    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_70} :catch_139
    .catchall {:try_start_2b .. :try_end_70} :catchall_15c

    move-result-object v5

    :try_start_71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b9

    :cond_77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_82

    const-string v2, "pref_trade_token"

    invoke-static {v5, v2, v0}, Lcom/alipay/sdk/j/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_82} :catch_12f
    .catchall {:try_start_71 .. :try_end_82} :catchall_15c

    :cond_82
    :goto_82
    :try_start_82
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_82 .. :try_end_9b} :catchall_159

    move-object v0, v1

    :goto_9c
    monitor-exit p0

    return-object v0

    :cond_9e
    :try_start_9e
    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "https://mclient.alipay.com/home/exterfaceAssign.htm?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x34

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_b1
    .catchall {:try_start_9e .. :try_end_b1} :catchall_159

    move-result-object p1

    goto/16 :goto_2b

    :cond_b4
    :try_start_b4
    invoke-direct {p0, v2}, Lcom/alipay/sdk/app/PayTask;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b7} :catch_139
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_15c

    move-result-object v1

    goto :goto_6b

    :cond_b9
    :try_start_b9
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v4, v3

    :goto_c0
    array-length v2, v6

    if-ge v4, v2, :cond_77

    aget-object v2, v6, v4

    const-string v7, "result={"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_115

    aget-object v2, v6, v4

    const-string v7, "}"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_115

    aget-object v2, v6, v4

    const/16 v7, 0x8

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v2, v3

    :goto_ee
    array-length v8, v7

    if-ge v2, v8, :cond_115

    aget-object v8, v7, v2

    const-string v9, "trade_token=\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_119

    aget-object v8, v7, v2

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_119

    aget-object v0, v7, v2

    const/16 v8, 0xd

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_115
    :goto_115
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_c0

    :cond_119
    aget-object v8, v7, v2

    const-string v9, "trade_token="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12c

    aget-object v0, v7, v2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_12a} :catch_12f
    .catchall {:try_start_b9 .. :try_end_12a} :catchall_15c

    move-result-object v0

    goto :goto_115

    :cond_12c
    add-int/lit8 v2, v2, 0x1

    goto :goto_ee

    :catch_12f
    move-exception v0

    :try_start_130
    const-string v2, "biz"

    const-string v3, "SaveTradeTokenError"

    invoke-static {v2, v3, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_137} :catch_139
    .catchall {:try_start_130 .. :try_end_137} :catchall_15c

    goto/16 :goto_82

    :catch_139
    move-exception v0

    :try_start_13a
    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_15c

    move-result-object v0

    :try_start_13e
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_157
    .catchall {:try_start_13e .. :try_end_157} :catchall_159

    goto/16 :goto_9c

    :catchall_159
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_15c
    move-exception v0

    :try_start_15d
    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/sdk/c/a;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/alipay/sdk/app/PayTask;->b()V

    iget-object v1, p0, Lcom/alipay/sdk/app/PayTask;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alipay/sdk/app/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    throw v0
    :try_end_177
    .catchall {:try_start_15d .. :try_end_177} :catchall_159
.end method

.method public declared-synchronized payV2(Ljava/lang/String;Z)Ljava/util/Map;
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
    invoke-virtual {p0, p1, p2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

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
