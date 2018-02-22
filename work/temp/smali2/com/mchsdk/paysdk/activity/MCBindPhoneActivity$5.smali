.class Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    if-eqz v0, :cond_35

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num_disable"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_35
.end method
