.class Lcom/mchsdk/paysdk/f/d/ac$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/ac;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/ac;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "VerifyPhoneCodeRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    const/16 v1, 0x32

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/ac;->a(Lcom/mchsdk/paysdk/f/d/ac;ILjava/lang/Object;)V

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

    const/16 v7, 0x32

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v7, v2}, Lcom/mchsdk/paysdk/f/d/ac;->a(Lcom/mchsdk/paysdk/f/d/ac;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    iget-object v0, v0, Lcom/mchsdk/paysdk/f/d/ac;->a:Lcom/lidroid/xutils/HttpUtils;

    invoke-virtual {v0}, Lcom/lidroid/xutils/HttpUtils;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/utils/r;->a:Lorg/apache/http/client/CookieStore;

    const-string v2, "\u8bbe\u7f6ecokisStore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/mchsdk/paysdk/utils/r;->a:Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_a5

    const/4 v0, 0x1

    :goto_2f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/a/p;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/p;-><init>()V

    :try_start_45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "return_msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VerifyPhoneCodeRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    const-string v1, "VerifyPhoneCodeRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/p;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    const/16 v2, 0x31

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/ac;->a(Lcom/mchsdk/paysdk/f/d/ac;ILjava/lang/Object;)V

    :goto_a4
    return-void

    :cond_a5
    const/4 v0, 0x0

    goto :goto_2f

    :cond_a7
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    const/16 v1, 0x32

    invoke-static {v0, v1, v3}, Lcom/mchsdk/paysdk/f/d/ac;->a(Lcom/mchsdk/paysdk/f/d/ac;ILjava/lang/Object;)V
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_ae} :catch_af

    goto :goto_a4

    :catch_af
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/ac$1;->a:Lcom/mchsdk/paysdk/f/d/ac;

    const-string v2, "\u89e3\u6790\u9a8c\u8bc1\u7801\u5f02\u5e38"

    invoke-static {v1, v7, v2}, Lcom/mchsdk/paysdk/f/d/ac;->a(Lcom/mchsdk/paysdk/f/d/ac;ILjava/lang/Object;)V

    const-string v1, "VerifyPhoneCodeRequest"

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

    goto :goto_a4
.end method
