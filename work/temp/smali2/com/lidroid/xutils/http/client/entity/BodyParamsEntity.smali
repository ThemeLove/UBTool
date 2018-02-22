.class public Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private charset:Ljava/lang/String;

.field protected content:[B

.field private dirty:Z

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    :cond_e
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->setContentType(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    if-eqz p2, :cond_e

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    :cond_e
    const-string v0, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->setContentType(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->refreshContent()V

    return-void
.end method

.method private refreshContent()V
    .registers 3

    iget-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    if-eqz v0, :cond_17

    :try_start_4
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lidroid/xutils/http/client/util/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->content:[B
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_14} :catch_18

    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    :cond_17
    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    return-object p0
.end method

.method public addParams(Ljava/util/List;)Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->params:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->dirty:Z

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->refreshContent()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->refreshContent()V

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->content:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-direct {p0}, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->refreshContent()V

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/entity/BodyParamsEntity;->content:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
