.class Lcom/mchsdk/paysdk/a/e$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$1;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    :goto_8
    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$1;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/g;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Lcom/mchsdk/paysdk/e/g;)V

    goto :goto_8

    :pswitch_13
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$1;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_21
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$1;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/p;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Lcom/mchsdk/paysdk/e/p;)V

    goto :goto_8

    :pswitch_2b
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$1;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_3a
    .packed-switch 0x50
        :pswitch_9
        :pswitch_13
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method
