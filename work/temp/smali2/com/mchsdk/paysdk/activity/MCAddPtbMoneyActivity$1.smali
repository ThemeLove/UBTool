.class Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$1;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_30

    :goto_8
    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/g;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Lcom/mchsdk/paysdk/e/g;)V

    goto :goto_8

    :pswitch_13
    const-string v1, "MCAddPtbMoneyActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u652f\u4ed8\u65b9\u5f0f\u5931\u8d25\uff01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_data_30
    .packed-switch 0x50
        :pswitch_9
        :pswitch_13
    .end packed-switch
.end method
