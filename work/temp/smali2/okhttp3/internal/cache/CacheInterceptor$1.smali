.class final Lokhttp3/internal/cache/CacheInterceptor$1;
.super Lokhttp3/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/CacheInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public contentType()Lokhttp3/u;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    return-object v0
.end method
