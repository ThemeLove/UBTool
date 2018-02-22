.class public Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/text/TextWatcher;

.field private c:Landroid/view/View;

.field private d:Landroid/support/v4/app/FragmentActivity;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$1;-><init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$2;-><init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment$3;-><init>(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->b:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/b;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/b;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/b;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/b;->a(Landroid/os/Handler;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "mch_et_toCertificate_name"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "ll_certificate_wrong"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "text_certificate_wrong"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "mch_et_toCertificate_card"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->b:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v1, "mch_attestation_button"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u59d3\u540d"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_29
    return v0

    :cond_2a
    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_3a
    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_58

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    const-string v3, "^[1-9]\\d{7}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_56
    move v0, v1

    goto :goto_29

    :cond_58
    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_76

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->i:Ljava/lang/String;

    const-string v3, "^[1-9]\\d{5}[1-9]\\d{3}((0\\d)|(1[0-2]))(([0|1|2]\\d)|3[0-1])\\d{3}([0-9Xx])$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    :cond_74
    move v0, v1

    goto :goto_29

    :cond_76
    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Z
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a()V

    return-void
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/support/v4/app/FragmentActivity;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->g:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "to_certificate_no_fragment"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->c:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/fragments/ToCertificateNoFragment;->c:Landroid/view/View;

    return-object v0
.end method
