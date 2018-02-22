.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;,
        Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
    }
.end annotation


# instance fields
.field private final DISK_CACHE_INDEX:I

.field private globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache",
            "<",
            "Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->DISK_CACHE_INDEX:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    if-nez p1, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "globalConfig may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    return-void
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 8

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapFactory()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->cloneNew()Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/lidroid/xutils/bitmap/factory/BitmapFactory;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p3

    :cond_10
    if-eqz p1, :cond_2b

    if-eqz p3, :cond_2b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    :cond_2b
    return-object p3
.end method

.method private decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2e

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    iget-object v0, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_1b
    iget-object v0, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_2e
    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3a
    iget-object v0, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeByteArray([B)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_41
    iget-object v0, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromByteArray([BLcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method private declared-synchronized rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p2, :cond_48

    :try_start_4
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isAutoRotation()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_53

    move-result v2

    if-eqz v2, :cond_48

    :try_start_16
    new-instance v2, Landroid/media/ExifInterface;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_56
    .catchall {:try_start_16 .. :try_end_1f} :catchall_53

    :try_start_1f
    const-string v1, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_58

    :goto_29
    :pswitch_29
    if-eqz v0, :cond_48

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_53

    move-object p3, v0

    :cond_48
    :goto_48
    monitor-exit p0

    return-object p3

    :pswitch_4a
    const/16 v0, 0x5a

    goto :goto_29

    :pswitch_4d
    const/16 v0, 0xb4

    goto :goto_29

    :pswitch_50
    const/16 v0, 0x10e

    goto :goto_29

    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_56
    move-exception v0

    goto :goto_48

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_4d
        :pswitch_29
        :pswitch_29
        :pswitch_4a
        :pswitch_29
        :pswitch_50
    .end packed-switch
.end method


# virtual methods
.method public clearCache()V
    .registers 1

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache()V

    return-void
.end method

.method public clearCache(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearDiskCache(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiskCache()V
    .registers 4

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    move-result v0

    if-nez v0, :cond_1c

    :try_start_f
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_19} :catch_21
    .catchall {:try_start_f .. :try_end_19} :catchall_2a

    :goto_19
    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2a

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public clearDiskCache(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    move-result v0

    if-nez v0, :cond_14

    :try_start_f
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_16
    .catchall {:try_start_f .. :try_end_14} :catchall_1f

    :cond_14
    :goto_14
    :try_start_14
    monitor-exit v1

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public clearMemoryCache()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    :cond_9
    return-void
.end method

.method public clearMemoryCache(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v1, :cond_12

    :goto_a
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public close()V
    .registers 4

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v0, :cond_17

    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_19
    .catchall {:try_start_7 .. :try_end_14} :catchall_22

    :cond_14
    :goto_14
    const/4 v0, 0x0

    :try_start_15
    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    :cond_17
    monitor-exit v1

    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public downloadBitmap(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)Landroid/graphics/Bitmap;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;",
            "Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask",
            "<*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    new-instance v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;

    invoke-direct {v5, p0, v7}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V

    :try_start_8
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_12d

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    :cond_17
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_19} :catch_ce
    .catchall {:try_start_8 .. :try_end_19} :catchall_e1

    if-eqz v1, :cond_12d

    :try_start_1b
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_9b
    .catchall {:try_start_1b .. :try_end_20} :catchall_e1

    move-result-object v2

    if-nez v2, :cond_129

    :try_start_23
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_129

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2f} :catch_113
    .catchall {:try_start_23 .. :try_end_2f} :catchall_eb

    move-result-object v3

    :try_start_30
    iget-object v4, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v4}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, p1, v3, v0}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    iget-wide v8, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    cmp-long v4, v8, v10

    if-gez v4, :cond_4f

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_47} :catch_118
    .catchall {:try_start_30 .. :try_end_47} :catchall_ee

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v7

    :goto_4e
    return-object v1

    :cond_4f
    :try_start_4f
    iget-wide v8, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    invoke-virtual {v1, v8, v9}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->setEntryExpiryTimestamp(J)V

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->commit()V

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_5c} :catch_118
    .catchall {:try_start_4f .. :try_end_5c} :catchall_ee

    move-result-object v2

    move-object v4, v3

    move-object v3, v2

    :goto_5f
    if-eqz v3, :cond_125

    const/4 v1, 0x0

    :try_start_62
    invoke-virtual {v3, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v1

    iput-object v1, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    invoke-direct {p0, v5, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6b} :catch_11d
    .catchall {:try_start_62 .. :try_end_6b} :catchall_f0

    move-result-object v2

    if-nez v2, :cond_a6

    const/4 v1, 0x0

    :try_start_6f
    iput-object v1, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->inputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_76} :catch_120
    .catchall {:try_start_6f .. :try_end_76} :catchall_f0

    move-object v1, v2

    move-object v8, v3

    :goto_78
    if-nez v1, :cond_123

    :try_start_7a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7f} :catch_108
    .catchall {:try_start_7a .. :try_end_7f} :catchall_f4

    :try_start_7f
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDownloader()Lcom/lidroid/xutils/bitmap/download/Downloader;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, p1, v2, v0}, Lcom/lidroid/xutils/bitmap/download/Downloader;->downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J

    move-result-wide v3

    iput-wide v3, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    iget-wide v3, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_8f} :catch_10c
    .catchall {:try_start_7f .. :try_end_8f} :catchall_f8

    cmp-long v1, v3, v10

    if-gez v1, :cond_a9

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v7

    goto :goto_4e

    :catch_9b
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    move-object v4, v7

    :goto_9f
    :try_start_9f
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a6} :catch_105
    .catchall {:try_start_9f .. :try_end_a6} :catchall_f0

    :cond_a6
    move-object v1, v2

    move-object v8, v3

    goto :goto_78

    :cond_a9
    :try_start_a9
    move-object v0, v2

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->data:[B

    invoke-direct {p0, v5, p2}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->decodeBitmapMeta(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_b6} :catch_10c
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_f8

    move-result-object v1

    move-object v9, v2

    :goto_b8
    if-eqz v1, :cond_c7

    :try_start_ba
    invoke-direct {p0, p1, p2, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-wide v5, v5, Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;->expiryTimestamp:J

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_c6} :catch_10f
    .catchall {:try_start_ba .. :try_end_c6} :catchall_fc

    move-result-object v1

    :cond_c7
    invoke-static {v9}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v8}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4e

    :catch_ce
    move-exception v1

    move-object v3, v7

    move-object v2, v7

    :goto_d1
    :try_start_d1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_100

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v7

    goto/16 :goto_4e

    :catchall_e1
    move-exception v1

    move-object v2, v7

    move-object v3, v7

    :goto_e4
    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :catchall_eb
    move-exception v1

    move-object v3, v7

    goto :goto_e4

    :catchall_ee
    move-exception v1

    goto :goto_e4

    :catchall_f0
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_e4

    :catchall_f4
    move-exception v1

    move-object v2, v8

    move-object v3, v4

    goto :goto_e4

    :catchall_f8
    move-exception v1

    move-object v3, v2

    move-object v2, v8

    goto :goto_e4

    :catchall_fc
    move-exception v1

    move-object v2, v8

    move-object v3, v9

    goto :goto_e4

    :catchall_100
    move-exception v1

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_e4

    :catch_105
    move-exception v1

    move-object v2, v4

    goto :goto_d1

    :catch_108
    move-exception v1

    move-object v3, v8

    move-object v2, v4

    goto :goto_d1

    :catch_10c
    move-exception v1

    move-object v3, v8

    goto :goto_d1

    :catch_10f
    move-exception v1

    move-object v3, v8

    move-object v2, v9

    goto :goto_d1

    :catch_113
    move-exception v1

    move-object v3, v2

    move-object v4, v7

    move-object v2, v7

    goto :goto_9f

    :catch_118
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_9f

    :catch_11d
    move-exception v1

    move-object v2, v7

    goto :goto_9f

    :catch_120
    move-exception v1

    goto/16 :goto_9f

    :cond_123
    move-object v9, v4

    goto :goto_b8

    :cond_125
    move-object v1, v7

    move-object v8, v3

    goto/16 :goto_78

    :cond_129
    move-object v3, v2

    move-object v4, v7

    goto/16 :goto_5f

    :cond_12d
    move-object v1, v7

    move-object v8, v7

    move-object v4, v7

    goto/16 :goto_78
.end method

.method public flush()V
    .registers 4

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_c

    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->flush()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_e
    .catchall {:try_start_7 .. :try_end_c} :catchall_17

    :cond_c
    :goto_c
    :try_start_c
    monitor-exit v1

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v0
.end method

.method public getBitmapFileFromDiskCache(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    :goto_f
    return-object v0

    :cond_10
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getBitmapFromDiskCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v6, 0x0

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move-object v0, v6

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->initDiskCache()V

    :cond_14
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_6c

    :try_start_18
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_60
    .catchall {:try_start_18 .. :try_end_1d} :catchall_6e

    move-result-object v7

    if-eqz v7, :cond_74

    if-eqz p2, :cond_28

    :try_start_22
    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->isShowOriginal()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_28
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_35
    invoke-direct {p0, p1, p2, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->rotateBitmapIfNeeded(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->getExpiryTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_45} :catch_7d
    .catchall {:try_start_22 .. :try_end_45} :catchall_78

    move-result-object v0

    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_c

    :cond_4a
    const/4 v0, 0x0

    :try_start_4b
    invoke-virtual {v7, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v1

    invoke-virtual {p2}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapDecoder;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;Lcom/lidroid/xutils/bitmap/core/BitmapSize;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_5e} :catch_7d
    .catchall {:try_start_4b .. :try_end_5e} :catchall_78

    move-result-object v0

    goto :goto_35

    :catch_60
    move-exception v0

    move-object v1, v6

    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_7a

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6c
    :goto_6c
    move-object v0, v6

    goto :goto_c

    :catchall_6e
    move-exception v0

    move-object v7, v6

    :goto_70
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_74
    invoke-static {v7}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6c

    :catchall_78
    move-exception v0

    goto :goto_70

    :catchall_7a
    move-exception v0

    move-object v7, v1

    goto :goto_70

    :catch_7d
    move-exception v0

    move-object v1, v7

    goto :goto_62
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_1a
    return-object v0
.end method

.method public initDiskCache()V
    .registers 8

    iget-object v4, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isDiskCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_17
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_2e
    invoke-static {v5}, Lcom/lidroid/xutils/util/OtherUtils;->getAvailableSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getDiskCacheSize()I
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_63

    move-result v0

    int-to-long v0, v0

    cmp-long v6, v2, v0

    if-lez v6, :cond_57

    :goto_3d
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_3f
    invoke-static {v5, v2, v3, v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    const-string v0, "create disk cache success"

    invoke-static {v0}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_55} :catch_59
    .catchall {:try_start_3f .. :try_end_55} :catchall_63

    :cond_55
    :goto_55
    :try_start_55
    monitor-exit v4

    return-void

    :cond_57
    move-wide v0, v2

    goto :goto_3d

    :catch_59
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    const-string v1, "create disk cache error"

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    :catchall_63
    move-exception v0

    monitor-exit v4
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_63

    throw v0
.end method

.method public initMemoryCache()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->isMemoryCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_10

    :try_start_d
    invoke-virtual {p0}, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->clearMemoryCache()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_1e

    :cond_10
    :goto_10
    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->globalConfig:Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;

    invoke-virtual {v1}, Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;->getMemoryCacheSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$1;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;I)V

    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    goto :goto_8

    :catch_1e
    move-exception v0

    goto :goto_10
.end method

.method public setDiskCacheFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .registers 4

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setDiskCacheSize(I)V
    .registers 6

    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mDiskLruCache:Lcom/lidroid/xutils/cache/LruDiskCache;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->setMaxSize(J)V

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public setMemoryCacheSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    :cond_9
    return-void
.end method
