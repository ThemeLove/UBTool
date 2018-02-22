.class public Lokhttp3/internal/cache/CacheStrategy$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private ageSeconds:I

.field final cacheResponse:Lokhttp3/aa;

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private lastModified:Ljava/util/Date;

.field private lastModifiedString:Ljava/lang/String;

.field final nowMillis:J

.field private receivedResponseMillis:J

.field final request:Lokhttp3/y;

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private servedDateString:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLokhttp3/y;Lokhttp3/aa;)V
    .registers 12

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    iput-wide p1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iput-object p3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    if-eqz p4, :cond_7a

    invoke-virtual {p4}, Lokhttp3/aa;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    invoke-virtual {p4}, Lokhttp3/aa;->m()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    invoke-virtual {p4}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lokhttp3/r;->a()I

    move-result v2

    :goto_23
    if-ge v0, v2, :cond_7a

    invoke-virtual {v1, v0}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_40
    const-string v5, "Expires"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    goto :goto_3d

    :cond_4f
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-static {v4}, Lokhttp3/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_3d

    :cond_60
    const-string v5, "ETag"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    iput-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    goto :goto_3d

    :cond_6b
    const-string v5, "Age"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {v4, v6}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    goto :goto_3d

    :cond_7a
    return-void
.end method

.method private cacheResponseAge()J
    .registers 9

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_13
    iget v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->ageSeconds:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_25
    iget-wide v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->nowMillis:J

    iget-wide v6, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method private computeFreshnessLifetime()J
    .registers 7

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d;->c()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1b

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lokhttp3/d;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_1a
    :goto_1a
    return-wide v2

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_29
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3a

    :goto_35
    move-wide v2, v0

    goto :goto_1a

    :cond_37
    iget-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->receivedResponseMillis:J

    goto :goto_29

    :cond_3a
    move-wide v0, v2

    goto :goto_35

    :cond_3c
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/s;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_5a
    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_1a

    :cond_6a
    iget-wide v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->sentRequestMillis:J

    goto :goto_5a
.end method

.method private getCandidate()Lokhttp3/internal/cache/CacheStrategy;
    .registers 14

    const-wide/16 v4, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    if-nez v0, :cond_10

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-direct {v0, v1, v11, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->g()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->f()Lokhttp3/q;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-direct {v0, v1, v11, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_f

    :cond_28
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-static {v0, v1}, Lokhttp3/internal/cache/CacheStrategy;->isCacheable(Lokhttp3/aa;Lokhttp3/y;)Z

    move-result v0

    if-nez v0, :cond_3a

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-direct {v0, v1, v11, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_f

    :cond_3a
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->f()Lokhttp3/d;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/d;->a()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-static {v0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->hasConditions(Lokhttp3/y;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_4e
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-direct {v0, v1, v11, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto :goto_f

    :cond_56
    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponseAge()J

    move-result-wide v7

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->computeFreshnessLifetime()J

    move-result-wide v0

    invoke-virtual {v6}, Lokhttp3/d;->c()I

    move-result v2

    if-eq v2, v12, :cond_73

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/d;->c()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_73
    invoke-virtual {v6}, Lokhttp3/d;->h()I

    move-result v2

    if-eq v2, v12, :cond_12c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/d;->h()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :goto_84
    iget-object v9, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v9}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/d;->f()Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-virtual {v6}, Lokhttp3/d;->g()I

    move-result v10

    if-eq v10, v12, :cond_a1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6}, Lokhttp3/d;->g()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :cond_a1
    invoke-virtual {v9}, Lokhttp3/d;->a()Z

    move-result v6

    if-nez v6, :cond_df

    add-long v9, v7, v2

    add-long/2addr v4, v0

    cmp-long v4, v9, v4

    if-gez v4, :cond_df

    iget-object v4, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v4}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v4

    add-long/2addr v2, v7

    cmp-long v0, v2, v0

    if-ltz v0, :cond_c0

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    :cond_c0
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v7, v0

    if-lez v0, :cond_d4

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->isFreshnessLifetimeHeuristic()Z

    move-result v0

    if-eqz v0, :cond_d4

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v0, v1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;

    :cond_d4
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    invoke-virtual {v4}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v1

    invoke-direct {v0, v11, v1, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_f

    :cond_df
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    if-eqz v0, :cond_111

    const-string v1, "If-None-Match"

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->etag:Ljava/lang/String;

    :goto_e7
    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-virtual {v2}, Lokhttp3/y;->c()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/r;->b()Lokhttp3/r$a;

    move-result-object v2

    sget-object v3, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v3, v2, v1, v0}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->e()Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/y$a;->a(Lokhttp3/r;)Lokhttp3/y$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y$a;->a()Lokhttp3/y;

    move-result-object v1

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v2, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-direct {v0, v1, v2, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_f

    :cond_111
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_11a

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->lastModifiedString:Ljava/lang/String;

    goto :goto_e7

    :cond_11a
    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_123

    const-string v1, "If-Modified-Since"

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->servedDateString:Ljava/lang/String;

    goto :goto_e7

    :cond_123
    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-direct {v0, v1, v11, v11}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    goto/16 :goto_f

    :cond_12c
    move-wide v2, v4

    goto/16 :goto_84
.end method

.method private static hasConditions(Lokhttp3/y;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->cacheResponse:Lokhttp3/aa;

    invoke-virtual {v0}, Lokhttp3/aa;->k()Lokhttp3/d;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->expires:Ljava/util/Date;

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public get()Lokhttp3/internal/cache/CacheStrategy;
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lokhttp3/internal/cache/CacheStrategy$Factory;->getCandidate()Lokhttp3/internal/cache/CacheStrategy;

    move-result-object v0

    iget-object v1, v0, Lokhttp3/internal/cache/CacheStrategy;->networkRequest:Lokhttp3/y;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lokhttp3/internal/cache/CacheStrategy$Factory;->request:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->f()Lokhttp3/d;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lokhttp3/internal/cache/CacheStrategy;

    invoke-direct {v0, v2, v2, v2}, Lokhttp3/internal/cache/CacheStrategy;-><init>(Lokhttp3/y;Lokhttp3/aa;Lokhttp3/internal/cache/CacheStrategy$1;)V

    :cond_1a
    return-object v0
.end method
