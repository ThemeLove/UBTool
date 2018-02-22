.class public Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;
.super Ljava/lang/Object;


# static fields
.field private static screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    :try_start_5
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_18} :catch_21

    move-result v0

    if-lez v0, :cond_24

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_24

    :goto_20
    return v0

    :catch_21
    move-exception v0

    move v0, v1

    goto :goto_20

    :cond_24
    move v0, v1

    goto :goto_20
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    sput-object v1, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    :cond_17
    sget-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-object v0
.end method

.method public static optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 7

    const/4 v2, -0x2

    if-lez p1, :cond_b

    if-lez p2, :cond_b

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_61

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_4b

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_17
    :goto_17
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_54

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v0, p2

    move v1, p1

    :goto_1f
    if-gtz v1, :cond_27

    const-string v1, "mMaxWidth"

    invoke-static {p0, v1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    :cond_27
    if-gtz v0, :cond_2f

    const-string v0, "mMaxHeight"

    invoke-static {p0, v0}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v3

    if-gtz v1, :cond_5f

    invoke-virtual {v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v1

    move v2, v1

    :goto_3e
    if-gtz v0, :cond_44

    invoke-virtual {v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v0

    :cond_44
    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v1, v2, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    move-object v0, v1

    goto :goto_a

    :cond_4b
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v2, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_17

    :cond_54
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_61

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    move v0, p2

    move v1, p1

    goto :goto_1f

    :cond_5f
    move v2, v1

    goto :goto_3e

    :cond_61
    move v0, p2

    move v1, p1

    goto :goto_1f
.end method
