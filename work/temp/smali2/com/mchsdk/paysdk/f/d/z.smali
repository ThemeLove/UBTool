.class public Lcom/mchsdk/paysdk/f/d/z;
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

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/d/z;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/z;->b:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method private a(ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x26

    if-ne p1, v1, :cond_17

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_d
    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/z;->b:Landroid/os/Handler;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/z;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void

    :cond_17
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_d
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/z;ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/f/d/z;->a(ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return v0

    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_f

    move-result v0

    goto :goto_7

    :catch_d
    move-exception v1

    goto :goto_7

    :catch_f
    move-exception v1

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_18

    :cond_8
    const-string v0, "UserInfoRequest"

    const-string v1, "fun#post url is null add params is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x26

    const/4 v1, 0x0

    const-string v2, "\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {p0, v0, v1, v2}, Lcom/mchsdk/paysdk/f/d/z;->a(ILcom/mchsdk/paysdk/e/d;Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/z;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/d/z$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/d/z$1;-><init>(Lcom/mchsdk/paysdk/f/d/z;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_17
.end method
