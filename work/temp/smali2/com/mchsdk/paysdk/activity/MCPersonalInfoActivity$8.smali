.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "MCPersonalInfoActivity"

    const-string v1, "#txtNike onClick"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
