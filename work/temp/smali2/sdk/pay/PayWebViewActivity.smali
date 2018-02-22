.class public Lsdk/pay/PayWebViewActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lsdk/pay/a/b$a;
.implements Lsdk/pay/easypermissions/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/PayWebViewActivity$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Dialog;

.field b:Lsdk/pay/d/c;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsdk/pay/PayWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_19

    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :goto_18
    return-void

    :cond_19
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto :goto_18
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "loadUrl "

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    new-instance v0, Lsdk/pay/PayWebViewActivity$1;

    invoke-direct {v0, p0, p1}, Lsdk/pay/PayWebViewActivity$1;-><init>(Lsdk/pay/PayWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsdk/pay/PayWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lsdk/pay/a/b$a;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareToFriendQQ url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mobileqq"

    const-string v4, "com.tencent.mobileqq.activity.JumpActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3a
    invoke-virtual {p0, v1}, Lsdk/pay/PayWebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_48
    .catchall {:try_start_3a .. :try_end_3d} :catchall_75

    if-eqz p2, :cond_42

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    :cond_42
    :goto_42
    const-string v0, "shareToFriendQQ end"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    return-void

    :catch_48
    move-exception v0

    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "QQ can\'t be found!"

    invoke-static {p0, v1}, Lsdk/pay/e/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PayWebViewActivity shareToFriendQQ Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_75

    if-eqz p2, :cond_42

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    goto :goto_42

    :catchall_75
    move-exception v0

    if-eqz p2, :cond_7b

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    :cond_7b
    throw v0
.end method

.method static synthetic a(Lsdk/pay/PayWebViewActivity;Ljava/lang/String;Lsdk/pay/a/b$a;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lsdk/pay/PayWebViewActivity;->a(Ljava/lang/String;Lsdk/pay/a/b$a;)V

    return-void
.end method

.method private b()V
    .registers 2

    new-instance v0, Lsdk/pay/PayWebViewActivity$2;

    invoke-direct {v0, p0}, Lsdk/pay/PayWebViewActivity$2;-><init>(Lsdk/pay/PayWebViewActivity;)V

    invoke-virtual {p0, v0}, Lsdk/pay/PayWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .registers 2

    new-instance v0, Lsdk/pay/PayWebViewActivity$3;

    invoke-direct {v0, p0}, Lsdk/pay/PayWebViewActivity$3;-><init>(Lsdk/pay/PayWebViewActivity;)V

    invoke-virtual {p0, v0}, Lsdk/pay/PayWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8bf7\u8bbe\u7f6e\u5b58\u50a8\u6743\u9650"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53bb\u8bbe\u7f6e"

    new-instance v2, Lsdk/pay/PayWebViewActivity$4;

    invoke-direct {v2, p0}, Lsdk/pay/PayWebViewActivity$4;-><init>(Lsdk/pay/PayWebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/PayWebViewActivity;->b()V

    invoke-virtual {p0}, Lsdk/pay/PayWebViewActivity;->finish()V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->b:Lsdk/pay/d/c;

    invoke-static {p0, v0}, Lsdk/pay/d/g;->a(Lsdk/pay/a/b$a;Lsdk/pay/a/b;)V

    :cond_8
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lsdk/pay/easypermissions/b;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lsdk/pay/PayWebViewActivity;->d()V

    :cond_b
    return-void
.end method

.method public click(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "click !!!!! "

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    invoke-direct {p0}, Lsdk/pay/PayWebViewActivity;->c()V

    invoke-direct {p0, p1}, Lsdk/pay/PayWebViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->b:Lsdk/pay/d/c;

    if-nez v0, :cond_1f

    new-instance v0, Lsdk/pay/d/c;

    invoke-direct {v0, p1, p0}, Lsdk/pay/d/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lsdk/pay/PayWebViewActivity;->b:Lsdk/pay/d/c;

    :goto_b
    invoke-static {p0}, Lsdk/pay/e/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lsdk/pay/PayWebViewActivity;->c()V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->b:Lsdk/pay/d/c;

    invoke-static {p0, v0}, Lsdk/pay/d/g;->a(Lsdk/pay/a/b$a;Lsdk/pay/a/b;)V

    :goto_19
    const-string v0, "invoke end"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    return-void

    :cond_1f
    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->b:Lsdk/pay/d/c;

    invoke-virtual {v0, p1}, Lsdk/pay/d/c;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_25
    invoke-static {p0}, Lsdk/pay/e/g;->a(Landroid/app/Activity;)V

    goto :goto_19
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lsdk/pay/PayWebViewActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lsdk/pay/PayWebViewActivity$a;-><init>(Lsdk/pay/PayWebViewActivity;Lsdk/pay/PayWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lsdk/pay/PayWebViewActivity;->a(Landroid/webkit/WebSettings;)V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    const-string v1, "JHBack"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    const-string v1, "JHMobile"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lsdk/pay/PayWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "weixin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "invoke"

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsdk/pay/PayWebViewActivity;->invoke(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    iget-object v1, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lsdk/pay/PayWebViewActivity;->setContentView(Landroid/view/View;)V

    goto :goto_51
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsdk/pay/PayWebViewActivity;->c:Landroid/webkit/WebView;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lsdk/pay/easypermissions/b;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method
