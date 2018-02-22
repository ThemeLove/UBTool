.class public Lcom/fanwei/bluearty/tinyhttp/WebbException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private response:Lcom/fanwei/bluearty/tinyhttp/Response;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fanwei/bluearty/tinyhttp/Response;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fanwei/bluearty/tinyhttp/WebbException;->response:Lcom/fanwei/bluearty/tinyhttp/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/fanwei/bluearty/tinyhttp/Response;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/tinyhttp/WebbException;->response:Lcom/fanwei/bluearty/tinyhttp/Response;

    return-object v0
.end method
