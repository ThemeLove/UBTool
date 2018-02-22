.class public Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/bitmap/core/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryCacheKey"
.end annotation


# instance fields
.field private subKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V
    .registers 5

    iput-object p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->this$0:Lcom/lidroid/xutils/bitmap/core/BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    if-nez p3, :cond_d

    const/4 v0, 0x0

    :goto_a
    iput-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    return-void

    :cond_d
    invoke-virtual {p3}, Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;-><init>(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;

    iget-object v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget-object v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->subKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapCache$MemoryCacheKey;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
