.class Lcom/mchsdk/paysdk/f/d/h$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/h;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/h;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/h;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 7

    const-string v0, "GameRecordListRequest"

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

    const-string v0, "GameRecordListRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const/16 v1, 0x42

    const/4 v2, 0x0

    const-string v3, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    const/16 v10, 0x42

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mchsdk/paysdk/e/h;->a()Lcom/mchsdk/paysdk/e/h;

    move-result-object v1

    const-string v2, ""

    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const/16 v1, 0x42

    const/4 v2, 0x0

    const-string v3, "\u6ca1\u6709\u8bb0\u5f55"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

    :goto_36
    return-void

    :cond_37
    const-string v0, "list"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_3e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8d

    new-instance v3, Lcom/mchsdk/paysdk/e/h;

    invoke-direct {v3}, Lcom/mchsdk/paysdk/e/h;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "pay_time"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "pay_amount"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pay_way"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "pay_status"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "props_name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mchsdk/paysdk/e/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/mchsdk/paysdk/e/h;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/mchsdk/paysdk/e/h;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/mchsdk/paysdk/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/mchsdk/paysdk/e/h;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/h;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_8d
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const/16 v2, 0x41

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_96} :catch_97
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_96} :catch_c5

    goto :goto_36

    :catch_97
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v1, v10, v11, v2}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

    const-string v1, "GameRecordListRequest"

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

    goto/16 :goto_36

    :cond_b9
    :try_start_b9
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const/16 v1, 0x42

    const/4 v2, 0x0

    const-string v3, "\u670d\u52a1\u5668\u54cd\u5e94\u5931\u8d25"

    invoke-static {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_b9 .. :try_end_c3} :catch_97
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c3} :catch_c5

    goto/16 :goto_36

    :catch_c5
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/h$1;->a:Lcom/mchsdk/paysdk/f/d/h;

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v1, v10, v11, v2}, Lcom/mchsdk/paysdk/f/d/h;->a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

    const-string v1, "GameRecordListRequest"

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

    goto/16 :goto_36
.end method
