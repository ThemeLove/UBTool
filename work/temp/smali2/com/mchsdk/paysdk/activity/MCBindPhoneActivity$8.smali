.class Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num_disable"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/a/p;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/a/p;)V

    goto :goto_8

    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_8

    :pswitch_56
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u7ed1\u5b9a\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->d()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a()V

    goto :goto_8

    :pswitch_6d
    const-string v0, ""

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_7a
    .packed-switch 0x31
        :pswitch_9
        :pswitch_2a
        :pswitch_56
        :pswitch_6d
    .end packed-switch
.end method
