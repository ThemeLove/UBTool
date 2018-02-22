.class public Lcom/mchsdk/paysdk/dialog/MCTipDialog;
.super Landroid/app/DialogFragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/DialogInterface$OnCancelListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->b:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->c:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->d:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->b:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCTipDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_tip_custom"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_17

    move-object v0, v1

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "c_message"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "message"

    invoke-static {v0, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_38
    const-string v0, "cancelable"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->setCancelable(Z)V

    move-object v0, v1

    goto :goto_16

    :cond_44
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->c:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_c
    return-void
.end method

.method public onStart()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->d:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method
