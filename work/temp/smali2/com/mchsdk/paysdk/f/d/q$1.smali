.class Lcom/mchsdk/paysdk/f/d/q$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/q;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/q;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/q;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "RegisterPhoneRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    const/4 v1, 0x4

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/q;->a(Lcom/mchsdk/paysdk/f/d/q;ILjava/lang/Object;)V

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

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mchsdk/paysdk/e/s;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/e/s;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/d/q;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/e/s;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/d/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/e/s;->b(Ljava/lang/String;)V

    const-string v1, "\u6ce8\u518c\u5931\u8d25"

    const-string v1, ""

    :try_start_1b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/e/s;->c(Ljava/lang/String;)V

    const-string v3, "return_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RegisterPhoneRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_47} :catch_59
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_47} :catch_5f

    :goto_47
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/e/s;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/q;->a(Lcom/mchsdk/paysdk/f/d/q;ILjava/lang/Object;)V

    :goto_58
    return-void

    :catch_59
    move-exception v0

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const-string v0, "0"

    goto :goto_47

    :catch_5f
    move-exception v0

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    const-string v0, "0"

    goto :goto_47

    :cond_65
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/q$1;->a:Lcom/mchsdk/paysdk/f/d/q;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/q;->a(Lcom/mchsdk/paysdk/f/d/q;ILjava/lang/Object;)V

    goto :goto_58
.end method
