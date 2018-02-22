.class final Lokhttp3/v$1;
.super Lokhttp3/internal/Internal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lokhttp3/r$a;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp3/r$a;->a(Ljava/lang/String;)Lokhttp3/r$a;

    return-void
.end method

.method public addLenient(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokhttp3/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    return-void
.end method

.method public apply(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    invoke-virtual {p1, p2, p3}, Lokhttp3/l;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public callEngineGetStreamAllocation(Lokhttp3/e;)Lokhttp3/internal/connection/StreamAllocation;
    .registers 3

    check-cast p1, Lokhttp3/x;

    invoke-virtual {p1}, Lokhttp3/x;->b()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public connectionBecameIdle(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)Z
    .registers 4

    invoke-virtual {p1, p2}, Lokhttp3/k;->b(Lokhttp3/internal/connection/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public get(Lokhttp3/k;Lokhttp3/a;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
    .registers 5

    invoke-virtual {p1, p2, p3}, Lokhttp3/k;->a(Lokhttp3/a;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lokhttp3/s;
    .registers 3

    invoke-static {p1}, Lokhttp3/s;->f(Ljava/lang/String;)Lokhttp3/s;

    move-result-object v0

    return-object v0
.end method

.method public put(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)V
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp3/k;->a(Lokhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lokhttp3/k;)Lokhttp3/internal/connection/RouteDatabase;
    .registers 3

    iget-object v0, p1, Lokhttp3/k;->a:Lokhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lokhttp3/v$a;Lokhttp3/internal/cache/InternalCache;)V
    .registers 3

    invoke-virtual {p1, p2}, Lokhttp3/v$a;->a(Lokhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public setCallWebSocket(Lokhttp3/e;)V
    .registers 2

    check-cast p1, Lokhttp3/x;

    invoke-virtual {p1}, Lokhttp3/x;->a()V

    return-void
.end method
