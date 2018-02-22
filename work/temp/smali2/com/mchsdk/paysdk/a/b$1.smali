.class Lcom/mchsdk/paysdk/a/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/b;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/b$1;->a:Lcom/mchsdk/paysdk/a/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b$1;->a:Lcom/mchsdk/paysdk/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/b;->b()Lcom/mchsdk/open/ChangePlayerLevelCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b$1;->a:Lcom/mchsdk/paysdk/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/b;->b()Lcom/mchsdk/open/ChangePlayerLevelCallback;

    move-result-object v0

    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/ChangePlayerLevelCallback;->callback(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_1d
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b$1;->a:Lcom/mchsdk/paysdk/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/b;->b()Lcom/mchsdk/open/ChangePlayerLevelCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b$1;->a:Lcom/mchsdk/paysdk/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/b;->b()Lcom/mchsdk/open/ChangePlayerLevelCallback;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/ChangePlayerLevelCallback;->callback(Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_32
    .packed-switch 0x55
        :pswitch_1d
        :pswitch_9
    .end packed-switch
.end method
