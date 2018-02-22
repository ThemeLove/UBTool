.class public abstract Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/bitmap/callback/BitmapSetter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_16

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_a
.end method

.method public abstract onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method

.method public onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onLoading(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;JJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "JJ)V"
        }
    .end annotation

    return-void
.end method

.method public onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    invoke-interface {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;->setBitmap(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_9

    :cond_14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public setBitmapSetter(Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapSetter",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    return-void
.end method

.method public setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->bitmapSetter:Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;

    invoke-interface {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/callback/BitmapSetter;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_9
    return-void

    :cond_a
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method
