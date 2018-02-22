.class public Lcom/vas/vassdk/VasLoadingDialog;
.super Landroid/app/Dialog;
.source "VasLoadingDialog.java"


# static fields
.field private static b:[F = null

.field private static final c:Ljava/lang/String; = "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"


# instance fields
.field private a:Landroid/app/Activity;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/view/animation/RotateAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/vas/vassdk/VasLoadingDialog;->b:[F

    .line 29
    return-void

    .line 28
    :array_a
    .array-data 4
        0x41700000
        0x41700000
        0x41700000
        0x41700000
        0x41700000
        0x41700000
        0x41700000
        0x41700000
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 14

    .prologue
    const/16 v10, 0x11

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p1, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    .line 38
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    const/high16 v1, 0x40a00000

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/ScreenUtil;->toSp(Landroid/content/Context;F)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    const/high16 v2, 0x41200000

    invoke-static {v1, v2}, Lcom/vas/vassdk/util/ScreenUtil;->toSp(Landroid/content/Context;F)I

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    const/high16 v3, 0x41700000

    invoke-static {v2, v3}, Lcom/vas/vassdk/util/ScreenUtil;->toDip(Landroid/content/Context;F)I

    move-result v2

    .line 41
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    const/high16 v4, 0x42800000

    invoke-static {v3, v4}, Lcom/vas/vassdk/util/ScreenUtil;->toDip(Landroid/content/Context;F)I

    move-result v3

    .line 42
    iget-object v4, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    const/high16 v5, 0x43160000

    invoke-static {v4, v5}, Lcom/vas/vassdk/util/ScreenUtil;->toDip(Landroid/content/Context;F)I

    move-result v4

    .line 43
    invoke-virtual {p0, v6}, Lcom/vas/vassdk/VasLoadingDialog;->setCancelable(Z)V

    .line 44
    invoke-virtual {p0, v8}, Lcom/vas/vassdk/VasLoadingDialog;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0, v6}, Lcom/vas/vassdk/VasLoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    iget-object v5, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    sget-object v6, Lcom/vas/vassdk/VasLoadingDialog;->b:[F

    const-string v7, "#88000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    .line 47
    invoke-static {v5, v6, v7}, Lcom/vas/vassdk/util/BackgroundUtil;->createRoundRect(Landroid/content/Context;[FI)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    .line 50
    invoke-virtual {p0}, Lcom/vas/vassdk/VasLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 55
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    new-instance v4, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    invoke-direct {v4, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    .line 58
    iget-object v4, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    const-string v7, "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"

    invoke-static {v7}, Lcom/vas/vassdk/util/ImageBase64Util;->decode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vas/vassdk/VasLoadingDialog;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object v3, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    const/4 v3, -0x2

    .line 69
    invoke-direct {v0, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 73
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 74
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 75
    iget-object v1, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0, v5, v6}, Lcom/vas/vassdk/VasLoadingDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0}, Lcom/vas/vassdk/VasLoadingDialog;->a()V

    .line 79
    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 82
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    .line 83
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 84
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 85
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 86
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 87
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 110
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 103
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 104
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_9
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/vas/vassdk/VasLoadingDialog;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vas/vassdk/VasLoadingDialog;->f:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    :cond_b
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 96
    return-void
.end method
