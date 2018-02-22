.class Lcom/mchsdk/paysdk/a/c/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/c/b;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/c/b$1;->a:Lcom/mchsdk/paysdk/a/c/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :goto_8
    return-void

    :pswitch_9
    const-string v0, "QQThirdLogin"

    const-string v1, "qqlogin success"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/q;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mchsdk/paysdk/a/j;->a(ZZLcom/mchsdk/paysdk/e/q;)V

    goto :goto_8

    :pswitch_1e
    const-string v0, "QQThirdLogin"

    const-string v1, "qqlogin fail"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/j;->b()V

    goto :goto_8

    nop

    :pswitch_data_2e
    .packed-switch 0x102
        :pswitch_9
        :pswitch_1e
    .end packed-switch
.end method
