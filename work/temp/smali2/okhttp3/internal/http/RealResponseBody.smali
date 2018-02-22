.class public final Lokhttp3/internal/http/RealResponseBody;
.super Lokhttp3/ab;


# instance fields
.field private final headers:Lokhttp3/r;

.field private final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokhttp3/r;Lokio/BufferedSource;)V
    .registers 3

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/r;

    iput-object p2, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/r;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/u;
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->headers:Lokhttp3/r;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lokhttp3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lokhttp3/u;->a(Ljava/lang/String;)Lokhttp3/u;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public source()Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/RealResponseBody;->source:Lokio/BufferedSource;

    return-object v0
.end method
