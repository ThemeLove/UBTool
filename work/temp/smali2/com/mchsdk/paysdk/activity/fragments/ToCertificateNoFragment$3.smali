.class Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->e(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->f(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->g(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "mch_button_selector_green"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#F0F0F0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->g(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "mch_tocerticate_btn_bg2"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#BEBEBE"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_4e
.end method
