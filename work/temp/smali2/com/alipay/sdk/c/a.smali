.class public final Lcom/alipay/sdk/c/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/c/a;


# instance fields
.field a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xdac

    iput v0, p0, Lcom/alipay/sdk/c/a;->a:I

    const-string v0, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    iput-object v0, p0, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static b()Lcom/alipay/sdk/c/a;
    .registers 4

    sget-object v0, Lcom/alipay/sdk/c/a;->c:Lcom/alipay/sdk/c/a;

    if-nez v0, :cond_3b

    new-instance v0, Lcom/alipay/sdk/c/a;

    invoke-direct {v0}, Lcom/alipay/sdk/c/a;-><init>()V

    sput-object v0, Lcom/alipay/sdk/c/a;->c:Lcom/alipay/sdk/c/a;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/sdk/h/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_dynamic_config"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/sdk/j/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    :try_start_1e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "timeout"

    const/16 v3, 0xdac

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/alipay/sdk/c/a;->a:I

    const-string v1, "tbreturl"

    const-string v3, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/sdk/c/a;->b:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3b} :catch_3e

    :cond_3b
    :goto_3b
    sget-object v0, Lcom/alipay/sdk/c/a;->c:Lcom/alipay/sdk/c/a;

    return-object v0

    :catch_3e
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget v0, p0, Lcom/alipay/sdk/c/a;->a:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/alipay/sdk/c/a;->a:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_f

    :cond_c
    const/16 v0, 0xdac

    :goto_e
    return v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicConfig::getJumpTimeout >"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/sdk/c/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alipay/sdk/c/a;->a:I

    goto :goto_e
.end method

.method public final a(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/c/b;

    invoke-direct {v1, p0, p1}, Lcom/alipay/sdk/c/b;-><init>(Lcom/alipay/sdk/c/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
