.class Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    iget-object v0, v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    const/16 v1, 0x1002

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;I)V

    return-void
.end method
