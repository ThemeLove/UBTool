.class public final Lcom/alipay/sdk/k/a$a;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/k/a;


# direct methods
.method protected constructor <init>(Lcom/alipay/sdk/k/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .registers 3

    if-nez p0, :cond_f

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_6
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/alipay/sdk/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_31
    .catchall {:try_start_1 .. :try_end_a} :catchall_3d

    :try_start_a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x1e0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2d} :catch_4b
    .catchall {:try_start_a .. :try_end_2d} :catchall_49

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_45

    :goto_30
    return-object v0

    :catch_31
    move-exception v0

    move-object v0, v1

    :goto_33
    if-eqz v0, :cond_3b

    :try_start_35
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3a

    move-object v0, v1

    goto :goto_30

    :catch_3a
    move-exception v0

    :cond_3b
    move-object v0, v1

    goto :goto_30

    :catchall_3d
    move-exception v0

    move-object v2, v1

    :goto_3f
    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_47

    :cond_44
    :goto_44
    throw v0

    :catch_45
    move-exception v1

    goto :goto_30

    :catch_47
    move-exception v1

    goto :goto_44

    :catchall_49
    move-exception v0

    goto :goto_3f

    :catch_4b
    move-exception v0

    move-object v0, v2

    goto :goto_33
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 15

    const/high16 v12, 0x41880000

    const/high16 v6, 0x41200000

    const/high16 v4, 0x3f000000

    const/4 v11, -0x2

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/k/a$a;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x42480000

    invoke-static {v7, v1}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v11, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v1, -0x1ae0dcc9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40a00000

    invoke-static {v7, v1}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000

    invoke-static {v7, v1}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41a00000

    invoke-static {v7, v2}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v1}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v2}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v3}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;)Landroid/app/Activity;

    move-result-object v3

    const/high16 v5, 0x41000000

    invoke-static {v3, v5}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v5}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/alipay/sdk/k/a;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->b(Lcom/alipay/sdk/k/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_104

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    :goto_cc
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41800000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-static {v7, v12}, Lcom/alipay/sdk/k/a$a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v10, v10, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v8}, Lcom/alipay/sdk/k/a$a;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/sdk/k/a$a;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_104
    iget-object v0, p0, Lcom/alipay/sdk/k/a$a;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->b(Lcom/alipay/sdk/k/a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cc
.end method
