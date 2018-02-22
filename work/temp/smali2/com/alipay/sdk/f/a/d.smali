.class public final Lcom/alipay/sdk/f/a/d;
.super Lcom/alipay/sdk/f/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lorg/json/JSONObject;
    .registers 3

    const-string v0, "cashier"

    const-string v1, "main"

    invoke-static {v0, v1}, Lcom/alipay/sdk/f/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
