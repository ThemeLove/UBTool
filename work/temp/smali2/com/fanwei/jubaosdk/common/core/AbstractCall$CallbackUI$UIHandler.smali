.class Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;->this$0:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;->this$0:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    # getter for: Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->access$000(Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;)Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;->this$0:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    # getter for: Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->access$000(Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;)Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_8

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_9
        :pswitch_15
    .end packed-switch
.end method
