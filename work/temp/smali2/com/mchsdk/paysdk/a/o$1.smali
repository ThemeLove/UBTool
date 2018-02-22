.class Lcom/mchsdk/paysdk/a/o$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/o;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/o;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/o$1;->a:Lcom/mchsdk/paysdk/a/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_52

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/q;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->h(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/e/d;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/o$1;->a:Lcom/mchsdk/paysdk/a/o;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o;)Lcom/mchsdk/paysdk/a/o$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/o$1;->a:Lcom/mchsdk/paysdk/a/o;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o;)Lcom/mchsdk/paysdk/a/o$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mchsdk/paysdk/a/o$a;->a(Z)V

    goto :goto_8

    :pswitch_47
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/o$1;->a:Lcom/mchsdk/paysdk/a/o;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o;)Lcom/mchsdk/paysdk/a/o$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mchsdk/paysdk/a/o$a;->a(Z)V

    goto :goto_8

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_9
        :pswitch_47
    .end packed-switch
.end method
