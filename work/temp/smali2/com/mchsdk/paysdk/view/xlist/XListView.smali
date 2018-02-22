.class public Lcom/mchsdk/paysdk/view/xlist/XListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/view/xlist/XListView$a;,
        Lcom/mchsdk/paysdk/view/xlist/XListView$b;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

.field private e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

.field private f:Z

.field private g:Landroid/widget/RelativeLayout;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/content/Context;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    iput-object v3, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    invoke-direct {p0, p1, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/view/xlist/XListView;I)I
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    return p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/view/xlist/XListView;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->g:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a(F)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    add-int/lit8 v1, v1, -0x14

    if-le v0, v1, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setState(I)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setState(I)V

    goto :goto_27
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x1

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->p:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->q:Z

    new-instance v0, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-direct {v0, p1, p2}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->p:Landroid/content/Context;

    const-string v2, "xlistview_header_content"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->g:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/view/xlist/XListView$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView$1;-><init>(Lcom/mchsdk/paysdk/view/xlist/XListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(Z)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getVisiableHeight()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    if-le v2, v0, :cond_9

    :cond_12
    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    if-le v2, v0, :cond_32

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    move v3, v0

    :goto_1d
    iput v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->o:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    :cond_2e
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->invalidate()V

    goto :goto_9

    :cond_32
    move v3, v1

    goto :goto_1d
.end method

.method private b(F)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    if-nez v1, :cond_1a

    const/16 v1, 0x1e

    if-le v0, v1, :cond_20

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setState(I)V

    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setBottomMargin(I)V

    return-void

    :cond_20
    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setState(I)V

    goto :goto_1a
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/view/xlist/XListView;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->f()V

    return-void
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/mchsdk/paysdk/view/xlist/XListView$b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/mchsdk/paysdk/view/xlist/XListView$b;

    invoke-interface {v0, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView$b;->a(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private e()V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_18

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->o:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->invalidate()V

    :cond_18
    return-void
.end method

.method private f()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

    invoke-interface {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView$a;->b()V

    :cond_12
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    iget v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setVisiableHeight(I)V

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setState(I)V

    goto :goto_5
.end method

.method public b()V
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    const-string v2, "%Y-%m-%d %T"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setRefreshTime(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    if-ne v0, v3, :cond_1e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    invoke-direct {p0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Z)V

    :cond_1e
    return-void
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setState(I)V

    :cond_d
    return-void
.end method

.method public computeScroll()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->o:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setVisiableHeight(I)V

    :goto_17
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->postInvalidate()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->d()V

    :cond_1d
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setBottomMargin(I)V

    goto :goto_17
.end method

.method public getPullLoading()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->m:Z

    return v0
.end method

.method public getPullRefreshing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iput p4, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->n:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_b
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    if-nez p2, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->q:Z

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->q:Z

    goto :goto_e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/16 v5, 0x1e

    const/4 v2, 0x0

    const v4, 0x3fe66666

    const/4 v3, 0x0

    const/high16 v1, -0x40800000

    iget v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_d0

    :pswitch_1c
    iput v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_b2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->h:I

    if-le v0, v1, :cond_4a

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    if-eqz v0, :cond_4a

    iput-boolean v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->j:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->setState(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

    invoke-interface {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView$a;->a()V

    :cond_4a
    invoke-direct {p0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Z)V

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->getBottomMargin()I

    move-result v0

    if-le v0, v5, :cond_5c

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->f()V

    :cond_5c
    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->e()V

    :cond_5f
    :goto_5f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    goto :goto_5f

    :pswitch_6b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->a:F

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->e:Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_8a

    cmpl-float v1, v0, v3

    if-lez v1, :cond_92

    :cond_8a
    div-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(F)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->d()V

    goto :goto_5f

    :cond_92
    iget-boolean v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->n:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_5f

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_ac

    cmpg-float v1, v0, v3

    if-gez v1, :cond_5f

    :cond_ac
    neg-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->b(F)V

    goto :goto_5f

    :cond_b2
    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->n:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->getBottomMargin()I

    move-result v0

    if-le v0, v5, :cond_cb

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->f()V

    :cond_cb
    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->e()V

    goto :goto_5f

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_64
        :pswitch_1c
        :pswitch_6b
    .end packed-switch
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-ne v0, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->l:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    new-instance v1, Lcom/mchsdk/paysdk/view/xlist/XListView$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView$2;-><init>(Lcom/mchsdk/paysdk/view/xlist/XListView;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2c
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->k:Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListViewFooter;->setState(I)V

    goto :goto_4
.end method

.method public setPullRefreshEnable(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->i:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_c
.end method

.method public setXListViewListener(Lcom/mchsdk/paysdk/view/xlist/XListView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView;->d:Lcom/mchsdk/paysdk/view/xlist/XListView$a;

    return-void
.end method
