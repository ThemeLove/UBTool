.class Lsdk/pay/d$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/d;


# direct methods
.method constructor <init>(Lsdk/pay/d;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_3e

    :goto_7
    return-void

    :sswitch_8
    iget-object v0, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->f()V

    goto :goto_7

    :sswitch_e
    iget-object v0, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->g()V

    goto :goto_7

    :sswitch_14
    iget-object v0, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-static {v0}, Lsdk/pay/d;->c(Lsdk/pay/d;)V

    goto :goto_7

    :sswitch_1a
    iget-object v0, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->b()V

    goto :goto_7

    :sswitch_20
    iget-object v2, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_2a

    :goto_26
    invoke-virtual {v2, v0}, Lsdk/pay/d;->c(Z)V

    goto :goto_7

    :cond_2a
    move v0, v1

    goto :goto_26

    :sswitch_2c
    iget-object v0, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    invoke-static {v0}, Lsdk/pay/d;->d(Lsdk/pay/d;)V

    goto :goto_7

    :sswitch_32
    iget-object v2, p0, Lsdk/pay/d$a;->a:Lsdk/pay/d;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_3c

    :goto_38
    invoke-virtual {v2, v0}, Lsdk/pay/d;->d(Z)V

    goto :goto_7

    :cond_3c
    move v0, v1

    goto :goto_38

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_e
        0x4 -> :sswitch_14
        0x8 -> :sswitch_1a
        0x10 -> :sswitch_20
        0x20 -> :sswitch_2c
        0x80 -> :sswitch_32
    .end sparse-switch
.end method
