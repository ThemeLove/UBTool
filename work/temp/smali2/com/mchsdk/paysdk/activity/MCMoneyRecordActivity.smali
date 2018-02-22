.class public Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;

# interfaces
.implements Lcom/mchsdk/paysdk/view/xlist/XListView$a;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View$OnClickListener;

.field private final e:I

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/mchsdk/paysdk/view/xlist/XListView;

.field private i:Lcom/mchsdk/paysdk/adapter/d;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->g:Ljava/util/List;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->j:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    return v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    return-object v0
.end method

.method private c()V
    .registers 3

    const/16 v1, 0x8

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    new-instance v0, Lcom/mchsdk/paysdk/a/o;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    :goto_2a
    return-void

    :cond_2b
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->d()V

    goto :goto_2a
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->d()V

    return-void
.end method

.method private d()V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d26\u53f7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "MCMoneyRecordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountTxt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->e()V

    return-void
.end method

.method private e()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/n;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/n;-><init>()V

    iget v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/n;->a(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/n;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private f()V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u5145\u503c\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "txt_mch_redord_account"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b:Landroid/widget/TextView;

    const-string v0, "txt_mch_total"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c:Landroid/widget/TextView;

    const-string v0, "txt_mch_redord_tip"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "xlistview_mch_record"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/view/xlist/XListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    new-instance v0, Lcom/mchsdk/paysdk/adapter/d;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->g:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/mchsdk/paysdk/adapter/d;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->i:Lcom/mchsdk/paysdk/adapter/d;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->i:Lcom/mchsdk/paysdk/adapter/d;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullLoadEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullRefreshEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setXListViewListener(Lcom/mchsdk/paysdk/view/xlist/XListView$a;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setDividerHeight(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->e()V

    return-void
.end method

.method protected a(Lcom/mchsdk/paysdk/e/b;)V
    .registers 6

    const/4 v3, 0x1

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    if-ne v0, v3, :cond_22

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->b()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->b()V

    :cond_14
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    if-eqz v0, :cond_2f

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    if-ne v0, v3, :cond_97

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->b()V

    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a3

    const-string v0, "MCMoneyRecordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#handlerRecordList  size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->i:Lcom/mchsdk/paysdk/adapter/d;

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    if-ne v0, v3, :cond_9d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->i:Lcom/mchsdk/paysdk/adapter/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/adapter/d;->notifyDataSetInvalidated()V

    :cond_75
    :goto_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5171"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    :cond_97
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->h:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->c()V

    goto :goto_2f

    :cond_9d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->i:Lcom/mchsdk/paysdk/adapter/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/adapter/d;->notifyDataSetChanged()V

    goto :goto_75

    :cond_a3
    const-string v0, "\u6682\u65e0\u66f4\u591a\u5145\u503c\u8bb0\u5f55\uff01"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_21
.end method

.method public b()V
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f:I

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->e()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_money_record"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->f()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c()V

    return-void
.end method
