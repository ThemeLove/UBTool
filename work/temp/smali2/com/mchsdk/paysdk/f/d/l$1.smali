.class Lcom/mchsdk/paysdk/f/d/l$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/f/d/l;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/d/l;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/d/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/l$1;->a:Lcom/mchsdk/paysdk/f/d/l;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "OffLineAnnounceRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OffLineAnnounceRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure:"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/l$1;->a:Lcom/mchsdk/paysdk/f/d/l;

    const/16 v1, 0x63

    const-string v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/l;->a(Lcom/mchsdk/paysdk/f/d/l;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x63

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/f;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/l$1;->a:Lcom/mchsdk/paysdk/f/d/l;

    const/16 v1, 0x62

    const-string v2, "\u5b58\u50a8\u7528\u6237\u4e0b\u7ebf\u6570\u636e\u6210\u529f"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/l;->a(Lcom/mchsdk/paysdk/f/d/l;ILjava/lang/Object;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/l$1;->a:Lcom/mchsdk/paysdk/f/d/l;

    const/16 v1, 0x63

    const-string v2, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/l;->a(Lcom/mchsdk/paysdk/f/d/l;ILjava/lang/Object;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_27} :catch_28

    goto :goto_1d

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/l$1;->a:Lcom/mchsdk/paysdk/f/d/l;

    const-string v1, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    invoke-static {v0, v3, v1}, Lcom/mchsdk/paysdk/f/d/l;->a(Lcom/mchsdk/paysdk/f/d/l;ILjava/lang/Object;)V

    goto :goto_1d
.end method
