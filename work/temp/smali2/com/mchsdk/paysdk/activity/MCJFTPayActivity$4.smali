.class Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0, p3}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;I)I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v2, "image_icon_radiobutton_no"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v2, "ImageButton_junpay_type_Checked"

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v2, "image_icon_radiobutton_yes"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
