.class public Lcom/vas/vassdk/util/ImageBase64Util;
.super Ljava/lang/Object;
.source "ImageBase64Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 54
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 55
    :cond_8
    const/4 v0, 0x1

    .line 57
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static declared-synchronized decode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 18
    const-class v1, Lcom/vas/vassdk/util/ImageBase64Util;

    monitor-enter v1

    if-nez p0, :cond_8

    .line 28
    :cond_6
    :goto_6
    monitor-exit v1

    return-object v0

    .line 24
    :cond_8
    const/4 v2, 0x0

    :try_start_9
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 25
    if-eqz v2, :cond_6

    .line 28
    const/4 v0, 0x0

    array-length v3, v2

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_16

    move-result-object v0

    goto :goto_6

    .line 18
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized toNinePathDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 33
    const-class v1, Lcom/vas/vassdk/util/ImageBase64Util;

    monitor-enter v1

    if-eqz p0, :cond_12

    :try_start_6
    invoke-static {p1}, Lcom/vas/vassdk/util/ImageBase64Util;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p2}, Lcom/vas/vassdk/util/ImageBase64Util;->a(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_34
    .catchall {:try_start_6 .. :try_end_f} :catchall_31

    move-result v2

    if-eqz v2, :cond_14

    .line 49
    :cond_12
    :goto_12
    monitor-exit v1

    return-object v0

    .line 40
    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/vas/vassdk/util/ImageBase64Util;->decode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_12

    .line 44
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 45
    if-eqz v3, :cond_12

    .line 48
    new-instance v4, Landroid/graphics/NinePatch;

    const/4 v0, 0x0

    invoke-direct {v4, v2, v3, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 49
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_31

    goto :goto_12

    .line 33
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    .line 36
    :catch_34
    move-exception v2

    goto :goto_12
.end method
