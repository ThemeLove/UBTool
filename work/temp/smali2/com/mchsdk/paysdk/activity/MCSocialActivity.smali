.class public Lcom/mchsdk/paysdk/activity/MCSocialActivity;
.super Landroid/app/ActivityGroup;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->c:Landroid/widget/ListView;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCSocialActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCSocialActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->a:Landroid/content/Context;

    const-string v1, "tv_mch_header_title"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5e38\u89c1\u95ee\u9898"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->a:Landroid/content/Context;

    const-string v1, "iv_mch_header_back"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->a:Landroid/content/Context;

    const-string v1, "tabhost"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    const-string v1, "tab1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "\u5e38\u89c1\u95ee\u9898"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mchsdk/paysdk/activity/MCListViewActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "\u793e\u533a\u7559\u8a00"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mchsdk/paysdk/activity/MCCommunicateActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_social"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCSocialActivity;->a()V

    return-void
.end method
