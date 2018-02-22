.class Lcom/mchsdk/paysdk/f/d/k$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/k;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/k;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/k;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "LoginRequest"

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

    const-string v0, "LoginRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    const/4 v1, 0x2

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/k;->a(Lcom/mchsdk/paysdk/f/d/k;ILjava/lang/Object;)V

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

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/e/q;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/q;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    iget-object v2, v2, Lcom/mchsdk/paysdk/f/d/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/q;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    iget-object v2, v2, Lcom/mchsdk/paysdk/f/d/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/q;->c(Ljava/lang/String;)V

    :try_start_18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->d(Ljava/lang/String;)V

    const-string v0, "1"

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "return_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->e(Ljava/lang/String;)V

    const-string v0, "user_id"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->f(Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->g(Ljava/lang/String;)V

    const-string v0, "timeStamp"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->h(Ljava/lang/String;)V

    const-string v0, "token"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->i(Ljava/lang/String;)V

    const-string v0, "is_uc"

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/q;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/k;->a(Lcom/mchsdk/paysdk/f/d/k;ILjava/lang/Object;)V

    :goto_72
    return-void

    :cond_73
    const-string v0, "return_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/k;->a(Lcom/mchsdk/paysdk/f/d/k;ILjava/lang/Object;)V
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_7f} :catch_80
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_7f} :catch_89

    goto :goto_72

    :catch_80
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/k;->a(Lcom/mchsdk/paysdk/f/d/k;ILjava/lang/Object;)V

    goto :goto_72

    :catch_89
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/k$1;->a:Lcom/mchsdk/paysdk/f/d/k;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/k;->a(Lcom/mchsdk/paysdk/f/d/k;ILjava/lang/Object;)V

    goto :goto_72
.end method
