.class Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Lcom/mchsdk/paysdk/b/b;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->f(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Lcom/mchsdk/paysdk/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-object v2, v2, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$5;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-boolean v3, v3, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/mchsdk/paysdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_35
    return-void
.end method
