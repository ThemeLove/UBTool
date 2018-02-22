.class Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_login_reg_phone_num_disable"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Lcom/mchsdk/paysdk/b/c;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Lcom/mchsdk/paysdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$6;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v2, v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->h:Lcom/mchsdk/paysdk/b/d;

    invoke-interface {v0, p1, v1, v2}, Lcom/mchsdk/paysdk/b/c;->a(Landroid/view/View;Ljava/lang/String;Lcom/mchsdk/paysdk/b/d;)V

    :cond_42
    return-void
.end method
