.class public Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;

# interfaces
.implements Lcom/mchsdk/paysdk/view/xlist/XListView$a;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View$OnClickListener;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/mchsdk/paysdk/view/xlist/XListView;

.field private h:Lcom/mchsdk/paysdk/adapter/c;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->f:Ljava/util/List;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->i:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->d()V

    return-void
.end method

.method private c()V
    .registers 4

    const/16 v2, 0x8

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Lcom/mchsdk/paysdk/a/o;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    :goto_2d
    return-void

    :cond_2e
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->d()V

    goto :goto_2d
.end method

.method private d()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8d26\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6e38\u620f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/paysdk/a/m;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MCGameRecordActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountTxt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " gameNameTxt:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/h;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/h;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/h;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private e()V
    .registers 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5145\u503c\u8bb0\u5f55"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "ll_mch_redord_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "txt_mch_redord_account"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c:Landroid/widget/TextView;

    const-string v0, "txt_mch_redord_gamename"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->d:Landroid/widget/TextView;

    const-string v0, "txt_mch_redord_tip"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "xlistview_mch_record"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/view/xlist/XListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    new-instance v0, Lcom/mchsdk/paysdk/adapter/c;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/mchsdk/paysdk/adapter/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->h:Lcom/mchsdk/paysdk/adapter/c;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->h:Lcom/mchsdk/paysdk/adapter/c;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullLoadEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullRefreshEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setXListViewListener(Lcom/mchsdk/paysdk/view/xlist/XListView$a;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v3}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setDividerHeight(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$4;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected a(Lcom/mchsdk/paysdk/e/h;)V
    .registers 5

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "MCGameRecordActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#handlerRecordList  size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/h;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/h;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->h:Lcom/mchsdk/paysdk/adapter/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/adapter/c;->notifyDataSetChanged()V

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->g:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3a
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_game_record"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->e()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCGameRecordActivity;->c()V

    return-void
.end method
