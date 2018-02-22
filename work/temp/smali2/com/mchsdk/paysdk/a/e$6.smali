.class Lcom/mchsdk/paysdk/a/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ChoosePayModel"

    const-string v1, "select pay type"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->c(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->d(Lcom/mchsdk/paysdk/a/e;)V

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->q(Lcom/mchsdk/paysdk/a/e;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->b(Lcom/mchsdk/paysdk/a/e;I)V

    return-void

    :cond_28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->e(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->f(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4f

    :cond_48
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto :goto_1c

    :cond_4f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->g(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_6f

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->h(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_76

    :cond_6f
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto :goto_1c

    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->i(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_96

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->j(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9d

    :cond_96
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto :goto_1c

    :cond_9d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->k(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_bd

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->l(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_c5

    :cond_bd
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto/16 :goto_1c

    :cond_c5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->m(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_e5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->n(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_ed

    :cond_e5
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto/16 :goto_1c

    :cond_ed
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->o(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-eq v0, v1, :cond_10d

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->p(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1c

    :cond_10d
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$6;->a:Lcom/mchsdk/paysdk/a/e;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;I)I

    goto/16 :goto_1c
.end method
