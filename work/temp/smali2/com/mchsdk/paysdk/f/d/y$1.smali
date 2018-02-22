.class Lcom/mchsdk/paysdk/f/d/y$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/y;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/y;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/y;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/y$1;->a:Lcom/mchsdk/paysdk/f/d/y;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/y$1;->a:Lcom/mchsdk/paysdk/f/d/y;

    const/16 v1, 0x53

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/y;->a(Lcom/mchsdk/paysdk/f/d/y;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDiscountRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/y$1;->a:Lcom/mchsdk/paysdk/f/d/y;

    const/16 v1, 0x53

    const-string v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/y;->a(Lcom/mchsdk/paysdk/f/d/y;ILjava/lang/Object;)V

    :goto_2b
    return-void

    :cond_2c
    new-instance v1, Lcom/mchsdk/paysdk/e/p;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/p;-><init>()V

    :try_start_31
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "discount_type"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/p;->a(I)V

    const-string v0, "discount"

    const-string v3, "10"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/p;->a(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4b} :catch_53

    :goto_4b
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/y$1;->a:Lcom/mchsdk/paysdk/f/d/y;

    const/16 v2, 0x52

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/y;->a(Lcom/mchsdk/paysdk/f/d/y;ILjava/lang/Object;)V

    goto :goto_2b

    :catch_53
    move-exception v0

    const-string v2, "UserDiscountRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method
