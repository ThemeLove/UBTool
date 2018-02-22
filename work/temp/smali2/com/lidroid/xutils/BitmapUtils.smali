.class public Lcom/lidroid/xutils/BitmapUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lidroid/xutils/task/TaskHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    }
.end annotation


# instance fields
.field private cancelAllTask:Z

.field private context:Landroid/content/Context;

.field private defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private pauseTask:Z

.field private final pauseTaskLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    if-nez p1, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    new-instance v0, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;FI)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemCacheSizePercent(F)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheSize(I)V

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheSize(I)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/BitmapUtils;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/BitmapUtils;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/BitmapUtils;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/BitmapUtils;)Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-object v0
.end method

.method static synthetic access$4(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .registers 3

    invoke-static {p0, p1}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    return-object v0
.end method

.method private static bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v1

    if-eqz v1, :cond_1a

    # getter for: Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->uri:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->access$3(Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_17
    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->cancel(Z)Z

    :cond_1a
    const/4 v0, 0x0

    :cond_1b
    return v0
.end method

.method private static getBitmapTaskFromContainer(Landroid/view/View;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_11

    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->getDrawable(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;->getBitmapWorkerTask()Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public clearCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiskCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearMemoryCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache()V

    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->clearMemoryCache(Ljava/lang/String;)V

    return-void
.end method

.method public closeCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->closeCache()V

    return-void
.end method

.method public configBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setBitmapCacheListener(Lcom/lidroid/xutils/bitmap/BitmapCacheListener;)V

    return-object p0
.end method

.method public configDefaultAutoRotation(Z)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAutoRotation(Z)V

    return-object p0
.end method

.method public configDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    return-object p0
.end method

.method public configDefaultBitmapMaxSize(II)Lcom/lidroid/xutils/BitmapUtils;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    return-object p0
.end method

.method public configDefaultBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    return-object p0
.end method

.method public configDefaultCacheExpiry(J)Lcom/lidroid/xutils/BitmapUtils;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultCacheExpiry(J)V

    return-object p0
.end method

.method public configDefaultConnectTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultConnectTimeout(I)V

    return-object p0
.end method

.method public configDefaultDisplayConfig(Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    return-object p0
.end method

.method public configDefaultImageLoadAnimation(Landroid/view/animation/Animation;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadFailedImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(I)Lcom/lidroid/xutils/BitmapUtils;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/Bitmap;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/lidroid/xutils/BitmapUtils;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultLoadingImage(Landroid/graphics/drawable/Drawable;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public configDefaultReadTimeout(I)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDefaultReadTimeout(I)V

    return-object p0
.end method

.method public configDefaultShowOriginal(Z)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setShowOriginal(Z)V

    return-object p0
.end method

.method public configDiskCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDiskCacheEnabled(Z)V

    return-object p0
.end method

.method public configDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    return-object p0
.end method

.method public configDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setDownloader(Lcom/lidroid/xutils/bitmap/download/Downloader;)V

    return-object p0
.end method

.method public configMemoryCacheEnabled(Z)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setMemoryCacheEnabled(Z)V

    return-object p0
.end method

.method public configThreadPoolSize(I)Lcom/lidroid/xutils/BitmapUtils;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->setThreadPoolSize(I)V

    return-object p0
.end method

.method public display(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p4, :cond_a5

    new-instance v0, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;

    invoke-direct {v0}, Lcom/lidroid/xutils/bitmap/callback/DefaultBitmapLoadCallBack;-><init>()V

    :goto_a
    if-eqz p3, :cond_10

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    if-ne p3, v1, :cond_a2

    :cond_10
    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->cloneNew()Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    move-result-object v4

    :goto_16
    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v1

    invoke-static {p1, v2, v1}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->setBitmapMaxSize(Lcom/lidroid/xutils/bitmap/core/BitmapSize;)V

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadFailed(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3a
    invoke-virtual {v0, p1, p2, v4}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onPreLoad(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v1

    invoke-virtual {v1, p2, v4}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v0, p1, p2, v4}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadStarted(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    sget-object v5, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->onLoadCompleted(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadFrom;)V

    goto :goto_2

    :cond_54
    invoke-static {p1, p2, v0}, Lcom/lidroid/xutils/BitmapUtils;->bitmapLoadTaskExist(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v4

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;-><init>(Lcom/lidroid/xutils/BitmapUtils;Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapLoadExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/BitmapUtils;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_a0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a0

    const/4 v2, 0x1

    :goto_77
    if-eqz v2, :cond_85

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/PriorityExecutor;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheExecutor()Lcom/lidroid/xutils/task/PriorityExecutor;

    move-result-object v1

    :cond_85
    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v3, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;

    invoke-direct {v3, v2, v5}, Lcom/lidroid/xutils/bitmap/core/AsyncDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)V

    invoke-virtual {v0, p1, v3}, Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;->setDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->setPriority(Lcom/lidroid/xutils/task/Priority;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v0}, Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/lidroid/xutils/task/PriorityAsyncTask;

    goto/16 :goto_2

    :cond_a0
    const/4 v2, 0x0

    goto :goto_77

    :cond_a2
    move-object v4, p3

    goto/16 :goto_16

    :cond_a5
    move-object v0, p4

    goto/16 :goto_a
.end method

.method public display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/lidroid/xutils/BitmapUtils;->display(Landroid/view/View;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/callback/BitmapLoadCallBack;)V

    return-void
.end method

.method public flushCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->flushCache()V

    return-void
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 4

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/lidroid/xutils/BitmapUtils;->defaultDisplayConfig:Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;

    :cond_4
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getBitmapCache()Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->cancelAllTask:Z

    return v0
.end method

.method public isPaused()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    return v0
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    invoke-virtual {p0}, Lcom/lidroid/xutils/BitmapUtils;->flushCache()V

    return-void
.end method

.method public resume()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTask:Z

    iget-object v1, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/lidroid/xutils/BitmapUtils;->pauseTaskLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public supportCancel()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public supportPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public supportResume()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
