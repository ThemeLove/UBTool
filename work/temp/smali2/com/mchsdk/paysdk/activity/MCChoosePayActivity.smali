.class public Lcom/mchsdk/paysdk/activity/MCChoosePayActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    return-void
.end method

.method private a(I[I)V
    .registers 5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_11

    const/4 v0, 0x0

    aget v0, p2, v0

    if-nez v0, :cond_12

    const-string v0, "\u8bf7\u5c3d\u60c5\u73a9\u800d\u5427~"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, "\u9650\u5236\u540e\uff0c\u65e0\u6cd5\u4f7f\u7528\u5fae\u4fe1\u5b89\u5168\u652f\u4ed8\u63a7\u4ef6\uff01"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_choosepay"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChoosePayActivity;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/mchsdk/paysdk/a/e;

    invoke-direct {v1, p0, v0}, Lcom/mchsdk/paysdk/a/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChoosePayActivity;->a:Lcom/mchsdk/paysdk/a/e;

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-direct {p0, p1, p3}, Lcom/mchsdk/paysdk/activity/MCChoosePayActivity;->a(I[I)V

    return-void
.end method
