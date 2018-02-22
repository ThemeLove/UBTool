.class final Lokhttp3/x;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/x$a;
    }
.end annotation


# instance fields
.field a:Lokhttp3/y;

.field private final b:Lokhttp3/v;

.field private final c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

.field private d:Z


# direct methods
.method protected constructor <init>(Lokhttp3/v;Lokhttp3/y;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/x;->b:Lokhttp3/v;

    iput-object p2, p0, Lokhttp3/x;->a:Lokhttp3/y;

    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/v;)V

    iput-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-void
.end method

.method static synthetic a(Lokhttp3/x;)Lokhttp3/aa;
    .registers 2

    invoke-direct {p0}, Lokhttp3/x;->e()Lokhttp3/aa;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lokhttp3/x;)Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
    .registers 2

    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/x;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lokhttp3/x;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "canceled call"

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/x;->c()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const-string v0, "call"

    goto :goto_a
.end method

.method static synthetic d(Lokhttp3/x;)Lokhttp3/v;
    .registers 2

    iget-object v0, p0, Lokhttp3/x;->b:Lokhttp3/v;

    return-object v0
.end method

.method private e()Lokhttp3/aa;
    .registers 8

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v3, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-virtual {v3}, Lokhttp3/v;->f()Lokhttp3/n;

    move-result-object v3

    invoke-direct {v0, v3}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/n;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v3, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-virtual {v3}, Lokhttp3/v;->g()Lokhttp3/internal/cache/InternalCache;

    move-result-object v3

    invoke-direct {v0, v3}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v3, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-direct {v0, v3}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/v;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isForWebSocket()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4b
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-object v3, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isForWebSocket()Z

    move-result v3

    invoke-direct {v0, v3}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lokhttp3/internal/http/RealInterceptorChain;

    const/4 v5, 0x0

    iget-object v6, p0, Lokhttp3/x;->a:Lokhttp3/y;

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/j;ILokhttp3/y;)V

    iget-object v1, p0, Lokhttp3/x;->a:Lokhttp3/y;

    invoke-interface {v0, v1}, Lokhttp3/t$a;->proceed(Lokhttp3/y;)Lokhttp3/aa;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/x;->d:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->setForWebSocket(Z)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public a(Lokhttp3/f;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/x;->d:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lokhttp3/x;->d:Z

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_d

    iget-object v0, p0, Lokhttp3/x;->b:Lokhttp3/v;

    invoke-virtual {v0}, Lokhttp3/v;->s()Lokhttp3/o;

    move-result-object v0

    new-instance v1, Lokhttp3/x$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lokhttp3/x$a;-><init>(Lokhttp3/x;Lokhttp3/f;Lokhttp3/x$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/o;->a(Lokhttp3/x$a;)V

    return-void
.end method

.method b()Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    iget-object v0, p0, Lokhttp3/x;->c:Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method c()Lokhttp3/s;
    .registers 3

    iget-object v0, p0, Lokhttp3/x;->a:Lokhttp3/y;

    invoke-virtual {v0}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v0

    const-string v1, "/..."

    invoke-virtual {v0, v1}, Lokhttp3/s;->c(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v0

    return-object v0
.end method
