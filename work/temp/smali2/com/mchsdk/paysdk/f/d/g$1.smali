.class Lcom/mchsdk/paysdk/f/d/g$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/g;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/g;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/g;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "GamePacksListRequest"

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

    const-string v0, "GamePacksListRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    const/16 v1, 0x25

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/g;->a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V

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

    const/16 v4, 0x25

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/e/m;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/m;-><init>()V

    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/f/d/g;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/m;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    const/16 v2, 0x24

    invoke-static {v0, v2, v1}, Lcom/mchsdk/paysdk/f/d/g;->a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V

    :goto_33
    return-void

    :cond_34
    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38"

    :cond_42
    const-string v1, "GamePacksListRequest"

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

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    const/16 v2, 0x25

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/g;->a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V
    :try_end_61
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_61} :catch_83

    goto :goto_33

    :catch_62
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v1, v4, v2}, Lcom/mchsdk/paysdk/f/d/g;->a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V

    const-string v1, "GamePacksListRequest"

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

    goto :goto_33

    :catch_83
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/g$1;->a:Lcom/mchsdk/paysdk/f/d/g;

    const/4 v1, 0x2

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/g;->a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V

    goto :goto_33
.end method
