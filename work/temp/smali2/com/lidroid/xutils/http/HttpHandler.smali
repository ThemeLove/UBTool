.class public Lcom/lidroid/xutils/http/HttpHandler;
.super Lcom/lidroid/xutils/task/PriorityAsyncTask;

# interfaces
.implements Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;,
        Lcom/lidroid/xutils/http/HttpHandler$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lidroid/xutils/task/PriorityAsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;"
    }
.end annotation


# static fields
.field private static final UPDATE_FAILURE:I = 0x3

.field private static final UPDATE_LOADING:I = 0x2

.field private static final UPDATE_START:I = 0x1

.field private static final UPDATE_SUCCESS:I = 0x4

.field private static final notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;


# instance fields
.field private autoRename:Z

.field private autoResume:Z

.field private callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private charset:Ljava/lang/String;

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private expiry:J

.field private fileSavePath:Ljava/lang/String;

.field private httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

.field private isDownloadingFile:Z

.field private isUploading:Z

.field private lastUpdateTime:J

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private requestMethod:Ljava/lang/String;

.field private requestUrl:Ljava/lang/String;

.field private retriedCount:I

.field private state:Lcom/lidroid/xutils/http/HttpHandler$State;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;-><init>(Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;)V

    sput-object v0, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Ljava/lang/String;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/client/AbstractHttpClient;",
            "Lorg/apache/http/protocol/HttpContext;",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityAsyncTask;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    iput v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    iput-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->WAITING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    invoke-static {}, Lcom/lidroid/xutils/http/HttpCache;->getDefaultExpiryTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p2, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    iput-object p4, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iput-object p3, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler;->notUseApacheRedirectHandler:Lcom/lidroid/xutils/http/HttpHandler$NotUseApacheRedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    return-void
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<TT;>;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_c

    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v1, "response is null"

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-object v5

    :cond_13
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_78

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_af

    iput-boolean v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    iget-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v0, :cond_56

    iget-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v0, :cond_54

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->isSupportRange(Lorg/apache/http/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x1

    :goto_36
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    iget-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    if-eqz v0, :cond_40

    invoke-static {p1}, Lcom/lidroid/xutils/util/OtherUtils;->getFileNameFromHttpResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    :cond_40
    new-instance v0, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;-><init>()V

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/FileDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_4e
    :goto_4e
    new-instance v5, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-direct {v5, p1, v1, v6}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    goto :goto_12

    :cond_54
    move v0, v6

    goto :goto_36

    :cond_56
    new-instance v0, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;-><init>()V

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, v2}, Lcom/lidroid/xutils/http/callback/StringDownloadHandler;->handleEntity(Lorg/apache/http/HttpEntity;Lcom/lidroid/xutils/http/callback/RequestCallBackHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v2, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    iget-wide v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/lidroid/xutils/http/HttpCache;->put(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_4e

    :cond_78
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_80

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_99

    :cond_80
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    if-nez v0, :cond_8b

    new-instance v0, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/callback/DefaultHttpRedirectHandler;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    :cond_8b
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;->getDirectRequest(Lorg/apache/http/HttpResponse;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v5

    goto/16 :goto_12

    :cond_99
    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_a5

    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    const-string v2, "maybe the file has downloaded completely"

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_a5
    new-instance v2, Lcom/lidroid/xutils/exception/HttpException;

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/lidroid/xutils/exception/HttpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_af
    move-object v1, v5

    goto :goto_4e
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<TT;>;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v5

    :cond_9
    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    if-eqz v1, :cond_46

    iget-boolean v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    if-eqz v1, :cond_46

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_28
    cmp-long v6, v1, v3

    if-lez v6, :cond_46

    const-string v6, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :try_start_46
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    sget-object v1, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/HttpCache;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    sget-object v1, Lcom/lidroid/xutils/HttpUtils;->sHttpCache:Lcom/lidroid/xutils/http/HttpCache;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/HttpCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    new-instance v1, Lcom/lidroid/xutils/http/ResponseInfo;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v6, v2, v7}, Lcom/lidroid/xutils/http/ResponseInfo;-><init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;Z)V

    move-object v0, v1

    :cond_68
    :goto_68
    return-object v0

    :cond_69
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_68

    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lidroid/xutils/http/HttpHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/lidroid/xutils/http/ResponseInfo;
    :try_end_7a
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_7a} :catch_7c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_7a} :catch_91
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_7a} :catch_9f
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_46 .. :try_end_7a} :catch_bc
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_7a} :catch_be

    move-result-object v0

    goto :goto_68

    :catch_7c
    move-exception v1

    iget v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v1, v2, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    :goto_89
    if-nez v2, :cond_9

    new-instance v0, Lcom/lidroid/xutils/exception/HttpException;

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/HttpException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_91
    move-exception v1

    iget v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v1, v2, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v2

    goto :goto_89

    :catch_9f
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v2, v1, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_89

    :catch_bc
    move-exception v0

    throw v0

    :catch_be
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->retriedCount:I

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v5, v2, v1, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_89

    :cond_db
    move-wide v1, v3

    goto/16 :goto_28
.end method


# virtual methods
.method public cancel()V
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v0

    if-nez v0, :cond_15

    :try_start_10
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_2b

    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/lidroid/xutils/http/HttpHandler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_1c
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->cancel(Z)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_29

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onCancelled()V

    :cond_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_1f

    :catch_2b
    move-exception v0

    goto :goto_15
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/http/HttpHandler;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v3, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v3, :cond_10

    if-eqz p1, :cond_10

    array-length v0, p1

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-object v7

    :cond_11
    array-length v0, p1

    if-le v0, v6, :cond_37

    aget-object v0, p1, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->fileSavePath:Ljava/lang/String;

    if-eqz v0, :cond_9f

    move v0, v1

    :goto_21
    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->isDownloadingFile:Z

    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoResume:Z

    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->autoRename:Z

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v3, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v3, :cond_10

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    iget-object v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->requestUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->setRequestUrl(Ljava/lang/String;)V

    :cond_5b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/http/HttpHandler;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/lidroid/xutils/http/ResponseInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V
    :try_end_88
    .catch Lcom/lidroid/xutils/exception/HttpException; {:try_start_37 .. :try_end_88} :catch_89

    goto :goto_10

    :catch_89
    move-exception v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {v0}, Lcom/lidroid/xutils/exception/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v3}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_9f
    move v0, v2

    goto :goto_21
.end method

.method public getRequestCallBack()Lcom/lidroid/xutils/http/callback/RequestCallBack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-object v0
.end method

.method public getState()Lcom/lidroid/xutils/http/HttpHandler$State;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    return-object v0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v1, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v0, v1, :cond_12

    if-eqz p1, :cond_12

    array-length v0, p1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_7c

    goto :goto_12

    :pswitch_20
    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->STARTED:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onStart()V

    goto :goto_12

    :pswitch_2a
    array-length v0, p1

    if-ne v0, v2, :cond_12

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->LOADING:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aget-object v3, p1, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/lidroid/xutils/http/HttpHandler;->isUploading:Z

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onLoading(JJZ)V

    goto :goto_12

    :pswitch_55
    array-length v0, p1

    if-ne v0, v2, :cond_12

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->FAILURE:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v3

    check-cast v0, Lcom/lidroid/xutils/exception/HttpException;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V

    goto :goto_12

    :pswitch_6a
    array-length v0, p1

    if-ne v0, v4, :cond_12

    sget-object v0, Lcom/lidroid/xutils/http/HttpHandler$State;->SUCCESS:Lcom/lidroid/xutils/http/HttpHandler$State;

    iput-object v0, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    iget-object v1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    aget-object v0, p1, v3

    check-cast v0, Lcom/lidroid/xutils/http/ResponseInfo;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V

    goto :goto_12

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_20
        :pswitch_2a
        :pswitch_55
        :pswitch_6a
    .end packed-switch
.end method

.method public setExpiry(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->expiry:J

    return-void
.end method

.method public setHttpRedirectHandler(Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->httpRedirectHandler:Lcom/lidroid/xutils/http/callback/HttpRedirectHandler;

    :cond_4
    return-void
.end method

.method public setRequestCallBack(Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    return-void
.end method

.method public updateProgress(JJZ)Z
    .registers 16

    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v3, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v2, v3, :cond_27

    if-eqz p5, :cond_2e

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->state:Lcom/lidroid/xutils/http/HttpHandler$State;

    sget-object v3, Lcom/lidroid/xutils/http/HttpHandler$State;->CANCELLED:Lcom/lidroid/xutils/http/HttpHandler$State;

    if-eq v2, v3, :cond_5b

    :goto_2d
    return v0

    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    sub-long v4, v2, v4

    iget-object v6, p0, Lcom/lidroid/xutils/http/HttpHandler;->callback:Lcom/lidroid/xutils/http/callback/RequestCallBack;

    invoke-virtual {v6}, Lcom/lidroid/xutils/http/callback/RequestCallBack;->getRate()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_27

    iput-wide v2, p0, Lcom/lidroid/xutils/http/HttpHandler;->lastUpdateTime:J

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/http/HttpHandler;->publishProgress([Ljava/lang/Object;)V

    goto :goto_27

    :cond_5b
    move v0, v1

    goto :goto_2d
.end method
