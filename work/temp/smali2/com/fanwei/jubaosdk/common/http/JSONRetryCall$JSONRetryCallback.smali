.class public abstract Lcom/fanwei/jubaosdk/common/http/JSONRetryCall$JSONRetryCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/http/JSONRetryCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JSONRetryCallback"
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract retryCallWhen(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected retryCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected retryWaitMS()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
