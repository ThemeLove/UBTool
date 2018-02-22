.class Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;
.super Landroid/os/Handler;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    :goto_5
    return-void

    :pswitch_6
    const-string v1, "ToCertificateNoFragment"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a(I)V

    goto :goto_5

    :pswitch_29
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;->a:Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->b(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    nop

    :pswitch_data_42
    .packed-switch 0x58
        :pswitch_6
        :pswitch_29
    .end packed-switch
.end method
