.class Lcom/mchsdk/paysdk/f/d/aa$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/aa;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/aa;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "UserPtbRemainRequest"

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

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/d/aa;->b:Landroid/os/Handler;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/d/aa;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
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

    const/16 v4, 0x19

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/e/r;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/r;-><init>()V

    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    const-string v3, "balance"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/f/d/aa;->a(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/r;->b(F)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    const-string v3, "bind_balance"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/f/d/aa;->a(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/r;->a(F)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/aa;->a(ILjava/lang/Object;)V

    :goto_43
    return-void

    :cond_44
    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserPtbRemainRequest"

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

    if-eqz v1, :cond_6a

    const-string v0, "\u6570\u636e\u5f02\u5e38"

    :cond_6a
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/aa;->a(ILjava/lang/Object;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_71} :catch_72

    goto :goto_43

    :catch_72
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/aa$1;->a:Lcom/mchsdk/paysdk/f/d/aa;

    const-string v2, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v1, v4, v2}, Lcom/mchsdk/paysdk/f/d/aa;->a(ILjava/lang/Object;)V

    const-string v1, "UserPtbRemainRequest"

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

    goto :goto_43
.end method
