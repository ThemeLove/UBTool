.class public Lcom/mchsdk/paysdk/f/d/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/lidroid/xutils/HttpUtils;

.field b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/d/n;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/n;->b:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/n;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/f/d/n;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/a;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_9
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_a5

    new-instance v5, Lcom/mchsdk/paysdk/e/a;

    invoke-direct {v5}, Lcom/mchsdk/paysdk/e/a;-><init>()V

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "pay_amount"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mchsdk/paysdk/e/a;->b(Ljava/lang/String;)V

    const-string v6, "create_time"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mchsdk/paysdk/e/a;->c(Ljava/lang/String;)V

    const-string v6, "pay_way"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "\u672a\u77e5"

    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    const-string v2, "\u5e73\u53f0\u5e01"

    :cond_4a
    :goto_4a
    invoke-virtual {v5, v2}, Lcom/mchsdk/paysdk/e/a;->a(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_11

    :cond_54
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    const-string v2, "\u652f\u4ed8\u5b9d"

    goto :goto_4a

    :cond_5f
    const-string v7, "2"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    const-string v2, "\u5fae\u4fe1(\u626b\u7801)"

    goto :goto_4a

    :cond_6a
    const-string v7, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    const-string v2, "\u5fae\u4fe1app"

    goto :goto_4a

    :cond_75
    const-string v7, "4"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    const-string v2, "\u5a01\u5bcc\u901a"

    goto :goto_4a

    :cond_80
    const-string v7, "5"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    const-string v2, "\u805a\u5b9d\u4e91"
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_8a} :catch_8b

    goto :goto_4a

    :catch_8b
    move-exception v0

    const-string v2, "PTBRecordListRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fun#getGamePackList  JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_a5
    move-object v1, v0

    goto/16 :goto_3
.end method

.method private a(ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x37

    if-ne v1, p1, :cond_17

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_d
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/n;->b:Landroid/os/Handler;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/n;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void

    :cond_17
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_d
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/n;ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/f/d/n;->a(ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_18

    :cond_8
    const-string v0, "PTBRecordListRequest"

    const-string v1, "fun#post url is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    const/4 v1, 0x0

    const-string v2, "\u53c2\u6570\u5f02\u5e38"

    invoke-direct {p0, v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/n;->a(ILcom/mchsdk/paysdk/e/b;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string v0, "PTBRecordListRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#post url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n;->a:Lcom/lidroid/xutils/HttpUtils;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/HttpUtils;->configCurrentHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/n;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/d/n$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/d/n$1;-><init>(Lcom/mchsdk/paysdk/f/d/n;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_17
.end method
