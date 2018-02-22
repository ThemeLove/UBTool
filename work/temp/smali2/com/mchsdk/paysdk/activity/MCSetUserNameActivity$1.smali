.class Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_c
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;Lcom/mchsdk/paysdk/dialog/MCTipDialog;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_33

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->j:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->j:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->j:Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2d} :catch_38

    :cond_2d
    :goto_2d
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_96

    :goto_32
    return-void

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    :pswitch_3d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/d;

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a(Lcom/mchsdk/paysdk/e/d;)V

    goto :goto_32

    :cond_49
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->finish()V

    goto :goto_32

    :pswitch_5e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->finish()V

    goto :goto_32

    :pswitch_75
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a()V

    goto :goto_32

    :pswitch_7b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v0, "\u7f51\u7edc\u5f02\u5e38"

    :cond_87
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32

    nop

    :pswitch_data_96
    .packed-switch 0x25
        :pswitch_3d
        :pswitch_5e
        :pswitch_75
        :pswitch_7b
    .end packed-switch
.end method
