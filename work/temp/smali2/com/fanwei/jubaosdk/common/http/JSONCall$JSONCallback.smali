.class public interface abstract Lcom/fanwei/jubaosdk/common/http/JSONCall$JSONCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/http/JSONCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JSONCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract responseClassType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method
