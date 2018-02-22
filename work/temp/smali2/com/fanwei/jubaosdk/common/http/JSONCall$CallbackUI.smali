.class public Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/http/JSONCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallbackUI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final impl:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;

    new-instance v0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    invoke-direct {v0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->impl:Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;

    invoke-virtual {v0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->onSuccess(Ljava/lang/Object;)V

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

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/JSONCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;

    invoke-interface {v0}, Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;->responseClassType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
