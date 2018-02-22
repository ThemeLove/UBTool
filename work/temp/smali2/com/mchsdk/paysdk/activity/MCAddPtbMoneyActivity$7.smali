.class Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_18

    :goto_8
    :sswitch_8
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    return-void

    :sswitch_e
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_data_18
    .sparse-switch
        0x17 -> :sswitch_e
        0x43 -> :sswitch_8
    .end sparse-switch
.end method
