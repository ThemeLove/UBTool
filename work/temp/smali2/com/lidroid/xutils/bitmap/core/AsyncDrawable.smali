.class public Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/graphics/drawable/Drawable;"
    }
.end annotation


# instance fields
.field private final baseDrawable:Landroid/graphics/drawable/Drawable;

.field private final bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapWorkerTask may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_9
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->bitmapLoadTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    goto :goto_5
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    goto :goto_5
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_5
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_5
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_5
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_5
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7

    const/16 v0, 0x7f

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_6
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getState()[I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    goto :goto_5
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_5
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    return-void
.end method

.method public setBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    :cond_9
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_9
    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_9
    return-void
.end method

.method public setState([I)Z
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->baseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method
