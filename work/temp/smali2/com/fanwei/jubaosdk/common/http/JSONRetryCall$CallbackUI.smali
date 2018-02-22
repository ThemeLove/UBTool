.class public Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;
.super Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CallbackUI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final impl:Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->this$0:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;-><init>()V

    iput-object p2, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;

    invoke-direct {v0, p2}, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public responseClassType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->responseClassType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected retryCallWhen(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;->retryCallWhen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
