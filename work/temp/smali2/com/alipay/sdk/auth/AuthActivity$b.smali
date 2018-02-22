.class final Lcom/alipay/sdk/auth/AuthActivity$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/auth/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/AuthActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/auth/AuthActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/sdk/auth/AuthActivity$b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->g(Lcom/alipay/sdk/auth/AuthActivity;)V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/auth/AuthActivity;->e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->d(Lcom/alipay/sdk/auth/AuthActivity;)V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/auth/AuthActivity;->e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;)Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v0}, Lcom/alipay/sdk/auth/AuthActivity;->b(Lcom/alipay/sdk/auth/AuthActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    new-instance v1, Lcom/alipay/sdk/auth/e;

    invoke-direct {v1, p0, p2}, Lcom/alipay/sdk/auth/e;-><init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alipays://platformapi/startApp?"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent://platformapi/startapp?"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1}, Lcom/alipay/sdk/j/k;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/k$a;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/alipay/sdk/j/k$a;->a()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2f
    :goto_2f
    return v0

    :cond_30
    const-string v1, "intent://platformapi/startapp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "intent://platformapi/startapp?"

    const-string v2, "alipays://platformapi/startApp?"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_40
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-virtual {v2, v1}, Lcom/alipay/sdk/auth/AuthActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_50} :catch_51

    goto :goto_2f

    :catch_51
    move-exception v1

    goto :goto_2f

    :cond_53
    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {v1, p2}, Lcom/alipay/sdk/auth/AuthActivity;->a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_2f

    :cond_5f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2f
.end method
