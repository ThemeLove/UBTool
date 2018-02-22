.class Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->dismissAllowingStateLoss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "1"

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->b(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_46
    return-void

    :cond_47
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "0"

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->b(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_46

    :cond_88
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;->a:Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u590d\u5236\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_46
.end method
