.class public Lcom/fanwei/jubaosdk/common/util/DialogUtil;
.super Ljava/lang/Object;


# static fields
.field private static sMessageDialog:Landroid/app/AlertDialog;

.field private static sProgressDialog:Landroid/app/AlertDialog;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItemAlertDialog(Landroid/content/Context;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static dismissMessage()V
    .registers 1

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    :cond_14
    return-void
.end method

.method public static dismissProgress()V
    .registers 1

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    :cond_14
    return-void
.end method

.method public static showMessage(Landroid/content/Context;IZ)V
    .registers 6

    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/fanwei/jubaosdk/common/util/DialogUtil$2;

    invoke-direct {v2}, Lcom/fanwei/jubaosdk/common/util/DialogUtil$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    goto :goto_f
.end method

.method public static showMessage(Landroid/content/Context;IZLandroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    goto :goto_f
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .registers 6

    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/fanwei/jubaosdk/common/util/DialogUtil$1;

    invoke-direct {v2}, Lcom/fanwei/jubaosdk/common/util/DialogUtil$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    goto :goto_f
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnClickListener;)V
    .registers 6

    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_1c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sMessageDialog:Landroid/app/AlertDialog;

    goto :goto_f
.end method

.method public static showProgress(Landroid/content/Context;IZ)V
    .registers 11

    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    if-eqz p0, :cond_12

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_13

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->dismissProgress()V

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->start()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_12
.end method

.method public static showProgress(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 5

    if-eqz p0, :cond_f

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->dismissProgress()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->sProgressDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_f
.end method
