.class Lcom/mchsdk/paysdk/activity/ToCertificateActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/ToCertificateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/ToCertificateActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/ToCertificateActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity$1;->a:Lcom/mchsdk/paysdk/activity/ToCertificateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity$1;->a:Lcom/mchsdk/paysdk/activity/ToCertificateActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->finish()V

    return-void
.end method
