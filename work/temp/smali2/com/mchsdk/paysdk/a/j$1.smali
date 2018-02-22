.class Lcom/mchsdk/paysdk/a/j$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/j;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/j;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/16 v1, 0x57

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_84

    :goto_b
    return-void

    :sswitch_c
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/j;->a(Lcom/mchsdk/paysdk/a/j;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/j;->a(Lcom/mchsdk/paysdk/a/j;Ljava/lang/Object;)V

    goto :goto_b

    :sswitch_26
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/j;->a(Lcom/mchsdk/paysdk/a/j;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/j;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_38
    const-string v0, "LoginModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u5f97\u7b2c\u4e09\u65b9\u767b\u5f55\u53c2\u6570\u5f02\u5e38\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :sswitch_53
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/q;

    invoke-virtual {v1, v2, v2, v0}, Lcom/mchsdk/paysdk/a/j;->a(ZZLcom/mchsdk/paysdk/e/q;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/j;->a(Lcom/mchsdk/paysdk/a/j;I)V

    goto :goto_b

    :sswitch_64
    const-string v0, "LoginModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c\u4e09\u65b9\u767b\u5f55\u5931\u8d25\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/j$1;->a:Lcom/mchsdk/paysdk/a/j;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/j;->b()V

    goto :goto_b

    :sswitch_data_84
    .sparse-switch
        0x44 -> :sswitch_c
        0x45 -> :sswitch_26
        0x102 -> :sswitch_53
        0x103 -> :sswitch_64
    .end sparse-switch
.end method
