.class Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->y:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->finish()V

    goto :goto_1d

    :cond_24
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-eq v0, v1, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_76

    :cond_40
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)I

    move-result v0

    if-ne v0, v2, :cond_5c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->z:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0, v3}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;I)I

    goto :goto_1d

    :cond_5c
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;I)I

    goto :goto_1d

    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->o:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8a

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    goto :goto_1d

    :cond_8a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    goto :goto_1d

    :cond_9e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    goto/16 :goto_1d

    :cond_b3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->t:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    goto/16 :goto_1d
.end method
