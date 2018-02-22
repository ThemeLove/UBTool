.class final Lcom/alipay/sdk/j/g;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/j/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/j/e;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/j/g;->a:Lcom/alipay/sdk/j/e;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final isHideLoadingScreen()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final payEnd(ZLjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_f

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_f
    :try_start_f
    const-string v1, "CallingPid"

    invoke-virtual {p4, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_2c

    :goto_17
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/j/g;->a:Lcom/alipay/sdk/j/e;

    invoke-static {v1}, Lcom/alipay/sdk/j/e;->b(Lcom/alipay/sdk/j/e;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/alipay/sdk/j/g;->a:Lcom/alipay/sdk/j/e;

    invoke-static {v1}, Lcom/alipay/sdk/j/e;->b(Lcom/alipay/sdk/j/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2b
    return-void

    :catch_2c
    move-exception v1

    goto :goto_17
.end method
