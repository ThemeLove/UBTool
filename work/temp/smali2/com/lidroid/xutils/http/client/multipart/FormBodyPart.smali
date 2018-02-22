.class public Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;
.super Ljava/lang/Object;


# instance fields
.field private final body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

.field private final header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    if-eqz p3, :cond_30

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    return-void

    :cond_30
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    goto :goto_29
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    new-instance v1, Lcom/lidroid/xutils/http/client/multipart/MinimalField;

    invoke-direct {v1, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;->addField(Lcom/lidroid/xutils/http/client/multipart/MinimalField;)V

    return-void
.end method

.method protected generateContentDisposition(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    const-string v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateTransferEncoding(Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .registers 4

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->body:Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->header:Lcom/lidroid/xutils/http/client/multipart/MinimalFieldHeader;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
