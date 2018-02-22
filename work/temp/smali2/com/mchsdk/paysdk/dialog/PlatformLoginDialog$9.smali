.class Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-boolean v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, v1, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-boolean v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_platform_login_seleceted"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_26
    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_9

    :cond_29
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->j(Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mc_platform_login_unseleceted"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_26
.end method
