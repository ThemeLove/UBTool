.class Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/h;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a(Lcom/mchsdk/paysdk/e/h;)V

    goto :goto_b

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "\u6682\u65e0\u5145\u503c\u8bb0\u5f55"

    :cond_22
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    nop

    :pswitch_data_44
    .packed-switch 0x41
        :pswitch_c
        :pswitch_16
    .end packed-switch
.end method
