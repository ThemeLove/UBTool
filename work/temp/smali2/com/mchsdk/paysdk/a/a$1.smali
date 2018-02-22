.class Lcom/mchsdk/paysdk/a/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/a$1;->a:Lcom/mchsdk/paysdk/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    const-string v0, "AntiAddictionModel"

    const-string v1, "\u8bf7\u6c42\u9632\u6c89\u8ff7\u4fe1\u606f\u6210\u529f "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/c;

    if-nez v0, :cond_1e

    const-string v0, "AntiAddictionModel"

    const-string v1, "msg.obj is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v0, "AntiAddictionModel"

    const-string v1, "\u9632\u6c89\u8ff7\u5f00\u5173\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "AntiAddictionModel"

    const-string v2, "\u9632\u6c89\u8ff7\u5f00\u5173\u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->k()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mchsdk/paysdk/a/a;->c()Lcom/mchsdk/paysdk/utils/j;

    move-result-object v2

    if-nez v2, :cond_6a

    new-instance v2, Lcom/mchsdk/paysdk/utils/j;

    invoke-direct {v2, v1, v0}, Lcom/mchsdk/paysdk/utils/j;-><init>(Landroid/content/Context;Lcom/mchsdk/paysdk/e/c;)V

    invoke-static {v2}, Lcom/mchsdk/paysdk/a/a;->a(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j;

    invoke-static {}, Lcom/mchsdk/paysdk/a/a;->c()Lcom/mchsdk/paysdk/utils/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/e/c;)V

    goto :goto_8

    :cond_6a
    invoke-static {}, Lcom/mchsdk/paysdk/a/a;->c()Lcom/mchsdk/paysdk/utils/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Lcom/mchsdk/paysdk/e/c;)V

    goto :goto_8

    :pswitch_72
    const-string v0, "AntiAddictionModel"

    const-string v1, "\u8bf7\u6c42\u9632\u6c89\u8ff7\u4fe1\u606f\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_data_7a
    .packed-switch 0x60
        :pswitch_9
        :pswitch_72
    .end packed-switch
.end method
