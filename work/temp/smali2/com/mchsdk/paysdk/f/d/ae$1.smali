.class Lcom/mchsdk/paysdk/f/d/ae$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/ae;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/ae;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ZFBOrderInfoRequest"

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

    const-string v0, "ZFBOrderInfoRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const/16 v1, 0x8

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v8, 0x8

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZFBOrderInfoRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/mchsdk/paysdk/e/u;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/u;-><init>()V

    :try_start_23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const/16 v1, 0x8

    const-string v3, "return_msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V

    :goto_43
    return-void

    :cond_44
    const-string v0, "orderInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "md5_sign"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "order_sign"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mchsdk/paysdk/e/u;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/mchsdk/paysdk/e/u;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/u;->b(Ljava/lang/String;)V

    const-string v5, "out_trade_no"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/u;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mchsdk/paysdk/utils/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ZFBOrderInfoRequest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tempmd5 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ?= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/u;->b(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    const-string v0, "UTF-8"

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/u;->c(Ljava/lang/String;)V

    :cond_c6
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const/4 v2, 0x7

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V
    :try_end_cc
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_cc} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_23 .. :try_end_cc} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_cc} :catch_105

    goto/16 :goto_43

    :catch_ce
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-static {v1, v8, v2}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V

    const-string v1, "ZFBOrderInfoRequest"

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

    goto/16 :goto_43

    :cond_f0
    :try_start_f0
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const/16 v1, 0x8

    const-string v2, "\u8ba2\u5355\u9a8c\u8bc1\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_f0 .. :try_end_f9} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f0 .. :try_end_f9} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f9} :catch_105

    goto/16 :goto_43

    :catch_fb
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    const-string v1, "\u652f\u4ed8\u5b9d\u9a8c\u8bc1\u5f02\u5e38"

    invoke-static {v0, v8, v1}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V

    goto/16 :goto_43

    :catch_105
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ae$1;->a:Lcom/mchsdk/paysdk/f/d/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5668\u5f02\u5e38\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v8, v0}, Lcom/mchsdk/paysdk/f/d/ae;->a(Lcom/mchsdk/paysdk/f/d/ae;ILjava/lang/Object;)V

    goto/16 :goto_43
.end method
