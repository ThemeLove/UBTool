.class public Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;
.super Landroid/app/DialogFragment;


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


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$2;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)Lcom/mchsdk/paysdk/b/e;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->l:Lcom/mchsdk/paysdk/b/e;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->k:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->m:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SelectPTBTypeDialog ------------------------ onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCCustomDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v8, -0x10000

    const/16 v7, 0x8

    const/4 v6, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SelectPTBTypeDialog ------------------------ onCreateView"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_select_ptb_type"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_25

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    :goto_24
    return-object v0

    :cond_25
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->k:Ljava/lang/Boolean;

    const-string v0, "s_title"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_title"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_178

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4c
    const-string v0, "s_user_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_userptb"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_180

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6d
    const-string v0, "s_game_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_bindptb"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_196

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8e
    const-string v0, "s_pay_ptb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_select_ptb_gameptb"

    invoke-static {v3, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_af
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "iv_mch_pay_close"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "ll_ptb"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "ll_ptb_bind"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_bind"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_un"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "img_ptb_bind_un"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->j:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "btn_mch_dialog_ptbpay"

    invoke-static {v2, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$1;

    invoke-direct {v2, p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2$1;-><init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "cancelable"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->a:Landroid/view/View;

    goto/16 :goto_24

    :cond_178
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    :cond_180
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-static {v3, v8, v2, v4}, Lcom/mchsdk/paysdk/utils/o;->a(Landroid/text/SpannableString;III)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    :cond_196
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x6

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-static {v3, v8, v2, v4}, Lcom/mchsdk/paysdk/utils/o;->a(Landroid/text/SpannableString;III)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8e

    :cond_1ac
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x9

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-static {v3, v8, v2, v4}, Lcom/mchsdk/paysdk/utils/o;->a(Landroid/text/SpannableString;III)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_af
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog2;->getDialog()Landroid/app/Dialog;

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

    const v1, 0x3f333333

    const v3, 0x3f4ccccd

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Point;->x:I

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
    const v1, 0x3f666666

    const v3, 0x3f3851ec

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
