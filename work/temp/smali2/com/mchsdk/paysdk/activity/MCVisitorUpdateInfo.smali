.class public Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;
.super Lcom/mchsdk/paysdk/activity/MCBaseActivity;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$1;-><init>(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->f:Landroid/os/Handler;

    new-instance v0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$3;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$3;-><init>(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "tv_mch_header_title"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u8bbe\u7f6e\u7528\u6237\u540d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "iv_mch_header_back"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "et_mch_visitor_username"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->d:Landroid/widget/EditText;

    const-string v0, "et_mch_visitor_pwd"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->e:Landroid/widget/EditText;

    const-string v0, "btn_mch_update_visitorinfo"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo$2;-><init>(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "MCVisitorUpdateInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/e/q;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/e/q;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/e/q;->a(Z)V

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v0}, Lcom/mchsdk/paysdk/a/j;->b(ZZLcom/mchsdk/paysdk/e/q;)V

    const-string v0, "ykaccount"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->finish()V

    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_30
    const-string v0, "MCVisitorUpdateInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pwd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_5b
    return-void

    :cond_5c
    const-string v0, "^[a-zA-Z0-9_]{6,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v1, :cond_7a

    if-nez v0, :cond_80

    :cond_7a
    const-string v0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u5e94\u4e3a6-15\u4f4d\u6570\u5b57\u6216\u82f1\u6587\u5b57\u6bcd"

    invoke-static {p0, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    :cond_80
    new-instance v0, Lcom/mchsdk/paysdk/f/c/v;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/v;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/v;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/v;->a(Landroid/os/Handler;)V

    goto :goto_5b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/mchsdk/paysdk/activity/MCBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "activity_mch_personal_info_setuser"

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/MCVisitorUpdateInfo;->b:Ljava/lang/String;

    return-void
.end method
