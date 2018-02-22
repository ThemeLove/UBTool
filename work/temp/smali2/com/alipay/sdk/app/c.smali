.class public final Lcom/alipay/sdk/app/c;
.super Landroid/webkit/WebViewClient;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/os/Handler;

.field c:Z

.field private d:Z

.field private e:Lcom/alipay/sdk/k/a;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/alipay/sdk/app/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/g;-><init>(Lcom/alipay/sdk/app/c;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/c;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/c;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/c;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->b()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/sdk/app/c;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/app/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/app/c;->a()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/alipay/sdk/app/c;->a()V

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    if-nez v0, :cond_14

    new-instance v0, Lcom/alipay/sdk/k/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, v1, v2}, Lcom/alipay/sdk/k/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/sdk/k/a;->b:Z

    :cond_14
    iget-object v0, p0, Lcom/alipay/sdk/app/c;->e:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->a()V

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/sdk/app/c;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/c;->c:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 7

    const-string v0, "net"

    const-string v1, "SSLError"

    const-string v2, "\u8bc1\u4e66\u9519\u8bef"

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/alipay/sdk/app/c;->d:Z

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/c;->d:Z

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/sdk/app/d;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/app/d;-><init>(Lcom/alipay/sdk/app/c;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_13
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/alipay/sdk/j/k;->a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
