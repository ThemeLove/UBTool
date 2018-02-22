.class public Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;)Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->b:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
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

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "to_certificate_ok_fragment"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->b:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->b:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "mch_attestation_button_person"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment$1;-><init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->a:Landroid/view/View;

    return-object v0
.end method
