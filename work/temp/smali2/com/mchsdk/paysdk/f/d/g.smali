.class public Lcom/mchsdk/paysdk/f/d/g;
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

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/d/g;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/g;->b:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    :try_start_9
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-wide v0

    goto :goto_8

    :catch_e
    move-exception v2

    goto :goto_8
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/g;->b:Landroid/os/Handler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/g;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/g;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/f/d/g;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;"
        }
    .end annotation

    const-wide/16 v11, 0x0

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    new-instance v3, Lcom/mchsdk/paysdk/e/f;

    invoke-direct {v3}, Lcom/mchsdk/paysdk/e/f;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mchsdk/paysdk/e/f;->e(Ljava/lang/String;)V

    const-string v5, "giftbag_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mchsdk/paysdk/e/f;->b(Ljava/lang/String;)V

    const-string v5, "desribe"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mchsdk/paysdk/e/f;->d(Ljava/lang/String;)V

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mchsdk/paysdk/e/f;->a(Ljava/lang/String;)V

    const-string v5, "start_time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mchsdk/paysdk/f/d/g;->a(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "end_time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mchsdk/paysdk/f/d/g;->a(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "now_time"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mchsdk/paysdk/f/d/g;->a(Ljava/lang/String;)J

    move-result-wide v9

    sub-long v9, v7, v9

    cmp-long v4, v9, v11

    if-ltz v4, :cond_6f

    sub-long v4, v7, v5

    cmp-long v4, v4, v11

    if-gez v4, :cond_97

    :cond_6f
    const-string v4, "0"

    invoke-virtual {v3, v4}, Lcom/mchsdk/paysdk/e/f;->c(Ljava/lang/String;)V

    :goto_74
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "GamePacksListRequest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fun#getGamePackList  packInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/mchsdk/paysdk/e/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_12

    :cond_97
    const-wide/32 v4, 0x15180

    div-long v4, v9, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mchsdk/paysdk/e/f;->c(Ljava/lang/String;)V
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_ab} :catch_ac

    goto :goto_74

    :catch_ac
    move-exception v1

    goto/16 :goto_5
.end method

.method public a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_17

    :cond_8
    const-string v0, "GamePacksListRequest"

    const-string v1, "fun#post url is null add params is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x25

    const-string v1, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {p0, v0, v1}, Lcom/mchsdk/paysdk/f/d/g;->a(ILjava/lang/Object;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/g;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/d/g$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/d/g$1;-><init>(Lcom/mchsdk/paysdk/f/d/g;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_16
.end method
