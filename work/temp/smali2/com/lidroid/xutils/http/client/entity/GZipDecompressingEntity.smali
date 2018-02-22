.class public Lcom/lidroid/xutils/http/client/entity/GZipDecompressingEntity;
.super Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .registers 2

    invoke-super {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getContentLength()J
    .registers 3

    invoke-super {p0}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->setCallBackHandler(Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;)V

    return-void
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/lidroid/xutils/http/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
