.class Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-boolean v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    if-nez v0, :cond_51

    move v0, v1

    :goto_a
    iput-boolean v0, v2, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "id"

    const-string v3, "txt_mc_agreement"

    invoke-static {v0, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v0, v2, :cond_35

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iput-boolean v1, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/c/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/s;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-boolean v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mch_checkbox_pressed"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_50
    return-void

    :cond_51
    const/4 v0, 0x0

    goto :goto_a

    :cond_53
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$9;->a:Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->e(Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "mch_selectptb_unselected"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_50
.end method
