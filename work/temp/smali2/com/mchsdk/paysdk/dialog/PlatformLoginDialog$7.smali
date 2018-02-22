.class Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$7;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
