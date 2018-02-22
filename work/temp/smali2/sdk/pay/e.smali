.class final Lsdk/pay/e;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/e$b;,
        Lsdk/pay/e$a;
    }
.end annotation


# instance fields
.field private a:Lsdk/pay/d/e;

.field private b:Lsdk/pay/e$a;

.field private c:Lsdk/pay/e$b;

.field private d:Lsdk/pay/d/h;

.field private e:Lsdk/pay/a/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsdk/pay/d/e;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lsdk/pay/e;->a:Lsdk/pay/d/e;

    invoke-direct {p0}, Lsdk/pay/e;->b()V

    invoke-direct {p0}, Lsdk/pay/e;->a()V

    return-void
.end method

.method static synthetic a(Lsdk/pay/e;)Lsdk/pay/d/h;
    .registers 2

    iget-object v0, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    return-object v0
.end method

.method private a()V
    .registers 2

    new-instance v0, Lsdk/pay/e$1;

    invoke-direct {v0, p0}, Lsdk/pay/e$1;-><init>(Lsdk/pay/e;)V

    iput-object v0, p0, Lsdk/pay/e;->e:Lsdk/pay/a/b$a;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "alipays://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "alipayqr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "intent://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "weixin://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "mqqapi:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method static synthetic a(Lsdk/pay/e;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lsdk/pay/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lsdk/pay/e;)Lsdk/pay/a/b$a;
    .registers 2

    iget-object v0, p0, Lsdk/pay/e;->e:Lsdk/pay/a/b$a;

    return-object v0
.end method

.method private b()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lsdk/pay/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3b

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :goto_26
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    new-instance v0, Lsdk/pay/e$a;

    invoke-direct {v0, p0, v5}, Lsdk/pay/e$a;-><init>(Lsdk/pay/e;Lsdk/pay/e$1;)V

    iput-object v0, p0, Lsdk/pay/e;->b:Lsdk/pay/e$a;

    new-instance v0, Lsdk/pay/e$b;

    invoke-direct {v0, p0, v5}, Lsdk/pay/e$b;-><init>(Lsdk/pay/e;Lsdk/pay/e$1;)V

    iput-object v0, p0, Lsdk/pay/e;->c:Lsdk/pay/e$b;

    return-void

    :cond_3b
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_26
.end method

.method static synthetic c(Lsdk/pay/e;)Lsdk/pay/d/e;
    .registers 2

    iget-object v0, p0, Lsdk/pay/e;->a:Lsdk/pay/d/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadUrl url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsdk/pay/e;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-direct {p0, p1}, Lsdk/pay/e;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    if-nez v1, :cond_40

    new-instance v1, Lsdk/pay/d/h;

    invoke-virtual {p0}, Lsdk/pay/e;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lsdk/pay/d/h;-><init>(Ljava/lang/String;ZLandroid/content/Context;)V

    iput-object v1, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    :goto_31
    if-eqz v0, :cond_4b

    iget-object v0, p0, Lsdk/pay/e;->c:Lsdk/pay/e$b;

    invoke-virtual {p0, v0}, Lsdk/pay/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lsdk/pay/e;->e:Lsdk/pay/a/b$a;

    iget-object v1, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    invoke-static {v0, v1}, Lsdk/pay/d/g;->a(Lsdk/pay/a/b$a;Lsdk/pay/a/b;)V

    :goto_3f
    return-void

    :cond_40
    iget-object v1, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    invoke-virtual {v1, p1}, Lsdk/pay/d/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/e;->d:Lsdk/pay/d/h;

    invoke-virtual {v1, p2}, Lsdk/pay/d/h;->a(Z)V

    goto :goto_31

    :cond_4b
    iget-object v0, p0, Lsdk/pay/e;->b:Lsdk/pay/e$a;

    invoke-virtual {p0, v0}, Lsdk/pay/e;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, p1}, Lsdk/pay/e;->loadUrl(Ljava/lang/String;)V

    goto :goto_3f
.end method
