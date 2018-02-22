.class public abstract Lcom/fanwei/jubaosdk/common/core/AbstractCall;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;,
        Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/core/Call;"
    }
.end annotation


# instance fields
.field protected callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private callbackOnUi:Z

.field protected final dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public enqueue(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->isCallbackOnUi()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    invoke-direct {v0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->enqueue(Lcom/fanwei/jubaosdk/common/core/Call;)V

    :goto_1c
    return-void

    :cond_1d
    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    goto :goto_13

    :cond_20
    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    goto :goto_13

    :cond_23
    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->run()V

    goto :goto_1c
.end method

.method protected abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isCallbackOnUi()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callbackOnUi:Z

    return v0
.end method

.method public run()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->execute()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    invoke-interface {v1, v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;->onSuccess(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_17
    .catchall {:try_start_0 .. :try_end_d} :catchall_2b

    :cond_d
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->finishedAsync(Lcom/fanwei/jubaosdk/common/core/Call;)V

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    :try_start_18
    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    invoke-interface {v1, v0}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;->onFailed(Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_2b

    :cond_21
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->finishedAsync(Lcom/fanwei/jubaosdk/common/core/Call;)V

    goto :goto_16

    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->finishedAsync(Lcom/fanwei/jubaosdk/common/core/Call;)V

    :cond_35
    throw v0
.end method

.method public setCallbackOnUi(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall;->callbackOnUi:Z

    return-void
.end method
