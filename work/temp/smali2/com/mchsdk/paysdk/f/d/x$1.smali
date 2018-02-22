.class Lcom/mchsdk/paysdk/f/d/x$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/x;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/x;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/x;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/x$1;->a:Lcom/mchsdk/paysdk/f/d/x;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UserBindPhoneRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/x$1;->a:Lcom/mchsdk/paysdk/f/d/x;

    const/16 v1, 0x34

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/x;->a(Lcom/mchsdk/paysdk/f/d/x;ILjava/lang/String;)V

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

    const-string v1, ""

    const-string v1, ""

    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "return_msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UserBindPhoneRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_31} :catch_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_49

    :goto_31
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/x$1;->a:Lcom/mchsdk/paysdk/f/d/x;

    const/16 v1, 0x33

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/x;->a(Lcom/mchsdk/paysdk/f/d/x;ILjava/lang/String;)V

    :goto_42
    return-void

    :catch_43
    move-exception v0

    const-string v1, "-1"

    const-string v0, "\u53c2\u6570\u5f02\u5e38"

    goto :goto_31

    :catch_49
    move-exception v0

    const-string v1, "-1"

    const-string v0, "\u53c2\u6570\u5f02\u5e38"

    goto :goto_31

    :cond_4f
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/x$1;->a:Lcom/mchsdk/paysdk/f/d/x;

    const/16 v2, 0x34

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/x;->a(Lcom/mchsdk/paysdk/f/d/x;ILjava/lang/String;)V

    goto :goto_42
.end method
