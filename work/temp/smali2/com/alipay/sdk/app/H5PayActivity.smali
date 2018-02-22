.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v1, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method public finish()V
    .registers 1

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alipay/sdk/app/c;

    iget-boolean v0, v0, Lcom/alipay/sdk/app/c;->c:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/alipay/sdk/app/j;->d:Lcom/alipay/sdk/app/j;

    iget v0, v0, Lcom/alipay/sdk/app/j;->h:I

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(I)Lcom/alipay/sdk/app/j;

    move-result-object v0

    iget v1, v0, Lcom/alipay/sdk/app/j;->h:I

    iget-object v0, v0, Lcom/alipay/sdk/app/j;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/i;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_27
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-super {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_4b

    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/j/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    :goto_1e
    return-void

    :cond_1f
    const-string v2, "cookie"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_46

    move-result-object v0

    :try_start_25
    invoke-static {p0, v1, v0}, Lcom/alipay/sdk/j/k;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    new-instance v0, Lcom/alipay/sdk/app/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_39} :catch_3a

    goto :goto_1e

    :catch_3a
    move-exception v0

    const-string v1, "biz"

    const-string v2, "GetInstalledAppEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_1e

    :catch_46
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    goto :goto_1e

    :catch_4b
    move-exception v0

    goto :goto_4
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :try_start_18
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_2c

    :goto_1d
    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Landroid/webkit/WebView;

    :cond_1f
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Landroid/webkit/WebViewClient;

    check-cast v0, Lcom/alipay/sdk/app/c;

    iput-object v1, v0, Lcom/alipay/sdk/app/c;->b:Landroid/os/Handler;

    iput-object v1, v0, Lcom/alipay/sdk/app/c;->a:Landroid/app/Activity;

    :cond_2b
    return-void

    :catch_2c
    move-exception v0

    goto :goto_1d
.end method
