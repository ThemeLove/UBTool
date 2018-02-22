.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    iget-object v7, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u9000\u51fa\u767b\u5f55"

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    const-string v4, "\u786e\u5b9a"

    const-string v5, "\u53d6\u6d88"

    iget-object v6, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v6, v6, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->z:Landroid/view/View$OnClickListener;

    invoke-static/range {v0 .. v6}, Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, v7, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->x:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->x:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
