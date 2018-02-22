.class Lcom/mchsdk/paysdk/f/d/t$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/t;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/t;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/t;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/t$1;->a:Lcom/mchsdk/paysdk/f/d/t;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ThirdLoginTypeRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/t$1;->a:Lcom/mchsdk/paysdk/f/d/t;

    const/16 v1, 0x54

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/t;->a(Lcom/mchsdk/paysdk/f/d/t;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 5
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

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "config"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_10} :catch_1f

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/t$1;->a:Lcom/mchsdk/paysdk/f/d/t;

    const/16 v2, 0x53

    invoke-static {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/t;->a(Lcom/mchsdk/paysdk/f/d/t;ILjava/lang/String;)V

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v0, ""

    goto :goto_11

    :cond_23
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/t$1;->a:Lcom/mchsdk/paysdk/f/d/t;

    const/16 v1, 0x54

    const-string v2, "\u672a\u5f00\u542f\u7b2c\u4e09\u65b9\u767b\u5f55"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/t;->a(Lcom/mchsdk/paysdk/f/d/t;ILjava/lang/String;)V

    goto :goto_1e
.end method
