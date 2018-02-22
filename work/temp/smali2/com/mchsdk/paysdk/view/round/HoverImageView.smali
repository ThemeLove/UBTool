.class public Lcom/mchsdk/paysdk/view/round/HoverImageView;
.super Landroid/widget/ImageView;


# static fields
.field private static final a:Landroid/widget/ImageView$ScaleType;

.field private static final b:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private c:Z

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Path;

.field private i:Landroid/graphics/RectF;

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->a:Landroid/widget/ImageView$ScaleType;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->b:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x44000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->d:I

    const/high16 v0, 0x22000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x44000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->d:I

    const/high16 v0, 0x22000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    invoke-direct {p0, p2}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x44000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->d:I

    const/high16 v0, 0x22000000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->e:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    invoke-direct {p0, p2}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->setup(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setup(Landroid/util/AttributeSet;)V
    .registers 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->g:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->a:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->c:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1f
    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    const/high16 v1, 0x3f000000

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v2, v1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v2, v1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public getBorderWidth()F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->j:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_5a

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_5a

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->i:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    sget-object v3, Lcom/mchsdk/paysdk/view/round/HoverImageView;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p0, p1}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->a(Landroid/graphics/Canvas;)V

    :goto_59
    return-void

    :cond_5a
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_59
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->g:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->a(Landroid/graphics/Path;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->h:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->b(Landroid/graphics/Path;)V

    :cond_f
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1e

    :cond_f
    :goto_f
    :pswitch_f
    return v0

    :pswitch_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->c:Z

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->postInvalidate()V

    goto :goto_f

    :pswitch_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mchsdk/paysdk/view/round/HoverImageView;->c:Z

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/HoverImageView;->postInvalidate()V

    goto :goto_f

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method
