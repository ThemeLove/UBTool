.class Lcom/mchsdk/paysdk/a/b/c$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/b/c;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/b/c$1;->a:Lcom/mchsdk/paysdk/a/b/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c$1;->a:Lcom/mchsdk/paysdk/a/b/c;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/b/c;->a(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_11
    const-string v0, "ZfbPay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u5b9d\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_2c
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c$1;->a:Lcom/mchsdk/paysdk/a/b/c;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/b/c;->b(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_data_34
    .packed-switch 0x7
        :pswitch_9
        :pswitch_11
        :pswitch_2c
    .end packed-switch
.end method
