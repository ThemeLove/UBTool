.class public Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Ljava/lang/String;

.field j:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field k:Landroid/view/View$OnClickListener;

.field l:Landroid/view/View$OnClickListener;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/ImageView;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->t:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->s:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;Lcom/mchsdk/paysdk/dialog/MCTipDialog;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->s:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 3

    const-string v0, "id_edit_username"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->m:Landroid/widget/EditText;

    const-string v0, "id_user_pwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->n:Landroid/widget/EditText;

    const-string v0, "id_bton_ok"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->o:Landroid/widget/Button;

    const-string v0, "id_iv_close"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->p:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->t:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_23
    return-void
.end method

.method protected a(Lcom/mchsdk/paysdk/e/d;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->f(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->g()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->a(F)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->k()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->b(F)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v0, "\u68a6\u521bsdk"

    :cond_5c
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->f:Landroid/widget/TextView;

    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->g()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->h:Landroid/widget/TextView;

    const-string v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->k()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_personal_info_setuser"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCSetUserNameActivity;->c()V

    return-void
.end method
