.class Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->c(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V

    :cond_d
    return-void
.end method
