.class Lcom/mchsdk/paysdk/utils/Lolly$4;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->h(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$4;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->h(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22
.end method
