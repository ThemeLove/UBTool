.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/t;


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/t$a;)Lokhttp3/aa;
    .registers 9

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpStream;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {v0}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v2

    invoke-interface {p1}, Lokhttp3/t$a;->request()Lokhttp3/y;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->writeRequestHeaders(Lokhttp3/y;)V

    invoke-virtual {v0}, Lokhttp3/y;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v0}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v5

    if-eqz v5, :cond_43

    invoke-virtual {v0}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/z;->b()J

    move-result-wide v5

    invoke-interface {v1, v0, v5, v6}, Lokhttp3/internal/http/HttpStream;->createRequestBody(Lokhttp3/y;J)Lokio/Sink;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v5

    invoke-virtual {v0}, Lokhttp3/y;->d()Lokhttp3/z;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokhttp3/z;->a(Lokio/BufferedSink;)V

    invoke-interface {v5}, Lokio/BufferedSink;->close()V

    :cond_43
    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->finishRequest()V

    invoke-interface {v1}, Lokhttp3/internal/http/HttpStream;->readResponseHeaders()Lokhttp3/aa$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lokhttp3/aa$a;->a(Lokhttp3/y;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/q;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/aa$a;->a(Lokhttp3/q;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lokhttp3/aa$a;->a(J)Lokhttp3/aa$a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lokhttp3/aa$a;->b(J)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    iget-boolean v3, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    if-eqz v3, :cond_76

    invoke-virtual {v0}, Lokhttp3/aa;->c()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_86

    :cond_76
    invoke-virtual {v0}, Lokhttp3/aa;->i()Lokhttp3/aa$a;

    move-result-object v3

    invoke-interface {v1, v0}, Lokhttp3/internal/http/HttpStream;->openResponseBody(Lokhttp3/aa;)Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/aa$a;->a(Lokhttp3/ab;)Lokhttp3/aa$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa$a;->a()Lokhttp3/aa;

    move-result-object v0

    :cond_86
    const-string v1, "close"

    invoke-virtual {v0}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v3

    const-string v4, "Connection"

    invoke-virtual {v3, v4}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "close"

    const-string v3, "Connection"

    invoke-virtual {v0, v3}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    :cond_a6
    invoke-virtual {v2}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    :cond_a9
    invoke-virtual {v0}, Lokhttp3/aa;->c()I

    move-result v1

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_b5

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_ee

    :cond_b5
    invoke-virtual {v0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ab;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_ee

    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ab;->contentLength()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ee
    return-object v0
.end method
