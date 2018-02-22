.class public Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;

# interfaces
.implements Lsdk/pay/c/d;


# instance fields
.field protected a:Landroid/app/Dialog;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/Toast;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Lsdk/pay/a;

.field private j:I

.field private k:Z

.field private l:Lcom/mchsdk/paysdk/e/i;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;I)I
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "jft"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/e/i;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "MCJFTPayActivity"

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->l:Lcom/mchsdk/paysdk/e/i;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/i;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->v:Ljava/lang/String;

    const-string v0, "jft"

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lsdk/pay/d/a;

    const-string v2, "\u5fae\u4fe1"

    const/4 v3, 0x3

    const-string v4, "\u5fae\u4fe1"

    invoke-direct {v1, v2, v3, v4}, Lsdk/pay/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lsdk/pay/d/a;

    const-string v2, "\u652f\u4ed8\u5b9d"

    const/4 v3, 0x4

    const-string v4, "\u652f\u4ed8\u5b9d"

    invoke-direct {v1, v2, v3, v4}, Lsdk/pay/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/mchsdk/paysdk/adapter/a;

    invoke-direct {v1, v0, p0}, Lcom/mchsdk/paysdk/adapter/a;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->j:I

    return v0
.end method

.method private c()Lsdk/pay/d/b;
    .registers 10

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->t:Ljava/lang/String;

    iget-object v6, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->v:Ljava/lang/String;

    const-string v7, "MCJFTPayActivity"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lsdk/pay/d/b;

    invoke-direct {v7}, Lsdk/pay/d/b;-><init>()V

    invoke-virtual {v7, v1}, Lsdk/pay/d/b;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lsdk/pay/d/b;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lsdk/pay/d/b;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lsdk/pay/d/b;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lsdk/pay/d/b;->e(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lsdk/pay/d/b;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lsdk/pay/d/b;->g(Ljava/lang/String;)V

    return-object v7
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Lsdk/pay/d/b;
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c()Lsdk/pay/d/b;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 3

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u7ae3\u4ed8\u901a\u652f\u4ed8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "junpay_TextView_name"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->f:Landroid/widget/TextView;

    const-string v0, "junpay_TextView_price"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->g:Landroid/widget/TextView;

    const-string v0, "junpay_listview"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e:Landroid/widget/ListView;

    const-string v0, "junpay_button_submit"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->h:Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e:Landroid/widget/ListView;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Lsdk/pay/a;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    return-object v0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activty_mch_jft_pay"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->d()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a()V

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->c:Landroid/widget/Toast;

    new-instance v0, Lsdk/pay/a;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->m:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lsdk/pay/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c/d;Z)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->b()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    invoke-virtual {v0}, Lsdk/pay/a;->a()V

    :cond_9
    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onPause()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onResume()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->k:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->i:Lsdk/pay/a;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V

    invoke-virtual {v0, v1}, Lsdk/pay/a;->a(Lsdk/pay/c/b;)V

    :cond_15
    return-void
.end method
