.class public Lcom/mchsdk/paysdk/f/e/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/lidroid/xutils/HttpUtils;

.field b:Landroid/os/Handler;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/f/e/b;->c:Z

    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/e/b;->a:Lcom/lidroid/xutils/HttpUtils;

    if-eqz p1, :cond_11

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/e/b;->b:Landroid/os/Handler;

    :cond_11
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/e/b;->b:Landroid/os/Handler;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/e/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/e/b;ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/f/e/b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/f/e/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/f/e/b;->c:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_10

    :cond_8
    const-string v0, "ThirdLoginRequest"

    const-string v1, "fun#post url is null add params is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    const-string v0, "ThirdLoginRequest"

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/f/e/b;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v2, Lcom/mchsdk/paysdk/f/e/b$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/f/e/b$1;-><init>(Lcom/mchsdk/paysdk/f/e/b;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_f
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/f/e/b;->c:Z

    return-void
.end method
