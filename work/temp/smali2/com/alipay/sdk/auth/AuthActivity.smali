.class public Lcom/alipay/sdk/auth/AuthActivity;
.super Landroid/app/Activity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/auth/AuthActivity$a;,
        Lcom/alipay/sdk/auth/AuthActivity$b;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/sdk/k/a;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/alipay/sdk/auth/d;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/auth/d;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Lcom/alipay/sdk/a/a;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "clientId"

    iget-object v2, p1, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "func"

    iget-object v2, p1, Lcom/alipay/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "param"

    iget-object v2, p1, Lcom/alipay/sdk/a/a;->e:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "msgType"

    iget-object v2, p1, Lcom/alipay/sdk/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlipayJSBridge._invokeJS(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/auth/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/auth/c;-><init>(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/sdk/auth/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_40} :catch_41

    goto :goto_6

    :catch_41
    move-exception v0

    goto :goto_6
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v0, "SDKLite://h5quit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3b
    invoke-static {p0, p1}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_3e
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_7
.end method

.method static synthetic a(Lcom/alipay/sdk/auth/AuthActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;Ljava/lang/String;)V
    .registers 9

    const/4 v2, 0x0

    new-instance v3, Lcom/alipay/sdk/a/c;

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/sdk/auth/b;

    invoke-direct {v1, p0}, Lcom/alipay/sdk/auth/b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-direct {v3, v0, v1}, Lcom/alipay/sdk/a/c;-><init>(Landroid/content/Context;Lcom/alipay/sdk/a/b;)V

    :try_start_f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_5c

    move-result-object v1

    :try_start_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    const-string v0, "param"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v5, v0, Lorg/json/JSONObject;

    if-eqz v5, :cond_5f

    check-cast v0, Lorg/json/JSONObject;

    :goto_2d
    const-string v2, "func"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "bundleName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/sdk/a/a;

    const-string v6, "call"

    invoke-direct {v5, v6}, Lcom/alipay/sdk/a/a;-><init>(Ljava/lang/String;)V

    iput-object v4, v5, Lcom/alipay/sdk/a/a;->b:Ljava/lang/String;

    iput-object v2, v5, Lcom/alipay/sdk/a/a;->c:Ljava/lang/String;

    iput-object v0, v5, Lcom/alipay/sdk/a/a;->e:Lorg/json/JSONObject;

    iput-object v1, v5, Lcom/alipay/sdk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alipay/sdk/a/c;->a(Lcom/alipay/sdk/a/a;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4b} :catch_4c

    goto :goto_20

    :catch_4c
    move-exception v0

    move-object v0, v1

    :goto_4e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :try_start_54
    sget v1, Lcom/alipay/sdk/a/a$a;->d:I

    invoke-virtual {v3, v0, v1}, Lcom/alipay/sdk/a/c;->a(Ljava/lang/String;I)V
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_59} :catch_5a

    goto :goto_20

    :catch_5a
    move-exception v0

    goto :goto_20

    :catch_5c
    move-exception v0

    move-object v0, v2

    goto :goto_4e

    :cond_5f
    move-object v0, v2

    goto :goto_2d
.end method

.method static synthetic b(Lcom/alipay/sdk/auth/AuthActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    if-nez v0, :cond_d

    new-instance v0, Lcom/alipay/sdk/k/a;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-direct {v0, p0, v1}, Lcom/alipay/sdk/k/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    :cond_d
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->a()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    goto :goto_12
.end method

.method static synthetic e(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/sdk/auth/AuthActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a;->b()V

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->c:Lcom/alipay/sdk/k/a;

    return-void
.end method

.method static synthetic h(Lcom/alipay/sdk/auth/AuthActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->f:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?resultCode=150"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/sdk/auth/h;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    goto :goto_27
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_6
    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_14

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    goto :goto_13

    :cond_19
    :try_start_19
    const-string v1, "redirectUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->b:Ljava/lang/String;

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_31

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    goto :goto_13

    :catch_31
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->finish()V

    goto :goto_13

    :cond_36
    invoke-super {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->d:Landroid/os/Handler;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1, v2}, Lcom/alipay/sdk/auth/AuthActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const/high16 v3, 0x3f800000

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v3, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/sdk/auth/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/j/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMinimumFontSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    sget-object v2, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$b;

    invoke-direct {v2, p0, v4}, Lcom/alipay/sdk/auth/AuthActivity$b;-><init>(Lcom/alipay/sdk/auth/AuthActivity;B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/AuthActivity$a;

    invoke-direct {v2, p0, v4}, Lcom/alipay/sdk/auth/AuthActivity$a;-><init>(Lcom/alipay/sdk/auth/AuthActivity;B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/sdk/auth/a;

    invoke-direct {v2, p0}, Lcom/alipay/sdk/auth/a;-><init>(Lcom/alipay/sdk/auth/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_10c

    :try_start_de
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_10c

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_10c} :catch_16e

    :cond_10c
    :goto_10c
    :try_start_10c
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_121} :catch_132

    :cond_121
    :goto_121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto/16 :goto_13

    :catch_132
    move-exception v0

    :try_start_133
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeJavascriptInterface"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "searchBoxJavaBridge_"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibility"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "accessibilityTraversal"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_16b} :catch_16c

    goto :goto_121

    :catch_16c
    move-exception v0

    goto :goto_121

    :catch_16e
    move-exception v0

    goto :goto_10c
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    :try_start_c
    iget-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_15

    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/sdk/auth/AuthActivity;->a:Landroid/webkit/WebView;

    :cond_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_11
.end method
