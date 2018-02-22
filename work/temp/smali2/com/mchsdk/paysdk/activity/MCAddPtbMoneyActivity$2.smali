.class Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5a

    :goto_8
    :pswitch_8
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->finish()V

    goto :goto_8

    :pswitch_25
    new-instance v1, Lcom/mchsdk/paysdk/a/b/a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/a/b/a;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v3, "MCAddPtbMoneyActivity"

    invoke-virtual {v1, v2, v0, v3}, Lcom/mchsdk/paysdk/a/b/a;->a(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_38
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    const-string v1, "\u5a01\u5bcc\u901a\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Ljava/lang/String;)V

    const-string v0, "MCAddPtbMoneyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wft\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_data_5a
    .packed-switch 0x22
        :pswitch_25
        :pswitch_38
        :pswitch_8
        :pswitch_e
        :pswitch_16
    .end packed-switch
.end method
