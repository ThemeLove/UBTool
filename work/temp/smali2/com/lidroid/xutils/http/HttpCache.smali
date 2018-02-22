.class public Lcom/lidroid/xutils/http/HttpCache;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x19000

.field private static final DEFAULT_EXPIRY_TIME:J = 0xea60L

.field private static defaultExpiryTime:J

.field private static final httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheSize:I

.field private final mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/cache/LruMemoryCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->GET:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const v0, 0x19000

    const-wide/32 v1, 0xea60

    invoke-direct {p0, v0, v1, v2}, Lcom/lidroid/xutils/http/HttpCache;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x19000

    iput v0, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    iput p1, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    sput-wide p2, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    new-instance v0, Lcom/lidroid/xutils/http/HttpCache$1;

    iget v1, p0, Lcom/lidroid/xutils/http/HttpCache;->cacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/http/HttpCache$1;-><init>(Lcom/lidroid/xutils/http/HttpCache;I)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    return-void
.end method

.method public static getDefaultExpiryTime()J
    .registers 2

    sget-wide v0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    return-wide v0
.end method

.method public static setDefaultExpiryTime(J)V
    .registers 2

    sput-wide p0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruMemoryCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEnabled(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;)Z
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v1

    :cond_4
    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_15

    move v0, v1

    :goto_13
    move v1, v0

    goto :goto_3

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_13
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_19

    move v0, v1

    :goto_17
    move v1, v0

    goto :goto_7

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_17
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-wide v0, Lcom/lidroid/xutils/http/HttpCache;->defaultExpiryTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/lidroid/xutils/cache/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    goto :goto_a
.end method

.method public setCacheSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpCache;->mMemoryCache:Lcom/lidroid/xutils/cache/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruMemoryCache;->setMaxSize(I)V

    return-void
.end method

.method public setEnabled(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Z)V
    .registers 6

    sget-object v0, Lcom/lidroid/xutils/http/HttpCache;->httpMethod_enabled_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
