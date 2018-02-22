.class Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(Lcom/mchsdk/paysdk/e/d;)V
    .registers 6

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_c
    if-nez p1, :cond_15

    const-string v0, "MCForgetPasswordActivity"

    const-string v1, "fun#subAccToSecVal info is null "

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8d26\u53f7\u4e0d\u5b58\u5728"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u60a8\u7684\u5e10\u53f7\u6682\u65e0\u7ed1\u5b9a\u624b\u673a\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    :cond_33
    const-string v0, "MCForgetPasswordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#subAccToSecVal id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8be5\u8d26\u53f7\u6ca1\u6709\u7ed1\u5b9a\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    :cond_7b
    const-string v0, "^1[0-9]{10}$"

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8be5\u8d26\u53f7\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b()V

    goto/16 :goto_1e
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_8e

    :goto_9
    return-void

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/d;

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a(Lcom/mchsdk/paysdk/e/d;)V

    goto :goto_9

    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :sswitch_24
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "mc_login_reg_phone_num_disable"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f\u3000\u8bf7\u6ce8\u610f\u67e5\u6536"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->c()V

    goto :goto_9

    :sswitch_4b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const-string v1, "\u70b9\u51fb\u53d1\u9001"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_75
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v1, "\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_82
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_8e
    .sparse-switch
        0x20 -> :sswitch_75
        0x21 -> :sswitch_82
        0x25 -> :sswitch_a
        0x26 -> :sswitch_12
        0x31 -> :sswitch_24
        0x32 -> :sswitch_4b
    .end sparse-switch
.end method
