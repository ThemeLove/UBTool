.class public Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/core/AbstractCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CallbackUI"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;
    }
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


# static fields
.field private static final M_FAILED:I = 0x2

.field private static final M_SUCCESS:I = 0x1


# instance fields
.field private final callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    new-instance v0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI$UIHandler;-><init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;)Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
