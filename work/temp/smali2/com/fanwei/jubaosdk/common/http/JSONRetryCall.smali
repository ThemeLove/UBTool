.class public Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;
.super Lcom/fanwei/jubaosdk/common/http/JSONCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;,
        Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fanwei/jubaosdk/common/http/JSONCall",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fanwei/jubaosdk/common/http/JSONCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Lcom/fanwei/bluearty/tinyhttp/Request;)V

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->isCallbackOnUi()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;

    invoke-direct {v0, p0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->enqueue(Lcom/fanwei/jubaosdk/common/core/Call;)V

    return-void

    :cond_15
    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    goto :goto_f
.end method

.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    check-cast v0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->retryCount()I

    move-result v1

    if-gt v2, v1, :cond_19

    :try_start_c
    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->execute()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->retryCallWhen(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_19} :catch_45

    :cond_19
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->finishedAsync(Lcom/fanwei/jubaosdk/common/core/Call;)V

    return-void

    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    check-cast v1, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    invoke-virtual {v1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->retryWaitMS()I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_26} :catch_45

    move-result v1

    if-lez v1, :cond_38

    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    check-cast v1, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    invoke-virtual {v1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->retryWaitMS()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_38} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_38} :catch_45

    :cond_38
    :goto_38
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6

    :catch_3c
    move-exception v1

    :try_start_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    throw v1
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_45} :catch_45

    :catch_45
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_38
.end method
