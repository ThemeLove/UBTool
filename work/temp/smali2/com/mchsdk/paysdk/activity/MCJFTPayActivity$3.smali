.class Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v1, ""

    const-string v2, "\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f..."

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/pay/d/a;

    invoke-virtual {v0}, Lsdk/pay/d/a;->b()I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Lsdk/pay/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Lsdk/pay/d/b;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lsdk/pay/a;->a(Lsdk/pay/d/b;I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0, v4}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Z)Z

    return-void
.end method
