.class Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    iget-boolean v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u9605\u8bfb\u7528\u6237\u6ce8\u518c\u8bb8\u53ef\u534f\u8bae"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Lcom/mchsdk/paysdk/b/c;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Lcom/mchsdk/paysdk/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    iget-object v2, v2, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$4;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    iget-object v3, v3, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->e:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    invoke-interface/range {v0 .. v5}, Lcom/mchsdk/paysdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
