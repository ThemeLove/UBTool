.class Lcom/mchsdk/paysdk/f/d/f$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/f;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/f;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/f;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ForgmentPasswordrequest"

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

    const-string v0, "ForgmentPasswordrequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#onFailure msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    const/16 v1, 0x21

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/f;->a(Lcom/mchsdk/paysdk/f/d/f;ILjava/lang/String;)V

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

    const/16 v4, 0x21

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    const/16 v1, 0x20

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/f;->a(Lcom/mchsdk/paysdk/f/d/f;ILjava/lang/String;)V

    :goto_22
    return-void

    :cond_23
    const-string v0, "return_msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ForgmentPasswordrequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v0, "\u53c2\u6570\u5f02\u5e38"

    :cond_49
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    const/16 v2, 0x21

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/f;->a(Lcom/mchsdk/paysdk/f/d/f;ILjava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_50} :catch_51
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_50} :catch_5a

    goto :goto_22

    :catch_51
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    const-string v1, "\u53c2\u6570\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/f;->a(Lcom/mchsdk/paysdk/f/d/f;ILjava/lang/String;)V

    goto :goto_22

    :catch_5a
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/f$1;->a:Lcom/mchsdk/paysdk/f/d/f;

    const-string v1, "\u53c2\u6570\u5f02\u5e38"

    invoke-static {v0, v4, v1}, Lcom/mchsdk/paysdk/f/d/f;->a(Lcom/mchsdk/paysdk/f/d/f;ILjava/lang/String;)V

    goto :goto_22
.end method
