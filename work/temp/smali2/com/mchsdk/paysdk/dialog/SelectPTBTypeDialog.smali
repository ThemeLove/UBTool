.class public Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    }
.end annotation


# static fields
.field private static o:Lcom/mchsdk/paysdk/e/e;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/ImageView;

.field i:Landroid/view/View$OnClickListener;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/Boolean;

.field private l:Lcom/mchsdk/paysdk/b/e;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/widget/TextView;

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->p:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$2;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->p:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Lcom/mchsdk/paysdk/b/e;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->l:Lcom/mchsdk/paysdk/b/e;

    return-object v0
.end method

.method static synthetic a()Lcom/mchsdk/paysdk/e/e;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->o:Lcom/mchsdk/paysdk/e/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/e/e;)Lcom/mchsdk/paysdk/e/e;
    .registers 1

    sput-object p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->o:Lcom/mchsdk/paysdk/e/e;

    return-object p0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->k:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(I)V
    .registers 3

    sget-object v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->o:Lcom/mchsdk/paysdk/e/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->p:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->n:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->m:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Lcom/mchsdk/paysdk/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->l:Lcom/mchsdk/paysdk/b/e;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCSelectPTBTypeDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_select_ptb_type"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1a

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->k:Ljava/lang/Boolean;

    const-string v0, "s_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_title"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_44
    const-string v0, "s_user_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_userptb"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_67
    const-string v0, "s_game_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_bindptb"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c8

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8a
    const-string v0, "s_pay_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v5, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "tx_mch_select_ptb_gameptb"

    invoke-static {v5, v6, v7}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_ca
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v5, "tv_money"

    invoke-static {v2, v3, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "iv_mch_pay_close"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "ll_ptb"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "ll_ptb_bind"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_bind"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_un"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_bind_un"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "btn_mch_dialog_ptbpay"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "cancelable"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->setCancelable(Z)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a8} :catch_1b5

    :goto_1a8
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a:Landroid/view/View;

    goto/16 :goto_19

    :cond_1ac
    const/4 v3, 0x0

    :try_start_1ad
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b3} :catch_1b5

    goto/16 :goto_44

    :catch_1b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a8

    :cond_1ba
    :try_start_1ba
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_67

    :cond_1c8
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8a

    :cond_1d6
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1dd} :catch_1b5

    goto/16 :goto_ca
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    return-void
.end method

.method public onStart()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-lt v1, v3, :cond_43

    const v1, 0x3f866666

    const v3, 0x3f333333

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_3a
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void

    :cond_43
    const/high16 v1, 0x3f400000

    const/high16 v3, 0x3f000000

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3a
.end method
