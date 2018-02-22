.class public Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field A:Landroid/widget/EditText;

.field B:Landroid/widget/EditText;

.field C:Landroid/widget/Button;

.field D:Landroid/widget/Button;

.field E:Landroid/widget/TextView;

.field F:Landroid/widget/TextView;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Landroid/content/Context;

.field K:Ljava/lang/String;

.field L:Landroid/view/View$OnClickListener;

.field M:Landroid/view/View$OnClickListener;

.field N:Landroid/os/Handler;

.field O:Lcom/mchsdk/paysdk/g/b;

.field public P:Landroid/os/Handler;

.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/view/View;

.field n:Landroid/view/View;

.field o:Landroid/view/View;

.field p:Landroid/widget/EditText;

.field q:Landroid/widget/Button;

.field r:Landroid/widget/ScrollView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/Button;

.field v:Landroid/widget/EditText;

.field w:Landroid/widget/Button;

.field x:Landroid/widget/Button;

.field y:Landroid/widget/ScrollView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->M:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->N:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->O:Lcom/mchsdk/paysdk/g/b;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$6;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->P:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i()V

    return-void
.end method

.method private g()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    return-void
.end method

.method private h()V
    .registers 3

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u5fd8\u8bb0\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step_subacc"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a:Landroid/widget/TextView;

    const-string v0, "step_secval"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b:Landroid/widget/TextView;

    const-string v0, "step_respwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c:Landroid/widget/TextView;

    const-string v0, "step_succes"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d:Landroid/widget/TextView;

    const-string v0, "step_subacc_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e:Landroid/widget/TextView;

    const-string v0, "step_secval_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f:Landroid/widget/TextView;

    const-string v0, "step_respwd_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g:Landroid/widget/TextView;

    const-string v0, "step_succes_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h:Landroid/widget/TextView;

    const-string v0, "rl_mch_forgetpwd_first"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i:Landroid/widget/RelativeLayout;

    const-string v0, "ll_mch_forgetpwd_second"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    const-string v0, "ll_mch_forgetpwd_third"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->k:Landroid/widget/LinearLayout;

    const-string v0, "forgetpassword_stepthree_sc"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->y:Landroid/widget/ScrollView;

    const-string v0, "ll_mch_forgetpwd_fourth"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->l:Landroid/widget/LinearLayout;

    const-string v0, "line_forgetpwd_1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->m:Landroid/view/View;

    const-string v0, "line_forgetpwd_2"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->n:Landroid/view/View;

    const-string v0, "line_forgetpwd_3"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->o:Landroid/view/View;

    const-string v0, "stepone_et_username"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->p:Landroid/widget/EditText;

    const-string v0, "stepone_btn_submit"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "teptwo_tv_useraccount"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->s:Landroid/widget/TextView;

    const-string v0, "teptwo_tv_phonenumber"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->t:Landroid/widget/TextView;

    const-string v0, "teptwo_btn_checknumber"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "teptwo_et_checknumber"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->v:Landroid/widget/EditText;

    const-string v0, "teptwo_btn_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->w:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "teptwo_btn_next"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "frogetpassword_steptwo_sc"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->r:Landroid/widget/ScrollView;

    const-string v0, "tempthree_tv_account"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->z:Landroid/widget/TextView;

    const-string v0, "tempthree_et_newpassword"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->A:Landroid/widget/EditText;

    const-string v0, "tempthree_et_subnewpassword"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->B:Landroid/widget/EditText;

    const-string v0, "tempthree_btn_submit"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->D:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->D:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "tempthree_btn_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->C:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->C:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "stepfour_tv_current"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->E:Landroid/widget/TextView;

    const-string v0, "stepfour_tv_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->F:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->u:Landroid/widget/Button;

    const-string v1, "mc_login_reg_phone_num_disable"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/ac;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ac;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->P:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ac;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    const v3, 0x55434343

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->m:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->n:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->o:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->y:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step4_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e:Landroid/widget/TextView;

    const v1, -0xe0303b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method b()V
    .registers 6

    const/4 v4, 0x0

    const v3, 0x4c3c3c3c

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->m:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->n:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->o:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->y:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step4_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f:Landroid/widget/TextView;

    const v1, -0x178f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method c()V
    .registers 6

    const/4 v4, 0x0

    const v3, 0x4c3c3c3c

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->m:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->n:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->o:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->y:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step4_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step4_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g:Landroid/widget/TextView;

    const v1, -0x178f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method d()V
    .registers 8

    const/16 v6, 0x21

    const/4 v5, 0x4

    const v4, 0x4c3c3c3c

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->m:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->n:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->o:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->r:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->y:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step4_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h:Landroid/widget/TextView;

    const v1, -0x178f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u8fd4\u56de\u5e73\u53f0"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x66004c00

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected e()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->A:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->B:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u786e\u8ba4\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_38
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u4e24\u6b21\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_46
    new-instance v1, Lcom/mchsdk/paysdk/f/c/f;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/f;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/f/c/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->K:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/f;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->P:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/f;->a(Landroid/os/Handler;)V

    goto :goto_29
.end method

.method protected f()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u7528\u6237\u540d"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    const-string v1, "^[a-zA-Z0-9_]{6,15}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    const-string v1, "\u7528\u6237\u540d\u8f93\u5165\u4e0d\u5408\u6cd5"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2c
    new-instance v1, Lcom/mchsdk/paysdk/f/c/z;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/z;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/f/c/z;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->P:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/z;->a(Landroid/os/Handler;)V

    goto :goto_1b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_forgetpassword"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->J:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->h()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->a()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->g()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onPause()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->O:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onResume()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->O:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    return-void
.end method
