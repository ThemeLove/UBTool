.class Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->c(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_38

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2$1;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_37
    :goto_37
    return-void

    :cond_38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    iget-object v1, v1, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_37

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2$2;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_37
.end method
