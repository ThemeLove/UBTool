.class public final Lcom/lidroid/xutils/http/ResponseInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final contentEncoding:Lorg/apache/http/Header;

.field public final contentLength:J

.field public final contentType:Lorg/apache/http/Header;

.field public final locale:Ljava/util/Locale;

.field public final protocolVersion:Lorg/apache/http/ProtocolVersion;

.field public final reasonPhrase:Ljava/lang/String;

.field private final response:Lorg/apache/http/HttpResponse;

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final resultFormCache:Z

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "TT;Z)V"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    iput-object p2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->result:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/lidroid/xutils/http/ResponseInfo;->resultFormCache:Z

    if-eqz p1, :cond_54

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->locale:Ljava/util/Locale;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->statusCode:I

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->protocolVersion:Lorg/apache/http/ProtocolVersion;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->reasonPhrase:Ljava/lang/String;

    :goto_2d
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentLength:J

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentType:Lorg/apache/http/Header;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentEncoding:Lorg/apache/http/Header;

    :goto_45
    return-void

    :cond_46
    iput v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->statusCode:I

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->protocolVersion:Lorg/apache/http/ProtocolVersion;

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->reasonPhrase:Ljava/lang/String;

    goto :goto_2d

    :cond_4d
    iput-wide v3, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentLength:J

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentType:Lorg/apache/http/Header;

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentEncoding:Lorg/apache/http/Header;

    goto :goto_45

    :cond_54
    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->locale:Ljava/util/Locale;

    iput v1, p0, Lcom/lidroid/xutils/http/ResponseInfo;->statusCode:I

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->protocolVersion:Lorg/apache/http/ProtocolVersion;

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->reasonPhrase:Ljava/lang/String;

    iput-wide v3, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentLength:J

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentType:Lorg/apache/http/Header;

    iput-object v2, p0, Lcom/lidroid/xutils/http/ResponseInfo;->contentEncoding:Lorg/apache/http/Header;

    goto :goto_45
.end method


# virtual methods
.method public getAllHeaders()[Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_5
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_5
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_5
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/lidroid/xutils/http/ResponseInfo;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_5
.end method
