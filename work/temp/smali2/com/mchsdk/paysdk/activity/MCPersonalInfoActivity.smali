.class public Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field A:Landroid/view/View$OnClickListener;

.field private B:I

.field private C:Ljava/lang/String;

.field private final D:I

.field private final E:I

.field private final F:I

.field private G:Landroid/os/Handler;

.field private H:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field private I:Ljava/lang/String;

.field a:Landroid/widget/RelativeLayout;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/RelativeLayout;

.field j:Landroid/view/View;

.field k:Landroid/widget/RelativeLayout;

.field l:Landroid/view/View;

.field m:Landroid/widget/RelativeLayout;

.field n:Landroid/view/View;

.field o:Landroid/widget/RelativeLayout;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/Button;

.field r:Landroid/widget/Button;

.field s:Landroid/view/inputmethod/InputMethodManager;

.field t:Ljava/lang/String;

.field u:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

.field v:Landroid/view/View$OnClickListener;

.field w:Landroid/view/View$OnClickListener;

.field x:Landroid/app/Dialog;

.field y:Landroid/view/View$OnClickListener;

.field z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->D:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->E:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->F:I

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->G:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->v:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->w:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$5;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->z:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->A:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->H:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;Lcom/mchsdk/paysdk/dialog/MCTipDialog;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->H:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    return-object p1
.end method

.method private a(I)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "MCPersonalInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    packed-switch p1, :pswitch_data_62

    :goto_3c
    return-void

    :pswitch_3d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :pswitch_4d
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3c

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
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

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->e()V

    return-void
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    return v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->offLineAnnounce(Landroid/content/Context;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    const-string v1, "\u672a\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_31
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    const-string v1, "\u672a\u901a\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_46
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x3

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    const-string v1, "\u5df2\u8ba4\u8bc1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_5b
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x4

    iput v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->B:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    const-string v1, "\u5ba1\u6838\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->G:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
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

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$7;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$7;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/o;->a(Lcom/mchsdk/paysdk/a/o$a;)V

    :goto_1b
    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->e()V

    goto :goto_1b
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->C:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->H:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    new-instance v0, Lcom/mchsdk/paysdk/f/c/z;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/z;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->b(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->G:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/z;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private f()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->s:Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4e2a\u4eba\u4e2d\u5fc3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "txt_bind_phone_state"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->g:Landroid/widget/TextView;

    const-string v0, "rl_mch_current_nike"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "et_mch_update_nike"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    const-string v0, "txt_mch_nike_name"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->d:Landroid/widget/TextView;

    const-string v0, "txt_mch_float_account"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->e:Landroid/widget/TextView;

    const-string v0, "txt_ptb_money"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f:Landroid/widget/TextView;

    const-string v0, "txt_bind_ptb_money"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->h:Landroid/widget/TextView;

    const-string v0, "btn_perifo_ext"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->q:Landroid/widget/Button;

    const-string v0, "btn_logout"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_nike_name"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$8;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_update_nike"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "txt_mch_update_nike"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_update_pwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->i:Landroid/widget/RelativeLayout;

    const-string v0, "line_mch_updatepwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$9;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$9;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_update_visitorinfo"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->k:Landroid/widget/RelativeLayout;

    const-string v0, "line_mch_setusername"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->k:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$10;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$10;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_bind_phone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->m:Landroid/widget/RelativeLayout;

    const-string v0, "line_mch_bindphone"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_real_name_authentication"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->o:Landroid/widget/RelativeLayout;

    const-string v0, "txt_mch_real_name_authentication"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->o:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$12;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_money_record"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$13;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$13;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "rl_mch_add_ptb"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$14;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$14;-><init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b:Landroid/widget/RelativeLayout;

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

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/d;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_89

    const-string v0, "\u68a6\u521bsdk"

    :cond_89
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->h:Landroid/widget/TextView;

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

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/d;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne v0, p1, :cond_18

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b()V

    :cond_18
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1c

    :cond_1c
    const/16 v0, 0xc

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const-string v0, "activity_mch_personal_info"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->d()V

    return-void
.end method
