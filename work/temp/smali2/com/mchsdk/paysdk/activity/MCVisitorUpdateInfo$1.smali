.class Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;->a:Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_8
    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;->a:Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;->a:Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;

    const-string v1, "\u7528\u6237\u540d\u8bbe\u7f6e\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;->a:Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MCVisitorUpdateInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_data_44
    .packed-switch 0x53
        :pswitch_9
        :pswitch_1a
    .end packed-switch
.end method
