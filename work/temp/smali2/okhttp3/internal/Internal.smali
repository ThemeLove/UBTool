.class public abstract Lokhttp3/internal/Internal;
.super Ljava/lang/Object;


# static fields
.field public static instance:Lokhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .registers 1

    new-instance v0, Lokhttp3/v;

    invoke-direct {v0}, Lokhttp3/v;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lokhttp3/r$a;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lokhttp3/r$a;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lokhttp3/l;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract callEngineGetStreamAllocation(Lokhttp3/e;)Lokhttp3/internal/connection/StreamAllocation;
.end method

.method public abstract connectionBecameIdle(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract get(Lokhttp3/k;Lokhttp3/a;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/connection/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lokhttp3/s;
.end method

.method public abstract put(Lokhttp3/k;Lokhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lokhttp3/k;)Lokhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lokhttp3/v$a;Lokhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract setCallWebSocket(Lokhttp3/e;)V
.end method
