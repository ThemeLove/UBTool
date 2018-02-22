.class public Lcom/mchsdk/paysdk/f/d/h;
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

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/d/h;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/h;->b:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method private a(ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x41

    if-ne v1, p1, :cond_17

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_d
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/h;->b:Landroid/os/Handler;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/h;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void

    :cond_17
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_d
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/h;ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/f/d/h;->a(ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

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
    const-string v0, "GameRecordListRequest"

    const-string v1, "fun#post url is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x38

    const/4 v1, 0x0

    const-string v2, "\u53c2\u6570\u5f02\u5e38"

    invoke-direct {p0, v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/h;->a(ILcom/mchsdk/paysdk/e/h;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    const-string v0, "GameRecordListRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h;->a:Lcom/lidroid/xutils/HttpUtils;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/HttpUtils;->configCurrentHttpCacheExpiry(J)Lcom/lidroid/xutils/HttpUtils;

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/h;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/d/h$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/d/h$1;-><init>(Lcom/mchsdk/paysdk/f/d/h;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_17
.end method
