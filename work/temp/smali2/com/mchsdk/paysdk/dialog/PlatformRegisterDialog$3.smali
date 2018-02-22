.class Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->c(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$3;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->c(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_24
    return-void
.end method
