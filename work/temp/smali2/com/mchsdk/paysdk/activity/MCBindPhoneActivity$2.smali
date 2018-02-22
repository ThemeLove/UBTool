.class Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    const-string v2, "iv_mch_header_back"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->finish()V

    :cond_13
    return-void
.end method
