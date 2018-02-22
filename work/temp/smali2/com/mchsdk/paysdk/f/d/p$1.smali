.class Lcom/mchsdk/paysdk/f/d/p$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/p;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/p;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/p;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/p$1;->a:Lcom/mchsdk/paysdk/f/d/p;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "PayTypeRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/p$1;->a:Lcom/mchsdk/paysdk/f/d/p;

    const/16 v1, 0x51

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/p;->a(Lcom/mchsdk/paysdk/f/d/p;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 12
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

    move-result-object v6

    const-string v0, ""

    const-string v5, ""

    const-string v0, "PayTypeRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53ef\u9009\u652f\u4ed8\u65b9\u5f0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "0"

    const-string v3, "0"

    const-string v2, "0"

    const-string v1, "0"

    const-string v0, "0"

    :try_start_2a
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "status"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a7

    const-string v8, "zfb_game"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "wx_game"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "jby_game"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "hfb_game"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "jft_game"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_64} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_64} :catch_b4

    move-result-object v0

    :goto_65
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ba

    new-instance v5, Lcom/mchsdk/paysdk/e/g;

    invoke-direct {v5}, Lcom/mchsdk/paysdk/e/g;-><init>()V

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/mchsdk/paysdk/e/g;->a(Z)V

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v5, v3}, Lcom/mchsdk/paysdk/e/g;->b(Z)V

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Lcom/mchsdk/paysdk/e/g;->c(Z)V

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/mchsdk/paysdk/e/g;->d(Z)V

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mchsdk/paysdk/e/g;->e(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/p$1;->a:Lcom/mchsdk/paysdk/f/d/p;

    const/16 v1, 0x50

    invoke-static {v0, v1, v5}, Lcom/mchsdk/paysdk/f/d/p;->a(Lcom/mchsdk/paysdk/f/d/p;ILjava/lang/Object;)V

    :goto_a6
    return-void

    :cond_a7
    :try_start_a7
    const-string v5, "return_msg"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_a7 .. :try_end_ac} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ac} :catch_b4

    move-result-object v5

    goto :goto_65

    :catch_ae
    move-exception v5

    const-string v6, "-1"

    const-string v5, "\u53c2\u6570\u5f02\u5e38"

    goto :goto_65

    :catch_b4
    move-exception v5

    const-string v6, "-1"

    const-string v5, "\u53c2\u6570\u5f02\u5e38"

    goto :goto_65

    :cond_ba
    const-string v0, "PayTypeRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_da

    const-string v5, "\u670d\u52a1\u5668\u5f02\u5e38"

    :cond_da
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/p$1;->a:Lcom/mchsdk/paysdk/f/d/p;

    const/16 v1, 0x51

    invoke-static {v0, v1, v5}, Lcom/mchsdk/paysdk/f/d/p;->a(Lcom/mchsdk/paysdk/f/d/p;ILjava/lang/Object;)V

    goto :goto_a6
.end method
