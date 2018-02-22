.class public Lcom/vas/vassdk/util/BackgroundUtil;
.super Ljava/lang/Object;
.source "BackgroundUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRoundRect(Landroid/content/Context;[FFII)Landroid/graphics/drawable/LayerDrawable;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 16
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, p1, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 19
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    invoke-static {p0, p2}, Lcom/vas/vassdk/util/ScreenUtil;->toDip(Landroid/content/Context;F)I

    move-result v2

    .line 21
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 22
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    .line 23
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 24
    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 25
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createRoundRect(Landroid/content/Context;[FII)Landroid/graphics/drawable/LayerDrawable;
    .registers 5

    .prologue
    .line 12
    const/high16 v0, 0x3f800000

    invoke-static {p0, p1, v0, p2, p3}, Lcom/vas/vassdk/util/BackgroundUtil;->createRoundRect(Landroid/content/Context;[FFII)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createRoundRect(Landroid/content/Context;[FI)Landroid/graphics/drawable/ShapeDrawable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    return-object v0
.end method
