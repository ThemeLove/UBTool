.class final Lcom/alipay/sdk/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/sdk/c/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/c/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/c/b;->b:Lcom/alipay/sdk/c/a;

    iput-object p2, p0, Lcom/alipay/sdk/c/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    new-instance v0, Lcom/alipay/sdk/f/a/b;

    invoke-direct {v0}, Lcom/alipay/sdk/f/a/b;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/c/b;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1}, Lcom/alipay/sdk/j/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/f/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/sdk/f/b;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/alipay/sdk/c/b;->b:Lcom/alipay/sdk/c/a;

    iget-object v0, v0, Lcom/alipay/sdk/f/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_68

    move-result v2

    if-nez v2, :cond_41

    :try_start_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "st_sdk_config"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "timeout"

    const/16 v3, 0xdac

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/alipay/sdk/c/a;->a:I

    const-string v2, "tbreturl"

    const-string v3, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_41} :catch_6c

    :cond_41
    :goto_41
    :try_start_41
    iget-object v0, p0, Lcom/alipay/sdk/c/b;->b:Lcom/alipay/sdk/c/a;
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_43} :catch_68

    :try_start_43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "timeout"

    invoke-virtual {v0}, Lcom/alipay/sdk/c/a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "tbreturl"

    iget-object v0, v0, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/h/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_dynamic_config"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/alipay/sdk/j/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_67} :catch_6a
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_67} :catch_68

    :cond_67
    :goto_67
    return-void

    :catch_68
    move-exception v0

    goto :goto_67

    :catch_6a
    move-exception v0

    goto :goto_67

    :catch_6c
    move-exception v0

    goto :goto_41
.end method
