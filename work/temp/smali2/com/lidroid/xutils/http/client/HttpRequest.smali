.class public Lcom/lidroid/xutils/http/client/HttpRequest;
.super Lorg/apache/http/client/methods/HttpRequestBase;

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;
    }
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

.field private uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

.field private uriCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;)V
    .registers 2

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/net/URI;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/HttpRequest;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public addQueryStringParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParameter(Lorg/apache/http/NameValuePair;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-object p0
.end method

.method public addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/lidroid/xutils/http/client/HttpRequest;"
        }
    .end annotation

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    return-object p0

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/util/URIBuilder;

    goto :goto_6
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/HttpRequest;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    invoke-static {v1}, Lorg/apache/http/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpEntity;

    iput-object v1, v0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    :cond_14
    return-object v0
.end method

.method public expectContinue()Z
    .registers 3

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "100-continue"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->method:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/lidroid/xutils/util/OtherUtils;->getCharsetFromHttpRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    :cond_a
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_16

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    :cond_16
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;->build(Ljava/nio/charset/Charset;)Ljava/net/URI;
    :try_end_1d
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->entity:Lorg/apache/http/HttpEntity;

    return-void
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;)V
    .registers 5

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    :cond_10
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    :cond_20
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_2e
    return-void

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    iget-boolean v2, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_3f

    iget-object v0, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_1a

    :cond_3f
    iget-object v0, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1a
.end method

.method public setRequestParams(Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 6

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriCharset:Ljava/nio/charset/Charset;

    :cond_10
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_20
    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addQueryStringParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/HttpRequest;

    invoke-virtual {p1}, Lcom/lidroid/xutils/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_3a

    instance-of v0, v1, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Lcom/lidroid/xutils/http/client/entity/UploadEntity;

    invoke-interface {v0, p2}, Lcom/lidroid/xutils/http/client/entity/UploadEntity;->setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    :cond_37
    invoke-virtual {p0, v1}, Lcom/lidroid/xutils/http/client/HttpRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_3a
    return-void

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;

    iget-boolean v2, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->overwrite:Z

    if-eqz v2, :cond_4b

    iget-object v0, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->setHeader(Lorg/apache/http/Header;)V

    goto :goto_1a

    :cond_4b
    iget-object v0, v0, Lcom/lidroid/xutils/http/RequestParams$HeaderItem;->header:Lorg/apache/http/Header;

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_1a
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/http/client/util/URIBuilder;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/http/client/util/URIBuilder;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/HttpRequest;->uriBuilder:Lcom/lidroid/xutils/http/client/util/URIBuilder;

    return-void
.end method
