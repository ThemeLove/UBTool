.class public Lcom/mchsdk/paysdk/webview/MCPayWebView;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/webview/MCPayWebView$b;,
        Lcom/mchsdk/paysdk/webview/MCPayWebView$a;
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->c:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/webview/MCPayWebView$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView$2;-><init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/webview/MCPayWebView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "wv_mch_pay"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/mchsdk/paysdk/webview/MCPayWebView$a;

    invoke-direct {v1, p0, p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView$a;-><init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;Landroid/content/Context;)V

    const-string v2, "zfbPay"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/mchsdk/paysdk/webview/MCPayWebView$b;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView$b;-><init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    const-string v1, "http://tui.vlcms.com/server.php/Alipay/index"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mchsdk/paysdk/webview/MCPayWebView$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView$1;-><init>(Lcom/mchsdk/paysdk/webview/MCPayWebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_61
    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/webview/MCPayWebView;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "mch_webview_top"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->d:Z

    if-eqz v1, :cond_3a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_14
    const-string v0, "tv_mch_header_title"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u652f\u4ed8\u5b9d\u4ed8\u6b3e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3a
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_14
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "webview_mch_zfbpay"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->setContentView(I)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zfbpay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isshowtop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->d:Z

    const-string v0, "MCPayWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/webview/MCPayWebView;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->b()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/webview/MCPayWebView;->a()V

    return-void
.end method
