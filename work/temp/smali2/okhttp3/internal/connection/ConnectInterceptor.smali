.class public final Lokhttp3/internal/connection/ConnectInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/t;


# instance fields
.field public final client:Lokhttp3/v;


# direct methods
.method public constructor <init>(Lokhttp3/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/v;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/t$a;)Lokhttp3/aa;
    .registers 6

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/y;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/y;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_17
    iget-object v3, p0, Lokhttp3/internal/connection/ConnectInterceptor;->client:Lokhttp3/v;

    invoke-virtual {v2, v3, v0}, Lokhttp3/internal/connection/StreamAllocation;->newStream(Lokhttp3/v;Z)Lokhttp3/internal/http/HttpStream;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/y;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/internal/http/HttpStream;Lokhttp3/j;)Lokhttp3/aa;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_17
.end method
