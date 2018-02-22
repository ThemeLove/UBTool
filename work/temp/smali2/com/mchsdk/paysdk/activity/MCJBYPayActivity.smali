.class public Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;
.super Landroid/app/base/Activity;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/OnPayResultListener;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/base/Activity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->finish()V

    :goto_5
    return-void

    :cond_6
    new-instance v0, Lcom/mchsdk/paysdk/f/c/i;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/i;-><init>()V

    const-string v1, "goodsname"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->b(Ljava/lang/String;)V

    const-string v1, "goodsprice"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->c(Ljava/lang/String;)V

    const-string v1, "remark"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->d(Ljava/lang/String;)V

    const-string v1, "extend"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->a(Ljava/lang/String;)V

    const-string v1, "paytype"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/i;->a(Landroid/os/Handler;)V

    goto :goto_5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/base/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "MCJBYPayActivity"

    const-string v1, "jby pay fail"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MCJBYPayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MCJBYPayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mchsdk/open/ApiCallback;->mJBYPayCallback:Lcom/mchsdk/paysdk/b/a;

    const-string v1, "-1"

    invoke-interface {v0, v1, p2}, Lcom/mchsdk/paysdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/base/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "MCJBYPayActivity"

    const-string v1, "onSuccess: "

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MCJBYPayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MCJBYPayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "order_num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mchsdk/open/ApiCallback;->mJBYPayCallback:Lcom/mchsdk/paysdk/b/a;

    const-string v1, "0"

    invoke-interface {v0, v1, p2}, Lcom/mchsdk/paysdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
