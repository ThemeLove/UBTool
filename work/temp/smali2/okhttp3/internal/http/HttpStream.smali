.class public interface abstract Lokhttp3/internal/http/HttpStream;
.super Ljava/lang/Object;


# static fields
.field public static final DISCARD_STREAM_TIMEOUT_MILLIS:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract createRequestBody(Lokhttp3/y;J)Lokio/Sink;
.end method

.method public abstract finishRequest()V
.end method

.method public abstract openResponseBody(Lokhttp3/aa;)Lokhttp3/ab;
.end method

.method public abstract readResponseHeaders()Lokhttp3/aa$a;
.end method

.method public abstract writeRequestHeaders(Lokhttp3/y;)V
.end method
