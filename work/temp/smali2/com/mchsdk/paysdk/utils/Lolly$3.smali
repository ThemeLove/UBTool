.class Lcom/mchsdk/paysdk/utils/Lolly$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/Lolly;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->f(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/Lolly;->e(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->g(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "V"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->f(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/Lolly;->e(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$3;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->g(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method
