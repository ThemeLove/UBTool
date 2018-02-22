.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    const-class v2, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_34
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_43
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_59

    const-string v1, "type"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e

    :cond_59
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    const-string v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1e
.end method
