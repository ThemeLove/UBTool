.class Lcom/mchsdk/paysdk/f/d/z$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/z;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/z;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/z;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 7

    const-string v0, "UserInfoRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#onFailure error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserInfoRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const/16 v1, 0x26

    const/4 v2, 0x0

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

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

    const/4 v9, 0x0

    const/16 v8, 0x26

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json###"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/mchsdk/paysdk/e/d;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/e/d;-><init>()V

    :try_start_24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ec

    const-string v0, "game_name"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_173

    :cond_4f
    const-string v0, ""

    move-object v1, v0

    :goto_52
    const-string v0, "phone"

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6c

    const-string v4, "null"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    :cond_6c
    const-string v0, ""

    :cond_6e
    iget-object v4, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const-string v5, "bind_balance"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mchsdk/paysdk/f/d/z;->a(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const-string v6, "balance"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mchsdk/paysdk/f/d/z;->a(Ljava/lang/String;)F

    move-result v5

    const-string v6, "account"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->e(Ljava/lang/String;)V

    const-string v6, "nickname"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->f(Ljava/lang/String;)V

    const-string v6, "age_status"

    const-string v7, "0"

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->c(Ljava/lang/String;)V

    const-string v6, "real_name"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->b(Ljava/lang/String;)V

    const-string v6, "idcard"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->a(Ljava/lang/String;)V

    const-string v6, "register_type"

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/mchsdk/paysdk/e/d;->a(I)V

    invoke-virtual {v2, v5}, Lcom/mchsdk/paysdk/e/d;->a(F)V

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/e/d;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/mchsdk/paysdk/e/d;->b(F)V

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/e/d;->g(Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/e/d;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const/16 v1, 0x25

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

    :goto_eb
    return-void

    :cond_ec
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const/16 v1, 0x26

    const/4 v2, 0x0

    const-string v3, "\u7528\u6237\u4e0d\u5b58\u5728"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V
    :try_end_fe
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_fe} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_fe} :catch_151

    goto :goto_eb

    :catch_ff
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const-string v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v1, v8, v9, v2}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

    const-string v1, "UserInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#get json e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_eb

    :cond_120
    :try_start_120
    const-string v0, "return_msg"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserInfoRequest"

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

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_148

    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38"

    :cond_148
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V
    :try_end_150
    .catch Lorg/json/JSONException; {:try_start_120 .. :try_end_150} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_150} :catch_151

    goto :goto_eb

    :catch_151
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/z$1;->a:Lcom/mchsdk/paysdk/f/d/z;

    const-string v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v1, v8, v9, v2}, Lcom/mchsdk/paysdk/f/d/z;->a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

    const-string v1, "UserInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#get json e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_eb

    :cond_173
    move-object v1, v0

    goto/16 :goto_52
.end method
