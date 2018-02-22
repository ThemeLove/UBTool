.class public Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lidroid/xutils/http/client/entity/UploadEntity;
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;
    }
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final boundary:Ljava/lang/String;

.field private callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

.field private final charset:Ljava/nio/charset/Charset;

.field private contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

.field private multipartSubtype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;-><init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    const-string v0, "form-data"

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    if-nez p2, :cond_14

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateBoundary()Ljava/lang/String;

    move-result-object p2

    :cond_14
    iput-object p2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    if-nez p1, :cond_1a

    sget-object p1, Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;

    :cond_1a
    if-eqz p3, :cond_40

    :goto_1c
    iput-object p3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/HttpMultipartMode;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    return-void

    :cond_40
    sget-object p3, Lcom/lidroid/xutils/http/client/multipart/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_1c
.end method


# virtual methods
.method public addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->addBodyPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V
    .registers 4

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-direct {v0, p1, p2, p3}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;-><init>(Ljava/lang/String;Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->addPart(Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;)V

    return-void
.end method

.method public consumeContent()V
    .registers 3

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method protected generateBoundary()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v3, :cond_1a

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    sget-object v4, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "multipart/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->length:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->dirty:Z

    :cond_f
    iget-wide v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isRepeatable()Z
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/client/multipart/FormBodyPart;->getBody()Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;

    move-result-object v0

    invoke-interface {v0}, Lcom/lidroid/xutils/http/client/multipart/content/ContentBody;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isStreaming()Z
    .registers 2

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    iput-object p1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;

    return-void
.end method

.method public setMultipartSubtype(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipartSubtype:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->setSubType(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->boundary:Ljava/lang/String;

    iget-object v3, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2, v3}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {p0}, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->getContentLength()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->multipart:Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;

    iget-object v1, p0, Lcom/lidroid/xutils/http/client/multipart/MultipartEntity;->callBackInfo:Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-virtual {v0, p1, v1}, Lcom/lidroid/xutils/http/client/multipart/HttpMultipart;->writeTo(Ljava/io/OutputStream;Lcom/lidroid/xutils/http/client/multipart/MultipartEntity$CallBackInfo;)V

    return-void
.end method
