.class public Lsdk/pay/d/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Lsdk/pay/a/b$a;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1a} :catch_20
    .catchall {:try_start_1 .. :try_end_1a} :catchall_48

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    :cond_1f
    :goto_1f
    return-void

    :catch_20
    move-exception v0

    :try_start_21
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intentPay exception message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_48

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    goto :goto_1f

    :catchall_48
    move-exception v0

    if-eqz p2, :cond_4e

    invoke-interface {p2}, Lsdk/pay/a/b$a;->a()V

    :cond_4e
    throw v0
.end method
