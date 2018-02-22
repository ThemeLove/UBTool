.class public Lcom/fanwei/jubaosdk/common/http/BitmapCall$BitmapCallback;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fanwei/jubaosdk/common/http/BitmapCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;-><init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFailed(Ljava/lang/Throwable;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall$CallbackUI;->onFailed(Ljava/lang/Throwable;)V

    return-void
.end method
