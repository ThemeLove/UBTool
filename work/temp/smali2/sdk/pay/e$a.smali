.class Lsdk/pay/e$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/e;


# direct methods
.method private constructor <init>(Lsdk/pay/e;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsdk/pay/e;Lsdk/pay/e$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lsdk/pay/e$a;-><init>(Lsdk/pay/e;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedSslError SslError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "setLoadsImagesAutomatically"

    invoke-static {v2}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2, p2}, Lsdk/pay/e;->a(Lsdk/pay/e;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v1, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v1}, Lsdk/pay/e;->a(Lsdk/pay/e;)Lsdk/pay/d/h;

    move-result-object v1

    invoke-virtual {v1, p2}, Lsdk/pay/d/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v1}, Lsdk/pay/e;->b(Lsdk/pay/e;)Lsdk/pay/a/b$a;

    move-result-object v1

    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2}, Lsdk/pay/e;->a(Lsdk/pay/e;)Lsdk/pay/d/h;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/pay/d/g;->a(Lsdk/pay/a/b$a;Lsdk/pay/a/b;)V

    :goto_55
    return v0

    :cond_56
    const-string v2, "scheme="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v1, "scheme="

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "scheme="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2}, Lsdk/pay/e;->a(Lsdk/pay/e;)Lsdk/pay/d/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lsdk/pay/d/h;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v1}, Lsdk/pay/e;->b(Lsdk/pay/e;)Lsdk/pay/a/b$a;

    move-result-object v1

    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2}, Lsdk/pay/e;->a(Lsdk/pay/e;)Lsdk/pay/d/h;

    move-result-object v2

    invoke-static {v1, v2}, Lsdk/pay/d/g;->a(Lsdk/pay/a/b$a;Lsdk/pay/a/b;)V

    goto :goto_55

    :cond_a2
    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2}, Lsdk/pay/e;->c(Lsdk/pay/e;)Lsdk/pay/d/e;

    move-result-object v2

    if-eqz v2, :cond_102

    iget-object v2, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v2}, Lsdk/pay/e;->c(Lsdk/pay/e;)Lsdk/pay/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lsdk/pay/d/e;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v3}, Lsdk/pay/e;->c(Lsdk/pay/e;)Lsdk/pay/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/pay/d/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_102

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_102

    const-string v4, "aliUrl %s, aliImgId %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.location.href=document.getElementById(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsdk/pay/e$a;->a:Lsdk/pay/e;

    invoke-static {v3}, Lsdk/pay/e;->c(Lsdk/pay/e;)Lsdk/pay/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lsdk/pay/d/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\').value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsdk/pay/e;->loadUrl(Ljava/lang/String;)V

    :cond_102
    move v0, v1

    goto/16 :goto_55
.end method
