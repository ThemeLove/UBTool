.class public Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/Button;

.field C:Landroid/widget/TextView;

.field D:Landroid/view/View$OnClickListener;

.field E:Landroid/view/View$OnClickListener;

.field F:Landroid/view/View$OnClickListener;

.field G:Landroid/os/Handler;

.field H:Landroid/os/Handler;

.field I:Lcom/mchsdk/paysdk/g/b;

.field J:Lcom/mchsdk/paysdk/g/b;

.field public K:Landroid/os/Handler;

.field public L:Landroid/os/Handler;

.field private M:I

.field private N:I

.field a:Landroid/app/Activity;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/widget/RelativeLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/EditText;

.field o:Landroid/widget/Button;

.field p:Landroid/widget/EditText;

.field q:Landroid/widget/EditText;

.field r:Landroid/widget/Button;

.field s:Landroid/widget/Button;

.field t:Landroid/widget/Button;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/EditText;

.field x:Landroid/widget/Button;

.field y:Landroid/widget/Button;

.field z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->N:I

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->E:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->G:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->H:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$6;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->I:Lcom/mchsdk/paysdk/g/b;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$7;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$7;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$8;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->K:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$9;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity$9;-><init>(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->L:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->N:I

    return v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;I)I
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->N:I

    return p1
.end method

.method private b()V
    .registers 3

    const-string v0, "MCBindPhoneActivity"

    const-string v1, "fun#initView"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tv_mch_header_title"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u5b89\u5168\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "iv_mch_header_back"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v0, "step_verifyidentity"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v0, "step_securityphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    const-string v0, "step1_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e:Landroid/widget/TextView;

    const-string v0, "step_verifyidentity_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v0, "step_securityphone_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    const-string v0, "line_bindphone_1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h:Landroid/view/View;

    const-string v0, "line_bindphone_2"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i:Landroid/view/View;

    const-string v0, "bindphone_body_setup1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->j:Landroid/widget/RelativeLayout;

    const-string v0, "bindphone_body_setup2"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k:Landroid/widget/LinearLayout;

    const-string v0, "bindphone_body_setsuccess"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l:Landroid/widget/LinearLayout;

    const-string v0, "mch_ll_unbindphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->m:Landroid/widget/LinearLayout;

    const-string v0, "edt_bindphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->n:Landroid/widget/EditText;

    const-string v0, "btn_bindphone1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step2_edt_phone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->p:Landroid/widget/EditText;

    const-string v0, "step2_edt_checknum"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->q:Landroid/widget/EditText;

    const-string v0, "step2_btn_checknum"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step2_btn_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step2_btn_next"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ll_unbindphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->z:Landroid/widget/LinearLayout;

    const-string v0, "txt_bindphone_tip"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->u:Landroid/widget/TextView;

    const-string v0, "txt_unbindphone_tip"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "step_verifyidentity"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v0, "step_securityphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string v0, "step_verifyidentity_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "step_securityphone_"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "text_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->A:Landroid/widget/TextView;

    const-string v0, "edt_unbindphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->w:Landroid/widget/EditText;

    const-string v0, "btn_msg_mm"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->B:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "btn_msg_mm"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->x:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "btn_submit_unbindstep1"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "text_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->o()V

    return-void
.end method

.method private c()V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->I:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const-string v1, "mc_login_reg_phone_num"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_48
    return-void

    :cond_49
    const-string v1, "^1[0-9]{10}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_48

    :cond_59
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const-string v2, "mc_login_reg_phone_num_disable"

    invoke-virtual {p0, v2}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->r:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/mchsdk/paysdk/f/c/ac;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/ac;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->K:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ac;->a(Landroid/os/Handler;)V

    goto :goto_48
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l()V

    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u5bc6\u7801\u8f93\u5165\u4e0d\u6b63\u786e"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1b

    :cond_34
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h()V

    goto :goto_1b
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->m()V

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u5148\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    const-string v2, "^1[0-9]{10}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_3a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_48
    :try_start_48
    new-instance v2, Lcom/mchsdk/paysdk/f/c/x;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/f/c/x;-><init>()V

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/f/c/x;->a(Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/f/c/x;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/mchsdk/paysdk/f/c/x;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->K:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Lcom/mchsdk/paysdk/f/c/x;->a(Landroid/os/Handler;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5d} :catch_5e

    goto :goto_29

    :catch_5e
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d()V

    return-void
.end method

.method private f()V
    .registers 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->M:I

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g()V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g()V

    :cond_17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_71

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_71

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->j()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7 | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "\u89e3\u9664\u7ed1\u5b9a"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_71
    return-void
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c()V

    return-void
.end method

.method private g()V
    .registers 3

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g()V

    return-void
.end method

.method private h()V
    .registers 3

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->m()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e()V

    return-void
.end method

.method private i()V
    .registers 3

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->n()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private j()V
    .registers 3

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->z:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private k()V
    .registers 3

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i:Landroid/view/View;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_grey"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    const-string v1, "#a0a0a0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b:Landroid/widget/TextView;

    const-string v1, "mch_step1_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->c:Landroid/widget/TextView;

    const-string v1, "mch_step2_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d:Landroid/widget/TextView;

    const-string v1, "mch_step3_80x80_blue"

    invoke-virtual {p0, v1}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->e:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->g:Landroid/widget/TextView;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->h:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i:Landroid/view/View;

    const-string v1, "#1fcfc5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private o()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    :try_start_1c
    new-instance v1, Lcom/mchsdk/paysdk/f/c/ab;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/c/ab;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->L:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/c/ab;->a(Landroid/os/Handler;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_29} :catch_2a

    goto :goto_1b

    :catch_2a
    move-exception v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v2, "\u7a0b\u5e8f\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/m;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->i()V

    return-void
.end method

.method a(Lcom/mchsdk/paysdk/a/p;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->c()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f,\u8bf7\u67e5\u6536"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method b(Lcom/mchsdk/paysdk/a/p;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->c()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f,\u8bf7\u67e5\u6536"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->w:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->a:Landroid/app/Activity;

    const-string v0, "activity_mch_personal_info_bindphone2"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->b()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->f()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onPause()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->I:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->b(Lcom/mchsdk/paysdk/g/b;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onResume()V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;->J:Lcom/mchsdk/paysdk/g/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    return-void
.end method
