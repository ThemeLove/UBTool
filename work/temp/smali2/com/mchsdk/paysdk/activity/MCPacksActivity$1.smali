.class Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCPacksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_fa

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_16
    :goto_16
    return-void

    :sswitch_17
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/m;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/m;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/m;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6d

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->a(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/adapter/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/adapter/e;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->c(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->invalidate()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->c(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/adapter/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/adapter/e;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setSelection(I)V

    goto :goto_16

    :cond_6d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    const-string v1, "\u6ca1\u6709\u5176\u5b83\u793c\u5305\u4e86"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_16

    :sswitch_79
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_86
    const-string v1, "MCPacksActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    const-string v1, "\u6ca1\u6709\u5176\u5b83\u793c\u5305\u4e86"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_16

    :sswitch_af
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_bc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_16

    :sswitch_cb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/l;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;->b(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;->c(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    goto/16 :goto_16

    nop

    :sswitch_data_fa
    .sparse-switch
        0x24 -> :sswitch_17
        0x25 -> :sswitch_79
        0x39 -> :sswitch_cb
        0x40 -> :sswitch_af
    .end sparse-switch
.end method
