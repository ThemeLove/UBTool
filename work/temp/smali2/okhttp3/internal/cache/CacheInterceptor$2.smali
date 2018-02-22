.class Lokhttp3/internal/cache/CacheInterceptor$2;
.super Ljava/lang/Object;

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lokhttp3/internal/cache/CacheRequest;Lokhttp3/aa;)Lokhttp3/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lokio/BufferedSink;

.field final synthetic val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/CacheInterceptor;Lokio/BufferedSource;Lokhttp3/internal/cache/CacheRequest;Lokio/BufferedSink;)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->this$0:Lokhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    iput-object p3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v0, :cond_16

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->discard(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    :cond_16
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10

    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    :try_start_3
    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1a

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_27

    iget-boolean v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v2, :cond_18

    iput-boolean v3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    iget-object v2, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v2}, Lokio/BufferedSink;->close()V

    :cond_18
    move-wide v4, v0

    :goto_19
    return-wide v4

    :catch_1a
    move-exception v0

    iget-boolean v1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    if-nez v1, :cond_26

    iput-boolean v3, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->cacheRequestClosed:Z

    iget-object v1, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheRequest:Lokhttp3/internal/cache/CacheRequest;

    invoke-interface {v1}, Lokhttp3/internal/cache/CacheRequest;->abort()V

    :cond_26
    throw v0

    :cond_27
    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->b()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lokio/Buffer;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$cacheBody:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->t()Lokio/BufferedSink;

    goto :goto_19
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/CacheInterceptor$2;->val$source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
