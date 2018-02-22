.class Lcom/mchsdk/paysdk/activity/a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_7c

    :cond_8
    :goto_8
    :sswitch_8
    return-void

    :sswitch_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mchsdk/paysdk/activity/a;->c:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/q;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/e/q;)V

    goto :goto_8

    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "\u767b\u9646\u5931\u8d25"

    :cond_22
    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/j;->b()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/s;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/e/s;)V

    goto :goto_8

    :sswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v0, "\u6ce8\u518c\u5931\u8d25"

    :cond_49
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/a/p;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/a/p;)V

    goto :goto_8

    :sswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$1;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a()V

    goto :goto_8

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_16
        0x3 -> :sswitch_33
        0x4 -> :sswitch_3d
        0x31 -> :sswitch_53
        0x32 -> :sswitch_5d
        0x47 -> :sswitch_8
    .end sparse-switch
.end method
