.class public Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/MCTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Landroid/content/DialogInterface$OnCancelListener;

.field private c:Landroid/content/DialogInterface$OnDismissListener;

.field private d:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->b:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->c:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->d:Landroid/content/DialogInterface$OnShowListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->a(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "c_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 6

    if-nez p2, :cond_b

    const-string v0, "ChatDialog"

    const-string v1, "show error : fragment manager is null."

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    const-string v1, "ChatDialog"

    const-string v2, "show custom dialog."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "ChatDialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_a
.end method
