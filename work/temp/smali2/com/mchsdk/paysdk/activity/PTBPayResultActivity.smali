.class public Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/Button;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .registers 3

    const-string v0, "id"

    const-string v1, "txt_price"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->a:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "txt_ptb_price"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->b:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "txt_goods_name"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->c:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "txt_tradeno"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->d:Landroid/widget/TextView;

    const-string v0, "id"

    const-string v1, "txt_finish"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "id"

    const-string v1, "btn_submit"

    invoke-static {p0, v0, v1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->a:Landroid/widget/TextView;

    const-string v2, "price"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->b:Landroid/widget/TextView;

    const-string v2, "price"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->c:Landroid/widget/TextView;

    const-string v2, "productname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->d:Landroid/widget/TextView;

    const-string v2, "tradeno"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "activity_mch_ptb_pay_info"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->a()V

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/k;->c()Lcom/mchsdk/open/PayCallback;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/PayCallback;->callback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->finish()V

    :cond_17
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
