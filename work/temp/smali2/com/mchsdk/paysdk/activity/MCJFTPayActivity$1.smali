.class Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b()V
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v3, "ImageButton_junpay_type_Checked"

    invoke-virtual {v2, v3}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/mchsdk/paysdk/R$drawable;->image_icon_radiobutton_yes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
