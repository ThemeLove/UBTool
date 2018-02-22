.class public Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field b:Landroid/content/Context;

.field c:Lcom/mchsdk/paysdk/b/f;

.field d:Landroid/view/View$OnClickListener;

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:I

.field private i:F

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Landroid/widget/Button;

.field private final s:Landroid/os/Handler;

.field private final t:Landroid/os/Handler;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Lcom/mchsdk/paysdk/a/b/b;

.field private w:Landroid/os/Handler;

.field private x:Lcom/mchsdk/paysdk/b/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->e:I

    iput v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->g:I

    iput v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->h:I

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->s:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->t:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->v:Lcom/mchsdk/paysdk/a/b/b;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c:Lcom/mchsdk/paysdk/b/f;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$7;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->w:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$8;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->x:Lcom/mchsdk/paysdk/b/a;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$9;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d:Landroid/view/View$OnClickListener;

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

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Lcom/mchsdk/paysdk/e/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/e/g;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/mchsdk/paysdk/e/g;)V
    .registers 7

    const/4 v1, -0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_52

    const-string v0, "MCAddPtbMoneyActivity"

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->c()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x3

    :goto_16
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->b()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->a()Z

    move-result v4

    if-eqz v4, :cond_55

    const/4 v0, 0x2

    move v4, v0

    :goto_25
    if-eq v1, v4, :cond_2c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2c
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->a()Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v2

    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_59

    move v0, v2

    :goto_41
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/g;->c()Z

    move-result v1

    if-eqz v1, :cond_5b

    :goto_4c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(I)V

    :cond_52
    return-void

    :cond_53
    move v0, v1

    goto :goto_16

    :cond_55
    move v4, v0

    goto :goto_25

    :cond_57
    move v0, v3

    goto :goto_35

    :cond_59
    move v0, v3

    goto :goto_41

    :cond_5b
    move v2, v3

    goto :goto_4c
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->r:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/p;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/p;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/p;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->k:Landroid/widget/EditText;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l()V

    new-instance v0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-void
.end method

.method private f()V
    .registers 3

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u6bdb\u8c46\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "MCAddPtbMoneyActivity"

    invoke-static {v0, p1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "edt_mch_account"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->k:Landroid/widget/EditText;

    const-string v0, "btn_mch_addptb"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$3;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "txt_mch_pay_rmb"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->j:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "edt_mch_ptb_number"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/mchsdk/paysdk/h/a;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->r:Landroid/widget/Button;

    invoke-direct {v1, v2, v3, v0}, Lcom/mchsdk/paysdk/h/a;-><init>(Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-string v0, "ll_mch_addptb_zfb"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->m:Landroid/widget/LinearLayout;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "imgbtn_mch_sel_zfb"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->p:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->p:Landroid/widget/ImageButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->p:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ll_mch_addptb_wx"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l:Landroid/widget/LinearLayout;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "imgbtn_mch_sel_wx"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->o:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->o:Landroid/widget/ImageButton;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->o:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ll_mch_addptb_jby"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->n:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->n:Landroid/widget/LinearLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->n:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "imgbtn_mch_sel_jby"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->q:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->q:Landroid/widget/ImageButton;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->q:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/i;->a(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_26

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v0, "\u8bf7\u91cd\u65b0\u8f93\u5165\u5145\u503c\u6570\u91cf"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f(Ljava/lang/String;)V

    goto :goto_25
.end method

.method private i()V
    .registers 7

    new-instance v1, Lcom/mchsdk/paysdk/a/b/c;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/mchsdk/paysdk/a/b/c;-><init>(Landroid/app/Activity;)V

    const-string v0, "\u6bdb\u8c46"

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u6bdb\u8c46\u5145\u503c"

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->v:Lcom/mchsdk/paysdk/a/b/b;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mchsdk/paysdk/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mchsdk/paysdk/a/b/b;)V

    return-void
.end method

.method private j()V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->c:Lcom/mchsdk/paysdk/b/f;

    invoke-static {v0}, Lcom/mchsdk/open/ApiCallback;->setWXPayCallback(Lcom/mchsdk/paysdk/b/f;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/ad;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ad;-><init>()V

    const-string v1, "\u6bdb\u8c46"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->b(Ljava/lang/String;)V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->c(Ljava/lang/String;)V

    const-string v1, "\u6bdb\u8c46\u5145\u503c"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->d(Ljava/lang/String;)V

    const-string v1, "\u6bdb\u8c46\u5145\u503c"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->a(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ad;->a(Landroid/os/Handler;)V

    const-string v0, "\u6b63\u5728\u7ed9\u5fae\u4fe1\u4e0b\u5355.."

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->x:Lcom/mchsdk/paysdk/b/a;

    invoke-static {v0}, Lcom/mchsdk/open/ApiCallback;->setJBYCallback(Lcom/mchsdk/paysdk/b/a;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCJBYPayActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "goodsname"

    const-string v3, "\u6bdb\u8c46"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "goodsprice"

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "remark"

    const-string v3, "\u6bdb\u8c46\u5145\u503c"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extend"

    const-string v3, "\u6bdb\u8c46\u5145\u503c"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paytype"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private l()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog;->dismiss()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    iget v2, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/e/d;->a(F)V

    const-string v1, "MCAddPtbMoneyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rmb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ptbOld = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u66f4\u65b0\u6bdb\u8c46\u6210\u529f"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method protected a(I)V
    .registers 4

    iput p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->h:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->p:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_uncheck"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->q:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_uncheck"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->o:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_uncheck"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    packed-switch p1, :pswitch_data_4c

    :goto_26
    return-void

    :pswitch_27
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->p:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_check"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_26

    :pswitch_33
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->o:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_check"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_26

    :pswitch_3f
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->q:Landroid/widget/ImageButton;

    const-string v1, "mch_choosepay_3030_check"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_26

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_27
        :pswitch_3f
    .end packed-switch
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/mchsdk/paysdk/e/d;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->h()V

    :cond_7
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/k;->c()Lcom/mchsdk/open/PayCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mchsdk/open/PayCallback;->callback(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->h()V

    goto :goto_19

    :cond_2c
    new-instance v0, Lcom/mchsdk/paysdk/f/c/z;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/z;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->b(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->t:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->a(Landroid/os/Handler;)V

    goto :goto_19
.end method

.method protected c()V
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->h:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i()V

    goto :goto_5

    :pswitch_a
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->j()V

    goto :goto_5

    :pswitch_e
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->k()V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_add_platform_money"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->b:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->i:F

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->f()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->g()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->e()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->d()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-direct {p0, p1, p3}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(I[I)V

    return-void
.end method
