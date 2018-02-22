.class Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_41

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "mc_login_reg_phone_num_disable"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const-string v1, "\u70b9\u51fb\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_41
.end method
