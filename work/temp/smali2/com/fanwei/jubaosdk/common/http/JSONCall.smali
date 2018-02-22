.class public Lcom/fanwei/jubaosdk/common/http/JSONCall;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;,
        Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final request:Lcom/fanwei/bluearty/tinyhttp/Request;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    iput-object p2, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/JSONCall;->isCallbackOnUi()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;

    invoke-direct {v0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->enqueue(Lcom/fanwei/jubaosdk/common/core/Call;)V

    return-void

    :cond_15
    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    goto :goto_f
.end method

.method public execute()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->asJsonObject()Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    check-cast v1, Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;

    invoke-interface {v1}, Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;->responseClassType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getRequest()Lcom/fanwei/bluearty/tinyhttp/Request;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-object v0
.end method
