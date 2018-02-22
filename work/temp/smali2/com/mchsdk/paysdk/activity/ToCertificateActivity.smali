.class public Lcom/mchsdk/paysdk/activity/ToCertificateActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseFragmentActivity;


# instance fields
.field a:I

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseFragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a:I

    new-instance v0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/ToCertificateActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "ToCertificateActivity"

    const-string v1, "fun#initView"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tv_mch_header_title"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5b9e\u540d\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "iv_mch_header_back"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    iput v2, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a:I

    :cond_5d
    :goto_5d
    const-string v0, "mch_certificate_vp"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->e:Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;

    new-instance v0, Lcom/mchsdk/paysdk/adapter/CertificateVpAdapter;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/mchsdk/paysdk/adapter/CertificateVpAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->e:Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a:I

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a(I)V

    return-void

    :cond_81
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const/4 v0, 0x2

    iput v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a:I

    goto :goto_5d
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->e:Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/view/util/NoScrollViewPager;->setCurrentItem(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_certificate"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateOKFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/ToCertificateActivity;->a()V

    return-void
.end method
