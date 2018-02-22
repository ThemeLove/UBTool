.class Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "update pwd onSuccess"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->h(Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "password"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u5bc6\u7801\u4fee\u6539\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->finish()V

    goto :goto_8

    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string v0, "\u5bc6\u7801\u4fee\u6539\u5931\u8d25"

    :cond_53
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_5c
    .packed-switch 0x20
        :pswitch_9
        :pswitch_47
    .end packed-switch
.end method
