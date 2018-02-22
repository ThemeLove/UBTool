.class public Lcom/mchsdk/paysdk/activity/MCPacksActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;

# interfaces
.implements Lcom/mchsdk/paysdk/view/xlist/XListView$a;


# instance fields
.field a:Lcom/lidroid/xutils/BitmapUtils;

.field b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field c:Landroid/content/DialogInterface$OnKeyListener;

.field d:Landroid/view/View$OnClickListener;

.field private e:Lcom/mchsdk/paysdk/view/xlist/XListView;

.field private f:Lcom/mchsdk/paysdk/adapter/e;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->g:Ljava/util/List;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->h:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->c:Landroid/content/DialogInterface$OnKeyListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPacksActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/adapter/e;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->f:Lcom/mchsdk/paysdk/adapter/e;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)Lcom/mchsdk/paysdk/view/xlist/XListView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    return-object v0
.end method

.method private c()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lcom/mchsdk/paysdk/a/o;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPacksActivity$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->d()V

    goto :goto_1b
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->b:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    new-instance v0, Lcom/mchsdk/paysdk/f/c/g;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/g;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/g;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->d()V

    return-void
.end method

.method private e()V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/d;->a(Landroid/content/Context;)Lcom/lidroid/xutils/BitmapUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->a:Lcom/lidroid/xutils/BitmapUtils;

    const-string v0, "tv_mch_header_title"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u793c\u5305\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "xlistview_mch_pack"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/view/xlist/XListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    new-instance v0, Lcom/mchsdk/paysdk/adapter/e;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->a:Lcom/lidroid/xutils/BitmapUtils;

    iget-object v5, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->h:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/adapter/e;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lcom/lidroid/xutils/BitmapUtils;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->f:Lcom/mchsdk/paysdk/adapter/e;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->f:Lcom/mchsdk/paysdk/adapter/e;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v6}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullLoadEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v6}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setPullRefreshEnable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, p0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setXListViewListener(Lcom/mchsdk/paysdk/view/xlist/XListView$a;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0, v6}, Lcom/mchsdk/paysdk/view/xlist/XListView;->setDividerHeight(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPacksActivity$5;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCPacksActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_packs"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->e()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPacksActivity;->c()V

    return-void
.end method
