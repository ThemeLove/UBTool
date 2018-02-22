.class public Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
.super Ljava/lang/Object;


# instance fields
.field private animation:Landroid/view/animation/Animation;

.field private autoRotation:Z

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

.field private bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

.field private loadFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private loadingDrawable:Landroid/graphics/drawable/Drawable;

.field private priority:Lcom/lidroid/xutils/task/Priority;

.field private showOriginal:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->autoRotation:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->showOriginal:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public cloneNew()Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->autoRotation:Z

    iput-boolean v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->autoRotation:Z

    iget-boolean v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->showOriginal:Z

    iput-boolean v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->showOriginal:Z

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->priority:Lcom/lidroid/xutils/task/Priority;

    iput-object v1, v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getBitmapFactory()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    return-object v0
.end method

.method public getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    if-nez v0, :cond_7

    sget-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->ZERO:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    goto :goto_6
.end method

.method public getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLoadingDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPriority()Lcom/lidroid/xutils/task/Priority;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->priority:Lcom/lidroid/xutils/task/Priority;

    return-object v0
.end method

.method public isAutoRotation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->autoRotation:Z

    return v0
.end method

.method public isShowOriginal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->showOriginal:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->animation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setAutoRotation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->autoRotation:Z

    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public setBitmapFactory(Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    return-void
.end method

.method public setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-void
.end method

.method public setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPriority(Lcom/lidroid/xutils/task/Priority;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->priority:Lcom/lidroid/xutils/task/Priority;

    return-void
.end method

.method public setShowOriginal(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->showOriginal:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, ""

    :goto_a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    if-nez v0, :cond_27

    const-string v0, ""

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapMaxSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_27
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->bitmapFactory:Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method
