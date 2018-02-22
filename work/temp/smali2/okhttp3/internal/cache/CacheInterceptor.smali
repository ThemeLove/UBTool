.class public final Lokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/t;


# static fields
.field private static final EMPTY_BODY:Lokhttp3/ab;


# instance fields
.field final cache:Lokhttp3/internal/cache/InternalCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v0}, Lokhttp3/internal/cache/CacheInterceptor$1;-><init>()V

    sput-object v0, Lokhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lokhttp3/ab;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/cache/InternalCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    return-void
.end method

.method private cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/aa;)Lokhttp3/aa;
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-object p2

    :cond_3
    invoke-interface {p1}, Lokhttp3/internal/cache/CacheRequest;->body()Lokio/Sink;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ab;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    new-instance v2, Lokhttp3/internal/cache/CacheInterceptor$2;

    invoke-direct {v2, p0, v1, p1, v0}, Lokhttp3/internal/cache/CacheInterceptor$2;-><init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V

    invoke-virtual {p2}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p2}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v3

    invoke-static {v2}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/r;Lokio/BufferedSource;)V

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object p2

    goto :goto_2
.end method

.method private static combine(Lokhttp3/r;Lokhttp3/r;)Lokhttp3/r;
    .registers 9

    const/4 v0, 0x0

    new-instance v2, Lokhttp3/r$a;

    invoke-direct {v2}, Lokhttp3/r$a;-><init>()V

    invoke-virtual {p0}, Lokhttp3/r;->a()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_3a

    invoke-virtual {p0, v1}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_28
    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    invoke-virtual {p1, v4}, Lokhttp3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_25

    :cond_34
    sget-object v6, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v6, v2, v4, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_3a
    invoke-virtual {p1}, Lokhttp3/r;->a()I

    move-result v1

    :goto_3e
    if-ge v0, v1, :cond_5f

    invoke-virtual {p1, v0}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4f
    invoke-static {v3}, Lokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    sget-object v4, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {p1, v0}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_5f
    invoke-virtual {v2}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    return-object v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private maybeCache(Lokhttp3/aa;Lokhttp3/y;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;
    .registers 6

    const/4 v0, 0x0

    if-nez p3, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1, p2}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/aa;Lokhttp3/y;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p2}, Lokhttp3/y;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_14
    invoke-interface {p3, p2}, Lokhttp3/internal/cache/InternalCache;->remove(Lokhttp3/y;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_3

    :catch_18
    move-exception v1

    goto :goto_3

    :cond_1a
    invoke-interface {p3, p1}, Lokhttp3/internal/cache/InternalCache;->put(Lokhttp3/aa;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v0

    goto :goto_3
.end method

.method private static stripBody(Lokhttp3/aa;)Lokhttp3/aa;
    .registers 3

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object p0

    :cond_15
    return-object p0
.end method

.method private static validate(Lokhttp3/aa;Lokhttp3/aa;)Z
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Lokhttp3/aa;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v1

    const-string v2, "Last-Modified"

    invoke-virtual {v1, v2}, Lokhttp3/r;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v2

    const-string v3, "Last-Modified"

    invoke-virtual {v2, v3}, Lokhttp3/r;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    :cond_2e
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public intercept(Lokhttp3/t$a;)Lokhttp3/aa;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v2

    invoke-interface {v0, v2}, Lokhttp3/internal/cache/InternalCache;->get(Lokhttp3/y;)Lokhttp3/aa;

    move-result-object v0

    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Lokhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5, v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLokhttp3/y;Lokhttp3/aa;)V

    invoke-virtual {v4}, Lokhttp3/internal/cache/CacheStrategy$Factory;->get()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v2

    iget-object v3, v2, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/y;

    iget-object v4, v2, Lokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lokhttp3/aa;

    iget-object v5, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v5, v2}, Lokhttp3/internal/cache/InternalCache;->trackResponse(Lokhttp3/internal/cache/CacheStrategy;)V

    :cond_2d
    if-eqz v0, :cond_38

    if-nez v4, :cond_38

    invoke-virtual {v0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v2

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_38
    if-nez v3, :cond_76

    if-nez v4, :cond_76

    new-instance v0, Lokhttp3/aa$a;

    invoke-direct {v0}, Lokhttp3/aa$a;-><init>()V

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/y;)Lokhttp3/aa$a;

    move-result-object v0

    sget-object v1, Lokhttp3/w;->b:Lokhttp3/w;

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/w;)Lokhttp3/aa$a;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(I)Lokhttp3/aa$a;

    move-result-object v0

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v0

    sget-object v1, Lokhttp3/internal/cache/CacheInterceptor;->EMPTY_BODY:Lokhttp3/ab;

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->a(J)Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/aa$a;->b(J)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    :cond_73
    :goto_73
    return-object v0

    :cond_74
    move-object v0, v1

    goto :goto_f

    :cond_76
    if-nez v3, :cond_89

    invoke-virtual {v4}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/aa$a;->b(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    goto :goto_73

    :cond_89
    :try_start_89
    invoke-interface {p1, v3}, Lokhttp3/t$a;->proceed(Lokhttp3/y;)Lokhttp3/aa;
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_da

    move-result-object v1

    if-nez v1, :cond_98

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_98
    if-eqz v4, :cond_ee

    invoke-static {v4, v1}, Lokhttp3/internal/cache/CacheInterceptor;->validate(Lokhttp3/aa;Lokhttp3/aa;)Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-virtual {v4}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v4}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/internal/cache/CacheInterceptor;->combine(Lokhttp3/r;Lokhttp3/r;)Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/aa$a;->a(Lokhttp3/r;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/aa$a;->b(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/aa$a;->a(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v1}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ab;->close()V

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1}, Lokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-interface {v1, v4, v0}, Lokhttp3/internal/cache/InternalCache;->update(Lokhttp3/aa;Lokhttp3/aa;)V

    goto :goto_73

    :catchall_da
    move-exception v2

    if-nez v1, :cond_e6

    if-eqz v0, :cond_e6

    invoke-virtual {v0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_e6
    throw v2

    :cond_e7
    invoke-virtual {v4}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_ee
    invoke-virtual {v1}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {v4}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/aa$a;->b(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {v1}, Lokhttp3/internal/cache/CacheInterceptor;->stripBody(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/aa$a;->a(Lokhttp3/aa;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/aa;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor;->cache:Lokhttp3/internal/cache/InternalCache;

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/cache/CacheInterceptor;->maybeCache(Lokhttp3/aa;Lokhttp3/y;Lokhttp3/internal/cache/InternalCache;)Lokhttp3/internal/cache/CacheRequest;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    goto/16 :goto_73
.end method
