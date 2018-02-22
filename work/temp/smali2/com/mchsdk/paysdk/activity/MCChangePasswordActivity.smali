.class public Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field a:Lcom/mchsdk/paysdk/view/util/b;

.field b:Landroid/app/Activity;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field g:Landroid/widget/EditText;

.field h:Landroid/widget/EditText;

.field i:Landroid/widget/Button;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Landroid/view/View$OnClickListener;

.field p:Landroid/view/View$OnClickListener;

.field q:Landroid/view/View$OnClickListener;

.field public r:Landroid/os/Handler;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    const-string v0, "MCChangePasswordActivity"

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->s:Ljava/lang/String;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;-><init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;-><init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$4;-><init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "tv_mch_header_title"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u4fee\u6539\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "iv_mch_header_back"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "iv_mch_header_close"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c:Ljava/lang/String;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/d;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->d:Ljava/lang/String;

    const-string v0, "edt_oldPwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->e:Landroid/widget/EditText;

    const-string v0, "edt_newPwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->f:Landroid/widget/EditText;

    const-string v0, "edt_subPwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->g:Landroid/widget/EditText;

    const-string v0, "edt_cheNum"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->h:Landroid/widget/EditText;

    const-string v0, "btnSub"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/mchsdk/paysdk/view/util/b;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/view/util/b;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a:Lcom/mchsdk/paysdk/view/util/b;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a:Lcom/mchsdk/paysdk/view/util/b;

    const/16 v1, 0x64

    const/16 v2, 0x32

    invoke-virtual {v0, p0, v1, v2}, Lcom/mchsdk/paysdk/view/util/b;->a(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->n:Ljava/lang/String;

    const-string v0, "imageview"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/c;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/c;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/c;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/c;->c(Ljava/lang/String;)V

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->r:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/c;->a(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    const/16 v3, 0x64

    const/16 v2, 0x32

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u672a\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u539f\u59cb\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u539f\u59cb\u5bc6\u7801\u4e0d\u6b63\u786e"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a:Lcom/mchsdk/paysdk/view/util/b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3, v2}, Lcom/mchsdk/paysdk/view/util/b;->a(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->n:Ljava/lang/String;

    goto :goto_13

    :cond_40
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_50
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u8bf7\u8f93\u5165\u786e\u8ba4\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_60
    const-string v0, "^[a-zA-Z0-9]{6,15}$"

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u5bc6\u7801\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_72
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u65b0\u5bc6\u7801\u4e0e\u786e\u8ba4\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_84
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u65b0\u5bc6\u7801\u4e0e\u539f\u59cb\u5bc6\u7801\u76f8\u540c"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_97
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    :cond_a9
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v1, "\u9a8c\u8bc1\u7801\u8f93\u5165\u6709\u8bef"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a:Lcom/mchsdk/paysdk/view/util/b;

    invoke-virtual {v0, p0, v3, v2}, Lcom/mchsdk/paysdk/view/util/b;->a(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->n:Ljava/lang/String;

    goto/16 :goto_13

    :cond_ba
    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->c()V

    goto/16 :goto_13
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const-string v0, "activity_mch_personal_info_chgpwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b()V

    return-void
.end method
