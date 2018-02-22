.class public Lcom/fanwei/bluearty/tinyhttp/Response;
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
.field body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field connection:Ljava/net/HttpURLConnection;

.field errorBody:Ljava/lang/Object;

.field final request:Lcom/fanwei/bluearty/tinyhttp/Request;

.field responseMessage:Ljava/lang/String;

.field statusCode:I


# direct methods
.method constructor <init>(Lcom/fanwei/bluearty/tinyhttp/Request;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-void
.end method


# virtual methods
.method public ensureSuccess()V
    .registers 4

    invoke-virtual {p0}, Lcom/fanwei/bluearty/tinyhttp/Response;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->responseMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/String;Lcom/fanwei/bluearty/tinyhttp/Response;)V

    throw v0

    :cond_2d
    return-void
.end method

.method public getBody()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorBody()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequest()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->statusCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuccess()Z
    .registers 3

    iget v0, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->statusCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method setBody(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/bluearty/tinyhttp/Response;->body:Ljava/lang/Object;

    return-void
.end method
