.class Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Lcom/mchsdk/paysdk/b/e;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Lcom/mchsdk/paysdk/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->b(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/mchsdk/paysdk/b/e;->a(Landroid/view/View;Z)V

    :cond_1f
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    :cond_27
    return-void
.end method
