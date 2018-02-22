.class Lsdk/pay/PayWebViewActivity$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/PayWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/PayWebViewActivity;


# direct methods
.method private constructor <init>(Lsdk/pay/PayWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/PayWebViewActivity$a;->a:Lsdk/pay/PayWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsdk/pay/PayWebViewActivity;Lsdk/pay/PayWebViewActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lsdk/pay/PayWebViewActivity$a;-><init>(Lsdk/pay/PayWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    const-string v1, "myun.tenpay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lsdk/pay/PayWebViewActivity$a;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v2, p0, Lsdk/pay/PayWebViewActivity$a;->a:Lsdk/pay/PayWebViewActivity;

    invoke-static {v1, p2, v2}, Lsdk/pay/PayWebViewActivity;->a(Lsdk/pay/PayWebViewActivity;Ljava/lang/String;Lsdk/pay/a/b$a;)V

    :goto_26
    return v0

    :cond_27
    const-string v1, "weixin"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lsdk/pay/PayWebViewActivity$a;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v2, p0, Lsdk/pay/PayWebViewActivity$a;->a:Lsdk/pay/PayWebViewActivity;

    invoke-static {v1, p2, v2}, Lsdk/pay/d/d;->a(Landroid/content/Context;Ljava/lang/String;Lsdk/pay/a/b$a;)V

    goto :goto_26

    :cond_37
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_26
.end method
