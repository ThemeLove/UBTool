.class Lcom/mchsdk/paysdk/a/e$3;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->w(Lcom/mchsdk/paysdk/a/e;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_84

    :goto_d
    return-void

    :sswitch_e
    new-instance v1, Lcom/mchsdk/paysdk/a/b/a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/a/b/a;-><init>()V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v3, "ChoosePayModel"

    invoke-virtual {v1, v2, v0, v3}, Lcom/mchsdk/paysdk/a/b/a;->a(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_23
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u652f\u4ed8\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_3e
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/Object;)V

    goto :goto_d

    :sswitch_46
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5e73\u53f0\u5e01\u51fa\u73b0\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_61
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Ljava/lang/Object;)V

    goto :goto_d

    :sswitch_69
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_73
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0, p1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Landroid/os/Message;)V

    goto :goto_d

    :sswitch_79
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$3;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_d

    nop

    :sswitch_data_84
    .sparse-switch
        0x16 -> :sswitch_61
        0x17 -> :sswitch_69
        0x18 -> :sswitch_3e
        0x19 -> :sswitch_46
        0x22 -> :sswitch_e
        0x23 -> :sswitch_23
        0x64 -> :sswitch_73
        0x65 -> :sswitch_79
    .end sparse-switch
.end method
