.class public final Lokhttp3/internal/http/Http1xStream;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;,
        Lokhttp3/internal/http/Http1xStream$ChunkedSource;,
        Lokhttp3/internal/http/Http1xStream$FixedLengthSource;,
        Lokhttp3/internal/http/Http1xStream$AbstractSource;,
        Lokhttp3/internal/http/Http1xStream$ChunkedSink;,
        Lokhttp3/internal/http/Http1xStream$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field private final client:Lokhttp3/v;

.field private final sink:Lokio/BufferedSink;

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private final streamAllocation:Lokhttp3/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lokhttp3/v;Lokhttp3/internal/connection/StreamAllocation;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream;->client:Lokhttp3/v;

    iput-object p2, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    iput-object p3, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    iput-object p4, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static synthetic access$300(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSink;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$400(Lokhttp3/internal/http/Http1xStream;Lokio/ForwardingTimeout;)V
    .registers 2

    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->detachTimeout(Lokio/ForwardingTimeout;)V

    return-void
.end method

.method static synthetic access$500(Lokhttp3/internal/http/Http1xStream;)I
    .registers 2

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return v0
.end method

.method static synthetic access$502(Lokhttp3/internal/http/Http1xStream;I)I
    .registers 2

    iput p1, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return p1
.end method

.method static synthetic access$600(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$700(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/internal/connection/StreamAllocation;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/http/Http1xStream;)Lokhttp3/v;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->client:Lokhttp3/v;

    return-object v0
.end method

.method private detachTimeout(Lokio/ForwardingTimeout;)V
    .registers 4

    invoke-virtual {p1}, Lokio/ForwardingTimeout;->a()Lokio/Timeout;

    move-result-object v0

    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->a(Lokio/Timeout;)Lokio/ForwardingTimeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method private getTransferStream(Lokhttp3/aa;)Lokio/Source;
    .registers 6

    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/aa;)Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lokhttp3/aa;->a()Lokhttp3/y;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream;->newChunkedSource(Lokhttp3/s;)Lokio/Source;

    move-result-object v0

    goto :goto_c

    :cond_28
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/aa;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_37

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lokio/Source;

    move-result-object v0

    goto :goto_c

    :cond_37
    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->newUnknownLengthSource()Lokio/Source;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public cancel()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    :cond_b
    return-void
.end method

.method public createRequestBody(Lokhttp3/y;J)Lokio/Sink;
    .registers 6

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->newChunkedSink()Lokio/Sink;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p2, p3}, Lokhttp3/internal/http/Http1xStream;->newFixedLengthSink(J)Lokio/Sink;

    move-result-object v0

    goto :goto_12

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public isClosed()Z
    .registers 3

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public newChunkedSink()Lokio/Sink;
    .registers 4

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$ChunkedSink;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newChunkedSource(Lokhttp3/s;)Lokio/Source;
    .registers 5

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/http/Http1xStream$ChunkedSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/s;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lokio/Sink;
    .registers 6

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x2

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lokhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lokhttp3/internal/http/Http1xStream;JLokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lokio/Source;
    .registers 6

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    new-instance v0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lokio/Source;
    .registers 4

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x5

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    new-instance v0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-object v0
.end method

.method public openResponseBody(Lokhttp3/aa;)Lokhttp3/ab;
    .registers 5

    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream;->getTransferStream(Lokhttp3/aa;)Lokio/Source;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http/RealResponseBody;

    invoke-virtual {p1}, Lokhttp3/aa;->g()Lokhttp3/r;

    move-result-object v2

    invoke-static {v0}, Lokio/Okio;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/http/RealResponseBody;-><init>(Lokhttp3/r;Lokio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lokhttp3/r;
    .registers 4

    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    :goto_5
    iget-object v1, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/Internal;->addLenient(Lokhttp3/r$a;Ljava/lang/String;)V

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    return-object v0
.end method

.method public readResponse()Lokhttp3/aa$a;
    .registers 5

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :try_start_25
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lokhttp3/internal/http/StatusLine;

    move-result-object v0

    new-instance v1, Lokhttp3/aa$a;

    invoke-direct {v1}, Lokhttp3/aa$a;-><init>()V

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->protocol:Lokhttp3/w;

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Lokhttp3/w;)Lokhttp3/aa$a;

    move-result-object v1

    iget v2, v0, Lokhttp3/internal/http/StatusLine;->code:I

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(I)Lokhttp3/aa$a;

    move-result-object v1

    iget-object v2, v0, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Ljava/lang/String;)Lokhttp3/aa$a;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->readHeaders()Lokhttp3/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/aa$a;->a(Lokhttp3/r;)Lokhttp3/aa$a;

    move-result-object v1

    iget v0, v0, Lokhttp3/internal/http/StatusLine;->code:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_25

    const/4 v0, 0x4

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I
    :try_end_57
    .catch Ljava/io/EOFException; {:try_start_25 .. :try_end_57} :catch_58

    return-object v1

    :catch_58
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public readResponseHeaders()Lokhttp3/aa$a;
    .registers 2

    invoke-virtual {p0}, Lokhttp3/internal/http/Http1xStream;->readResponse()Lokhttp3/aa$a;

    move-result-object v0

    return-object v0
.end method

.method public writeRequest(Lokhttp3/r;Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lokhttp3/r;->a()I

    move-result v1

    :goto_2f
    if-ge v0, v1, :cond_51

    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    invoke-virtual {p1, v0}, Lokhttp3/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-virtual {p1, v0}, Lokhttp3/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_51
    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->sink:Lokio/BufferedSink;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/http/Http1xStream;->state:I

    return-void
.end method

.method public writeRequestHeaders(Lokhttp3/y;)V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/http/Http1xStream;->streamAllocation:Lokhttp3/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/ac;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ac;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/internal/http/RequestLine;->get(Lokhttp3/y;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/y;->c()Lokhttp3/r;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http/Http1xStream;->writeRequest(Lokhttp3/r;Ljava/lang/String;)V

    return-void
.end method
