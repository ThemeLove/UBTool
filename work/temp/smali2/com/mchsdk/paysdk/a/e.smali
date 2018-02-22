.class public Lcom/mchsdk/paysdk/a/e;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Landroid/widget/CheckBox;

.field private C:Landroid/widget/TextView;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:F

.field private G:Landroid/os/Handler;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Lcom/mchsdk/paysdk/e/e;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Lcom/mchsdk/paysdk/b/a;

.field private O:Z

.field private P:Lcom/mchsdk/paysdk/b/e;

.field a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field b:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

.field c:Lcom/mchsdk/paysdk/b/f;

.field d:Landroid/view/View$OnClickListener;

.field public e:Landroid/os/Handler;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Landroid/widget/CheckBox;

.field private x:Landroid/widget/CheckBox;

.field private y:Landroid/widget/CheckBox;

.field private z:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->f:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->g:I

    iput v1, p0, Lcom/mchsdk/paysdk/a/e;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->i:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->j:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->k:I

    iput v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->D:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->E:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$1;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->G:Landroid/os/Handler;

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->I:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$4;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->K:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$5;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->L:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$6;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$7;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$7;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->c:Lcom/mchsdk/paysdk/b/f;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$8;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->N:Lcom/mchsdk/paysdk/b/a;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$9;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$10;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$10;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->P:Lcom/mchsdk/paysdk/b/e;

    new-instance v0, Lcom/mchsdk/paysdk/a/e$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/e$3;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->e:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/a/e;->a(Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->a()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;I)I
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    return p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_ptb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_ptb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->q:Landroid/widget/LinearLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_zfb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_zfb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->p:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_wx"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_wx"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->o:Landroid/widget/LinearLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_jby"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_jby"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->r:Landroid/widget/LinearLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_hfb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_hfb"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->s:Landroid/widget/LinearLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->s:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "ll_jft"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "cb_jft"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->t:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->t:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "btn_mc_pay"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "btn_mc_ptb_pay"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "txt_mch_user_discount"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->C:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "tv_goodname"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v2, "textView5"

    invoke-direct {p0, v2}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    const-string v1, "iv_mch_pay_back"

    invoke-direct {p0, v1}, Lcom/mchsdk/paysdk/a/e;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(I)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v0, "ChoosePayModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mch_choosepay_3030_check"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mch_choosepay_3030_uncheck"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    const-string v2, "\u7acb\u5373\u652f\u4ed8"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    packed-switch p1, :pswitch_data_ac

    :goto_75
    return-void

    :pswitch_76
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_75

    :pswitch_7c
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_75

    :pswitch_82
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_75

    :pswitch_88
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_75

    :pswitch_8e
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_75

    :pswitch_9e
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->u:Landroid/widget/Button;

    const-string v1, "\u524d\u5f80\u7ae3\u4ed8\u901a\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_75

    nop

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_88
        :pswitch_82
        :pswitch_7c
        :pswitch_76
        :pswitch_9e
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/a/e;->n:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .registers 6

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->k()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mchsdk/paysdk/e/i;

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/i;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/i;->j(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    const-class v3, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "jft"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Lcom/mchsdk/paysdk/e/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/e/g;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Lcom/mchsdk/paysdk/e/p;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/e/p;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->b(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mchsdk/paysdk/e/g;)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_7c

    const-string v0, "ChoosePayModel"

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_17
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v1

    :goto_23
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->c()Z

    move-result v0

    if-eqz v0, :cond_81

    move v0, v1

    :goto_2f
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->s:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->d()Z

    move-result v0

    if-eqz v0, :cond_83

    move v0, v1

    :goto_3b
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->e()Z

    move-result v3

    if-eqz v3, :cond_47

    move v2, v1

    :cond_47
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->d()Z

    move-result v0

    if-eqz v0, :cond_85

    const/4 v0, 0x4

    :goto_51
    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->c()Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x3

    :goto_5a
    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_89

    const/4 v0, 0x1

    :goto_63
    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->e()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v0, 0x5

    :goto_6c
    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v1, 0x2

    :cond_75
    iput v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    iget v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->a(I)V

    :cond_7c
    return-void

    :cond_7d
    move v0, v2

    goto :goto_17

    :cond_7f
    move v0, v2

    goto :goto_23

    :cond_81
    move v0, v2

    goto :goto_2f

    :cond_83
    move v0, v2

    goto :goto_3b

    :cond_85
    move v0, v1

    goto :goto_51

    :cond_87
    move v0, v1

    goto :goto_5a

    :cond_89
    move v0, v1

    goto :goto_63

    :cond_8b
    move v0, v1

    goto :goto_6c
.end method

.method private a(Lcom/mchsdk/paysdk/e/p;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x41200000

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->b()I

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->a()F

    move-result v0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->a()F

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->F:F

    const-string v0, "%.2f"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lcom/mchsdk/paysdk/a/e;->F:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->I:Ljava/lang/String;

    const-string v0, "\u6298\u6263:--"

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->b()I

    move-result v1

    if-ne v6, v1, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u9996\u51b2\u6298\u6263:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5b
    new-instance v0, Lcom/mchsdk/paysdk/e/e;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/e/e;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->J:Lcom/mchsdk/paysdk/e/e;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->J:Lcom/mchsdk/paysdk/e/e;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->J:Lcom/mchsdk/paysdk/e/e;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/e;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/p;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/p;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->G:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/p;->a(Landroid/os/Handler;)V

    return-void

    :cond_7b
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->b()I

    move-result v2

    if-ne v1, v2, :cond_51

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7eed\u51b2\u6298\u6263:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/p;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/a/e;->O:Z

    return p1
.end method

.method private b()V
    .registers 3

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/mchsdk/paysdk/a/e;->F:F

    new-instance v0, Lcom/mchsdk/paysdk/f/c/y;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/y;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->G:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/y;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->i()V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/a/e;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/e;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/mchsdk/paysdk/e/r;

    const-string v0, "%.2f"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/r;->b()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->D:Ljava/lang/String;

    const-string v0, "%.2f"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/r;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->E:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;-><init>()V

    const-string v1, "\u5e73\u53f0\u5e01"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bdb\u8c46\u4f59\u989d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->b(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e94\u4ed8\u6b3e\u5e73\u53f0\u5e01\u6570\u91cf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->d(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ee3\u91d1\u5238\u4f59\u989d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->c(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->P:Lcom/mchsdk/paysdk/b/e;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a(Lcom/mchsdk/paysdk/b/e;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e;->J:Lcom/mchsdk/paysdk/e/e;

    invoke-virtual {v1, v2, v0, v3}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/mchsdk/paysdk/e/e;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->b:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    return-void
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->v:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .registers 4

    const-string v0, "ChoosePayModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    if-ne v0, v1, :cond_23

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->e()V

    :cond_22
    :goto_22
    return-void

    :cond_23
    const/4 v0, 0x1

    iget v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->f()V

    goto :goto_22

    :cond_2c
    const/4 v0, 0x3

    iget v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    if-ne v0, v1, :cond_35

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->g()V

    goto :goto_22

    :cond_35
    const/4 v0, 0x4

    iget v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    if-eq v0, v1, :cond_22

    const/4 v0, 0x5

    iget v1, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->d()V

    goto :goto_22
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/e;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-void
.end method

.method private d()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/j;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/j;-><init>()V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getExtendInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->a(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/j;->a(Landroid/os/Handler;)V

    const-string v0, "\u7ed9\u4fca\u4ed8\u901a\u4e0b\u5355..."

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->j()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "ChoosePayModel"

    invoke-static {v0, p1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    const-string v1, "id"

    invoke-static {v0, v1, p1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->q:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private e()V
    .registers 3

    new-instance v1, Lcom/mchsdk/paysdk/a/b/c;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/mchsdk/paysdk/a/b/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/b/c;->a()V

    return-void
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->w:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->c:Lcom/mchsdk/paysdk/b/f;

    invoke-static {v0}, Lcom/mchsdk/open/ApiCallback;->setWXPayCallback(Lcom/mchsdk/paysdk/b/f;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/ad;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ad;-><init>()V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getExtendInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->a(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->a(Landroid/os/Handler;)V

    const-string v0, "\u7ed9\u5fae\u4fe1\u4e0b\u5355..."

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->r:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->N:Lcom/mchsdk/paysdk/b/a;

    invoke-static {v0}, Lcom/mchsdk/open/ApiCallback;->setJBYCallback(Lcom/mchsdk/paysdk/b/a;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "goodsname"

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "goodsprice"

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "remark"

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/open/OrderInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend"

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mchsdk/open/OrderInfo;->getExtendInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paytype"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->z:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private h()V
    .registers 3

    const-string v0, "\u83b7\u53d6\u5e73\u53f0\u5e01\u4fe1\u606f.."

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/aa;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/aa;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/aa;->a(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic i(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->c()V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/mchsdk/paysdk/a/o;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mchsdk/paysdk/a/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mchsdk/paysdk/a/e$11;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/a/e$11;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    goto :goto_11
.end method

.method static synthetic j(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->y:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private j()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->h()V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/mchsdk/paysdk/a/o;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mchsdk/paysdk/a/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/mchsdk/paysdk/a/e$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/a/e$2;-><init>(Lcom/mchsdk/paysdk/a/e;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    goto :goto_11
.end method

.method static synthetic k(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method static synthetic l(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->x:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic m(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->A:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic o(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/mchsdk/paysdk/a/e;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->B:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic q(Lcom/mchsdk/paysdk/a/e;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/a/e;->l:I

    return v0
.end method

.method static synthetic r(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/mchsdk/paysdk/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->c()V

    return-void
.end method

.method static synthetic v(Lcom/mchsdk/paysdk/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->h()V

    return-void
.end method

.method static synthetic w(Lcom/mchsdk/paysdk/a/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->k()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/mchsdk/paysdk/e/k;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/a/e;->k()V

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/k;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/a/e;->O:Z

    if-eqz v1, :cond_54

    const-string v1, "price"

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->H:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    const-string v1, "productname"

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tradeno"

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    const-class v3, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_53
    return-void

    :cond_54
    const-string v1, "price"

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/e;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_5c
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/k;->b()Ljava/lang/String;

    move-result-object v0

    :cond_6e
    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->d(Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/a/e;->b(Ljava/lang/String;)V

    goto :goto_53
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/f/c/m;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/m;-><init>()V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/m;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/m;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/m;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getExtendInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/m;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/f/c/m;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/m;->a(Landroid/os/Handler;)V

    const-string v0, "\u6b63\u5728\u4ea4\u6613..."

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/a/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/k;->c()Lcom/mchsdk/open/PayCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mchsdk/open/PayCallback;->callback(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1a
    return-void
.end method
