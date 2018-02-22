.class final Lcom/alipay/sdk/a/e;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/a/a;

.field final synthetic b:Lcom/alipay/sdk/a/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/a/c;Lcom/alipay/sdk/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/a/e;->b:Lcom/alipay/sdk/a/c;

    iput-object p2, p0, Lcom/alipay/sdk/a/e;->a:Lcom/alipay/sdk/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "toastCallBack"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_23

    :goto_c
    new-instance v1, Lcom/alipay/sdk/a/a;

    const-string v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/a/a;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/a/e;->a:Lcom/alipay/sdk/a/a;

    iget-object v2, v2, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/sdk/a/a;->e:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/sdk/a/e;->b:Lcom/alipay/sdk/a/c;

    iget-object v0, v0, Lcom/alipay/sdk/a/c;->a:Lcom/alipay/sdk/a/b;

    invoke-interface {v0, v1}, Lcom/alipay/sdk/a/b;->a(Lcom/alipay/sdk/a/a;)V

    return-void

    :catch_23
    move-exception v1

    goto :goto_c
.end method
