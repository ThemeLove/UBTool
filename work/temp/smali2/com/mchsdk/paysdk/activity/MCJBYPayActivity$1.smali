.class Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_60

    :goto_9
    return-void

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/j;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-static {v2, v1, v4}, Lcom/fanwei/jubaosdk/shell/FWPay;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v1, Lcom/fanwei/jubaosdk/shell/PayOrder;

    invoke-direct {v1}, Lcom/fanwei/jubaosdk/shell/PayOrder;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setAmount(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setGoodsName(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setPayId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setPlayerId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-static {v0, v1, v4, v2}, Lcom/fanwei/jubaosdk/shell/FWPay;->pay(Landroid/app/Activity;Lcom/fanwei/jubaosdk/shell/PayOrder;ILcom/fanwei/jubaosdk/common/core/OnPayResultListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    :goto_47
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->finish()V

    goto :goto_9

    :cond_4d
    const-string v0, "MCJBYPayActivity"

    const-string v1, "appid is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :sswitch_55
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;->show(Ljava/lang/String;)V

    goto :goto_9

    nop

    :sswitch_data_60
    .sparse-switch
        0x17 -> :sswitch_55
        0x43 -> :sswitch_a
    .end sparse-switch
.end method
