.class Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "stepone_btn_submit"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "teptwo_btn_back"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a()V

    goto :goto_13

    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "teptwo_btn_next"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->v:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_5e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c()V

    goto :goto_13

    :cond_64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "tempthree_btn_submit"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_78

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e()V

    goto :goto_13

    :cond_78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "stepfour_tv_back"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->finish()V

    goto :goto_13

    :cond_8c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "teptwo_btn_checknumber"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_9f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    :cond_9f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    const-string v2, "tempthree_btn_back"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b()V

    goto/16 :goto_13
.end method
