.class Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;->a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
