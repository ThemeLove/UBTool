.class public final Lcom/fanwei/jubaosdk/common/http/DownloadApi;
.super Ljava/lang/Object;


# static fields
.field private static apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/Webb;->create()Lcom/fanwei/bluearty/tinyhttp/Webb;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/http/DownloadApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/DownloadApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-string v1, "Accept"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setDefaultHeader(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/DownloadApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->setDefaultHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No Instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static newDownloadCall(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;JLjava/io/File;ZII)Lcom/fanwei/jubaosdk/common/http/DownloadCall;
    .registers 12

    sget-object v0, Lcom/fanwei/jubaosdk/common/http/DownloadApi;->apiClient:Lcom/fanwei/bluearty/tinyhttp/Webb;

    invoke-virtual {v0, p1}, Lcom/fanwei/bluearty/tinyhttp/Webb;->get(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/fanwei/bluearty/tinyhttp/Request;->readTimeout(I)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/fanwei/bluearty/tinyhttp/Request;->connectTimeout(I)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    if-eqz p5, :cond_2e

    const-string v1, "range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/bluearty/tinyhttp/Request;->header(Ljava/lang/String;Ljava/lang/Object;)Lcom/fanwei/bluearty/tinyhttp/Request;

    :cond_2e
    new-instance v1, Lcom/fanwei/jubaosdk/common/http/DownloadCall;

    invoke-direct {v1, p0, v0, p4, p5}, Lcom/fanwei/jubaosdk/common/http/DownloadCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;Ljava/io/File;Z)V

    return-object v1
.end method
