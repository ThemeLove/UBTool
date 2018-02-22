.class public Lcom/fanwei/jubaosdk/common/util/ToastUtil;
.super Ljava/lang/Object;


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .registers 4

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    :goto_9
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    goto :goto_9
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 4

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/ToastUtil;->mToast:Landroid/widget/Toast;

    goto :goto_9
.end method
