.class public Lcom/mchsdk/paysdk/view/round/CircleImageView;
.super Lcom/mchsdk/paysdk/view/round/HoverImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/view/round/HoverImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/mchsdk/paysdk/view/round/HoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/mchsdk/paysdk/view/round/HoverImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .registers 7

    const/high16 v4, 0x3f000000

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->getHeight()I

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v4

    int-to-float v3, v1

    mul-float/2addr v3, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .registers 8

    const/high16 v5, 0x3f000000

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->getBorderWidth()F

    move-result v0

    mul-float/2addr v0, v5

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/view/round/CircleImageView;->getHeight()I

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v3, v5

    int-to-float v4, v2

    mul-float/2addr v4, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float v0, v1, v0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method
