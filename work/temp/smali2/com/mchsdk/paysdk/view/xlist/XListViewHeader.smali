.class public Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;
.super Landroid/widget/LinearLayout;


# static fields
.field static final b:Landroid/view/animation/Interpolator;


# instance fields
.field a:Landroid/content/Context;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->g:I

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->a:Landroid/content/Context;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v2, "xlistview_mch_header"

    invoke-static {p1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setGravity(I)V

    const-string v0, "xlistview_header_arrow"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    const-string v0, "xlistview_header_hint_textview"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->f:Landroid/widget/TextView;

    const-string v0, "xlistview_header_progressbar"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->e:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public getVisiableHeight()I
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setState(I)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->g:I

    if-ne p1, v0, :cond_8

    :goto_7
    return-void

    :cond_8
    packed-switch p1, :pswitch_data_5e

    :goto_b
    iput p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->g:I

    goto :goto_7

    :pswitch_e
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->a:Landroid/content/Context;

    const-string v2, "mch_xlistview_down_arrow"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->f:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :pswitch_2d
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->a:Landroid/content/Context;

    const-string v2, "mch_xlistview_up_arrow"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->f:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :pswitch_4c
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->f:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_2d
        :pswitch_4c
    .end packed-switch
.end method

.method public setVisiableHeight(I)V
    .registers 4

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
