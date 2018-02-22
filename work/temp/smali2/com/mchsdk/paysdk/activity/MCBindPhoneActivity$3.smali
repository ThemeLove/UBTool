.class Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "text_back"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->finish()V

    :cond_17
    :goto_17
    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "msg_mm"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_b3

    invoke-static {v5}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->I:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    invoke-static {v6}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    :cond_7a
    const-string v1, "^1[0-9]{10}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_17

    :cond_8c
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v3, "mc_login_reg_phone_num_disable"

    invoke-virtual {v2, v3}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/mchsdk/paysdk/f/c/ac;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/ac;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->K:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Landroid/os/Handler;)V

    goto/16 :goto_17

    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "btn_msg_mm"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_17

    invoke-static {v6}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    invoke-static {v5}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->I:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "mc_login_reg_phone_num"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8be5\u8d26\u53f7\u6ca1\u6709\u7ed1\u5b9a\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_10e
    const-string v1, "^1[0-9]{10}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_121

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8be5\u8d26\u53f7\u7ed1\u5b9a\u7684\u624b\u673a\u53f7\u7801\u65e0\u6cd5\u88ab\u8bc6\u522b"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_121
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v3, "mc_login_reg_phone_num_disable"

    invoke-virtual {v2, v3}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/mchsdk/paysdk/f/c/ac;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/ac;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->L:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Landroid/os/Handler;)V

    goto/16 :goto_17
.end method
