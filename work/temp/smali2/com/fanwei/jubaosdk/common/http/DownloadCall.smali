.class public final Lcom/fanwei/jubaosdk/common/http/DownloadCall;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private append:Z

.field private final file:Ljava/io/File;

.field private final request:Lcom/fanwei/bluearty/tinyhttp/Request;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/io/File;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->append:Z

    iput-object p2, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    iput-object p3, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->file:Ljava/io/File;

    iput-boolean p4, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->append:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->execute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->file:Ljava/io/File;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the file is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "the parent file is null, cannot be created"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/io/IOException;

    const-string v1, "parentFile directory mkdirs failure or if the directory already existed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/16 v0, 0x400

    new-array v1, v0, [B

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->asStream()Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    if-nez v0, :cond_44

    const/4 v0, 0x0

    :goto_43
    return-object v0

    :cond_44
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->file:Ljava/io/File;

    iget-boolean v4, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->append:Z

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_59

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4d

    :cond_59
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/DownloadCall;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method
