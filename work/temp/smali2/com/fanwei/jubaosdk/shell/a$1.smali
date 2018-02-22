.class Lcom/fanwei/jubaosdk/shell/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/shell/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->a(Lcom/fanwei/jubaosdk/shell/a;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->b(Lcom/fanwei/jubaosdk/shell/a;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->c(Lcom/fanwei/jubaosdk/shell/a;)V

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->d(Lcom/fanwei/jubaosdk/shell/a;)V

    goto :goto_5

    :pswitch_1e
    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$1;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->e(Lcom/fanwei/jubaosdk/shell/a;)V

    goto :goto_5

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
