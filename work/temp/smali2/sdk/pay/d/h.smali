.class public Lsdk/pay/d/h;
.super Lsdk/pay/a/b;


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lsdk/pay/a/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-boolean p2, p0, Lsdk/pay/d/h;->c:Z

    return-void
.end method

.method private c()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wapPay url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsdk/pay/d/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lsdk/pay/d/h;->c:Z

    if-nez v0, :cond_41

    :try_start_1e
    invoke-virtual {p0}, Lsdk/pay/d/h;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lsdk/pay/d/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/net/URISyntaxException; {:try_start_1e .. :try_end_3e} :catch_5a
    .catchall {:try_start_1e .. :try_end_3e} :catchall_80

    invoke-virtual {p0}, Lsdk/pay/d/h;->b()V

    :cond_41
    :goto_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wapPay end mIsPilotRun = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsdk/pay/d/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    return-void

    :catch_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wapPay exception message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_5b .. :try_end_7c} :catchall_80

    invoke-virtual {p0}, Lsdk/pay/d/h;->b()V

    goto :goto_41

    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lsdk/pay/d/h;->b()V

    throw v0
.end method


# virtual methods
.method public a(Lsdk/pay/a/b$a;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/h;->b:Lsdk/pay/a/b$a;

    invoke-direct {p0}, Lsdk/pay/d/h;->c()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lsdk/pay/d/h;->c:Z

    return-void
.end method
