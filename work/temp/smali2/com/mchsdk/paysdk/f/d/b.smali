.class public Lcom/mchsdk/paysdk/f/d/b;
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

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/d/b;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/d/b;->b:Landroid/os/Handler;

    :cond_e
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/b;->b:Landroid/os/Handler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/d/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/d/b;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/f/d/b;->a(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_17

    :cond_8
    const-string v0, "CertificateRequest"

    const-string v1, "fun#post url is null add params is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x59

    const-string v1, "url\u672a\u8bbe\u6216\u53c2\u6570\u4e3a\u7a7a"

    invoke-direct {p0, v0, v1}, Lcom/mchsdk/paysdk/f/d/b;->a(ILjava/lang/Object;)V

    :goto_16
    return-void

    :cond_17
    const-string v0, "CertificateRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/b;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/mchsdk/paysdk/utils/r;->a:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/HttpUtils;->configCookieStore(Lorg/apache/http/client/CookieStore;)Lcom/lidroid/xutils/HttpUtils;

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/d/b;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/d/b$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/d/b$1;-><init>(Lcom/mchsdk/paysdk/f/d/b;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_16
.end method
