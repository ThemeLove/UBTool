.class Lcom/mchsdk/paysdk/f/d/n$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/n;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/n;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/n;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 7

    const-string v0, "PTBRecordListRequest"

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

    const-string v0, "PTBRecordListRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    const/16 v1, 0x38

    const/4 v2, 0x0

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

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

    const/16 v7, 0x38

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/e/b;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/e/b;-><init>()V

    const-string v2, ""

    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/b;->b(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "total"

    const-string v3, "*"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    const/16 v2, 0x37

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    const/16 v1, 0x38

    const/4 v3, 0x0

    const-string v4, "return_msg"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_54} :catch_76

    goto :goto_43

    :catch_55
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v1, v7, v6, v2}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

    const-string v1, "PTBRecordListRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#post  JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :catch_76
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/n$1;->a:Lcom/mchsdk/paysdk/f/d/n;

    const/4 v2, 0x2

    const-string v3, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v1, v2, v6, v3}, Lcom/mchsdk/paysdk/f/d/n;->a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

    const-string v1, "PTBRecordListRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#\u6570\u636e\u89e3\u6790\u5f02\u5e38 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method
