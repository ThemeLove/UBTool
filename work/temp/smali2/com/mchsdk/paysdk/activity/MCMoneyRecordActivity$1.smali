.class Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a(Lcom/mchsdk/paysdk/e/b;)V

    goto :goto_9

    :pswitch_14
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->b()V

    :cond_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v0, "\u6682\u65e0\u5145\u503c\u8bb0\u5f55"

    :cond_3a
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    goto :goto_9

    :cond_56
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->c()V

    :cond_67
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    const-string v1, "\u6682\u65e0\u66f4\u591a\u5145\u503c\u8bb0\u5f55\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    nop

    :pswitch_data_70
    .packed-switch 0x37
        :pswitch_a
        :pswitch_14
    .end packed-switch
.end method
