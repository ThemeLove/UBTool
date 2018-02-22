.class Lcom/mchsdk/paysdk/f/d/ad$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/ad;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/ad;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "WFTOrderInfoRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFailure] ExceptionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WFTOrderInfoRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const/16 v1, 0x23

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v7, 0x23

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/e/t;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/t;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    iget-object v2, v2, Lcom/mchsdk/paysdk/f/d/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/t;->a(Ljava/lang/String;)V

    :try_start_12
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wxtype"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WFTOrderInfoRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wxType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string v0, "wx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->a(I)V

    const-string v0, "noncestr"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->e(Ljava/lang/String;)V

    const-string v0, "partnerid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->c(Ljava/lang/String;)V

    const-string v0, "prepayid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->d(Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->g(Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->f(Ljava/lang/String;)V

    const-string v0, "appid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->i(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const/16 v2, 0x22

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V

    :cond_95
    :goto_95
    return-void

    :cond_96
    const-string v0, "wft"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->a(I)V

    const-string v0, "game_pay_appid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->i(Ljava/lang/String;)V

    const-string v0, "token_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/t;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const/16 v2, 0x22

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_bb} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_bb} :catch_116

    goto :goto_95

    :catch_bc
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const-string v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v1, v7, v2}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V

    const-string v1, "WFTOrderInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_dd
    :try_start_dd
    const-string v0, "return_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFTOrderInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const/16 v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u670d\u52a1\u5668"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V
    :try_end_115
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_115} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_115} :catch_116

    goto :goto_95

    :catch_116
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ad$1;->a:Lcom/mchsdk/paysdk/f/d/ad;

    const-string v2, "\u5176\u5b83\u7a0b\u5e8f\u5f02\u5e38"

    invoke-static {v1, v7, v2}, Lcom/mchsdk/paysdk/f/d/ad;->a(Lcom/mchsdk/paysdk/f/d/ad;ILjava/lang/Object;)V

    const-string v1, "WFTOrderInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post JSONException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_95
.end method
