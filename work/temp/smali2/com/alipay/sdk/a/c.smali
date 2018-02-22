.class public final Lcom/alipay/sdk/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/sdk/a/b;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/a/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/a/c;->a:Lcom/alipay/sdk/a/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/sdk/a/a;)V
    .registers 5

    iget-object v0, p1, Lcom/alipay/sdk/a/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    sget v1, Lcom/alipay/sdk/a/a$a;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/alipay/sdk/a/c;->a(Ljava/lang/String;I)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Lcom/alipay/sdk/a/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/a/d;-><init>(Lcom/alipay/sdk/a/c;Lcom/alipay/sdk/a/a;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_26

    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    :cond_26
    const/4 v0, 0x0

    goto :goto_20

    :cond_28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error"

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lcom/alipay/sdk/a/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/alipay/sdk/a/a;->e:Lorg/json/JSONObject;

    iput-object p1, v1, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/sdk/a/c;->a:Lcom/alipay/sdk/a/b;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/a/b;->a(Lcom/alipay/sdk/a/a;)V

    goto :goto_6
.end method
