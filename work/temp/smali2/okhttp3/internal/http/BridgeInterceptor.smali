.class public final Lokhttp3/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/t;


# instance fields
.field private final cookieJar:Lokhttp3/n;


# direct methods
.method public constructor <init>(Lokhttp3/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/n;

    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/m;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_33

    if-lez v1, :cond_14

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/m;

    invoke-virtual {v0}, Lokhttp3/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lokhttp3/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/t$a;)Lokhttp3/aa;
    .registers 9

    const/4 v0, 0x0

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/y;->e()Lokhttp3/y$a;

    move-result-object v2

    invoke-virtual {v1}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lokhttp3/z;->a()Lokhttp3/u;

    move-result-object v4

    if-eqz v4, :cond_1e

    const-string v5, "Content-Type"

    invoke-virtual {v4}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_1e
    invoke-virtual {v3}, Lokhttp3/z;->b()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_100

    const-string v5, "Content-Length"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    :cond_36
    :goto_36
    const-string v3, "Host"

    invoke-virtual {v1, v3}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    const-string v3, "Host"

    invoke-virtual {v1}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v4

    invoke-static {v4, v0}, Lokhttp3/internal/Util;->hostHeader(Lokhttp3/s;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_4b
    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5a

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {v2, v3, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_5a
    const-string v3, "Accept-Encoding"

    invoke-virtual {v1, v3}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6a

    const/4 v0, 0x1

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v2, v3, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_6a
    iget-object v3, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/n;

    invoke-virtual {v1}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v4

    invoke-interface {v3, v4}, Lokhttp3/n;->a(Lokhttp3/s;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_83

    const-string v4, "Cookie"

    invoke-direct {p0, v3}, Lokhttp3/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_83
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_94

    const-string v3, "User-Agent"

    invoke-static {}, Lokhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    :cond_94
    invoke-virtual {v2}, Lokhttp3/y$a;->a()Lokhttp3/y;

    move-result-object v2

    invoke-interface {p1, v2}, Lokhttp3/t$a;->proceed(Lokhttp3/y;)Lokhttp3/aa;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/http/BridgeInterceptor;->cookieJar:Lokhttp3/n;

    invoke-virtual {v1}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v4

    invoke-virtual {v2}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lokhttp3/internal/http/HttpHeaders;->receiveHeaders(Lokhttp3/n;Lokhttp3/s;Lokhttp3/r;)V

    invoke-virtual {v2}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokhttp3/aa$a;->a(Lokhttp3/y;)Lokhttp3/aa$a;

    move-result-object v1

    if-eqz v0, :cond_fb

    const-string v0, "gzip"

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/aa;)Z

    move-result v0

    if-eqz v0, :cond_fb

    new-instance v0, Lokio/GzipSource;

    invoke-virtual {v2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ab;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-direct {v0, v3}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-virtual {v2}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/r;->b()Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lokhttp3/r$a;->b(Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lokhttp3/r$a;->b(Ljava/lang/String;)Lokhttp3/r$a;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Lokhttp3/r;)Lokhttp3/aa$a;

    new-instance v3, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/r;Lokio/BufferedSource;)V

    invoke-virtual {v1, v3}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    :cond_fb
    invoke-virtual {v1}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    return-object v0

    :cond_100
    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {v2, v3, v4}, Lokhttp3/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/y$a;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lokhttp3/y$a;->b(Ljava/lang/String;)Lokhttp3/y$a;

    goto/16 :goto_36
.end method
