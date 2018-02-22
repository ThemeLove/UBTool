.class Lcom/mchsdk/paysdk/activity/a$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v3}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/mchsdk/paysdk/activity/a;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/a;->a:Landroid/app/ProgressDialog;

    const-string v2, "\u6b63\u5728\u52a0\u8f7d,\u8bf7\u7a0d\u7b49"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v3, v3, Lcom/mchsdk/paysdk/activity/a;->b:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v4, v4, Lcom/mchsdk/paysdk/activity/a;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mchsdk/paysdk/a/j;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    if-eqz v0, :cond_49

    :try_start_3e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$14;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const-string v1, "LoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method
