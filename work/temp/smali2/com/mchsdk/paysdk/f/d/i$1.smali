.class Lcom/mchsdk/paysdk/f/d/i$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/i;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mchsdk/paysdk/f/d/i;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    iput-object p2, p0, Lcom/mchsdk/paysdk/f/d/i$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mchsdk/paysdk/f/d/i$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mchsdk/paysdk/f/d/i$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "JBYPayRequest"

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

    const-string v0, "JBYPayRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const/16 v1, 0x17

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x17

    :try_start_2
    new-instance v1, Ljava/lang/String;

    iget-object v0, p1, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "JBYPayRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSuccess: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "JBYPayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess retrn_msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "return_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "return_msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string v1, "out_trade_no"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6e} :catch_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_6e} :catch_db
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6e} :catch_fc

    :try_start_6e
    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_a1
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_75} :catch_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6e .. :try_end_75} :catch_db

    move-result-object v0

    :goto_76
    :try_start_76
    new-instance v3, Lcom/mchsdk/paysdk/e/j;

    invoke-direct {v3}, Lcom/mchsdk/paysdk/e/j;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mchsdk/paysdk/e/j;->e(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/f/d/i$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mchsdk/paysdk/e/j;->b(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/f/d/i$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mchsdk/paysdk/e/j;->c(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/e/j;->a(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/j;->f(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/i$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/j;->d(Ljava/lang/String;)Lcom/mchsdk/paysdk/e/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const/16 v2, 0x43

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V

    :cond_a0
    :goto_a0
    return-void

    :catch_a1
    move-exception v3

    const-string v3, "message"

    const-string v4, "\u6dfb\u52a0\u5e73\u53f0\u5e01\uff0c\u53c2\u6570\u8bbe\u7f6e"

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_a9} :catch_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_76 .. :try_end_a9} :catch_db
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a9} :catch_fc

    goto :goto_76

    :catch_aa
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const-string v2, "\u89e3\u6790\u53c2\u6570\u5f02\u5e38"

    invoke-static {v1, v5, v2}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V

    const-string v1, "JBYPayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post JSONException:\u89e3\u6790\u53c2\u6570\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :cond_cb
    :try_start_cb
    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const/16 v1, 0x17

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_cb .. :try_end_da} :catch_aa
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_cb .. :try_end_da} :catch_db
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_da} :catch_fc

    goto :goto_a0

    :catch_db
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-static {v1, v5, v2}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V

    const-string v1, "JBYPayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post UnsupportedEncodingException:\u670d\u52a1\u5668\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a0

    :catch_fc
    move-exception v0

    const-string v1, "JBYPayRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post Exception:\u5f02\u5e38"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/i$1;->d:Lcom/mchsdk/paysdk/f/d/i;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v5, v1}, Lcom/mchsdk/paysdk/f/d/i;->a(Lcom/mchsdk/paysdk/f/d/i;ILjava/lang/Object;)V

    goto :goto_a0
.end method
