.class Lcom/mchsdk/paysdk/f/a/a$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/f/a/a;
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
.field final synthetic a:Lcom/mchsdk/paysdk/f/a/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/f/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .registers 6

    const-string v0, "CheckRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/exception/HttpException;->getExceptionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CheckRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    const-string v1, "\u670d\u52a1\u5668\u5f00\u5c0f\u5dee"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/f/a/a;->a:Lcom/mchsdk/paysdk/f/d;

    invoke-static {v0}, Lcom/mchsdk/paysdk/f/e;->a(Lcom/mchsdk/paysdk/f/d;)I

    move-result v3

    invoke-static {p1}, Lcom/mchsdk/paysdk/f/e;->a(Lcom/lidroid/xutils/http/ResponseInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v2, ""

    :try_start_12
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "return_code"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "return_msg"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_27} :catch_2c

    move-result-object v0

    :goto_28
    packed-switch v3, :pswitch_data_b8

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    goto :goto_28

    :pswitch_32
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_42
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_5a
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_6a
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    const-string v1, "\u4e0d\u53ef\u4ee5\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :pswitch_74
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_84
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_9c
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    :cond_ac
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/a/a$1;->a:Lcom/mchsdk/paysdk/f/a/a;

    iget-object v0, v0, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    const-string v1, "\u4e0d\u53ef\u4ee5\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2b

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_32
        :pswitch_74
    .end packed-switch
.end method
