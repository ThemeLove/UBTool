.class Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    if-eqz v0, :cond_3b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_login_reg_phone_num"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v1, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$10;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_login_reg_phone_num_disable"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3b
.end method
