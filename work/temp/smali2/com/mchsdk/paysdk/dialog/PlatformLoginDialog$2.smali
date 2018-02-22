.class Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$2;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method
