.class public Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;)Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->c:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v2, "to_certificate_fragment"

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->c:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "mch_attestation_button_person"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment$1;-><init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->c:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "mch_certificate_real_name"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->c:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "mch_certificate_id_card"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-le v0, v2, :cond_ae

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    move-object v2, v0

    move v0, v1

    :goto_7c
    iget-object v5, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_9c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :cond_9c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v1, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ae
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;->b:Landroid/view/View;

    return-object v0
.end method
