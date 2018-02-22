.class public Lcom/fanwei/bluearty/tinyhttp/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/bluearty/tinyhttp/Request$Method;
    }
.end annotation


# instance fields
.field compress:Z

.field connectTimeout:Ljava/lang/Integer;

.field ensureSuccess:Z

.field followRedirects:Ljava/lang/Boolean;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ifModifiedSince:Ljava/lang/Long;

.field final method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

.field multipleValues:Z

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field payload:Ljava/lang/Object;

.field readTimeout:Ljava/lang/Integer;

.field retryCount:I

.field streamPayload:Z

.field final uri:Ljava/lang/String;

.field useCaches:Z

.field waitExponential:Z

.field private final webb:Lcom/fanwei/bluearty/tinyhttp/Webb;


# direct methods
.method constructor <init>(Lcom/fanwei/bluearty/tinyhttp/Webb;Lcom/fanwei/bluearty/tinyhttp/Request$Method;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    iput-object p2, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    iput-object p3, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Webb;->followRedirects:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public asBytes()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Const;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public asJsonArray()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public asStream()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public asString()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public asVoid()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->webb:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-class v1, Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->execute(Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/lang/Class;)Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->GET:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Request$Method;->DELETE:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    if-ne v0, v1, :cond_27

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body not allowed for request method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->method:Lcom/fanwei/bluearty/tinyhttp/Request$Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, p1, Ljava/io/File;

    if-nez v0, :cond_31

    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_35

    :cond_31
    const/4 v0, 0x1

    :goto_32
    iput-boolean v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->streamPayload:Z

    return-object p0

    :cond_35
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public compress()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->compress:Z

    return-object p0
.end method

.method public connectTimeout(I)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->connectTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public ensureSuccess()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->ensureSuccess:Z

    return-object p0
.end method

.method public followRedirects(Z)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->followRedirects:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->headers:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->headers:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public ifModifiedSince(J)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->ifModifiedSince:Ljava/lang/Long;

    return-object p0
.end method

.method public isHttpsRequest()Z
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public multipleValues()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->multipleValues:Z

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fanwei/bluearty/tinyhttp/Request;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    :cond_b
    iget-boolean v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->multipleValues:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_21

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_20
    return-object p0

    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_32
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20
.end method

.method public params(Ljava/util/Map;)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fanwei/bluearty/tinyhttp/Request;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public readTimeout(I)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->readTimeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public retry(IZ)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 5

    const/16 v0, 0xa

    if-gez p1, :cond_1b

    const/4 v1, 0x0

    :goto_5
    if-le v1, v0, :cond_19

    :goto_7
    const/4 v1, 0x3

    if-le v0, v1, :cond_14

    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "retries > 3 only valid with wait"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput v0, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->retryCount:I

    iput-boolean p2, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->waitExponential:Z

    return-object p0

    :cond_19
    move v0, v1

    goto :goto_7

    :cond_1b
    move v1, p1

    goto :goto_5
.end method

.method public useCaches(Z)Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    iput-boolean p1, p0, Lcom/fanwei/bluearty/tinyhttp/Request;->useCaches:Z

    return-object p0
.end method
