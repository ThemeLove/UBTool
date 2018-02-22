.class Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_28

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->dismissAllowingStateLoss()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->g(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    :cond_27
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
