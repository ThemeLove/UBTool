.class public Lcom/fanwei/jubaosdk/common/http/BitmapCall;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fanwei/jubaosdk/common/http/BitmapCall$BitmapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# instance fields
.field private final request:Lcom/fanwei/bluearty/tinyhttp/Request;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/Webb;->create()Lcom/fanwei/bluearty/tinyhttp/Webb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fanwei/bluearty/tinyhttp/Webb;->get(Ljava/lang/String;)Lcom/fanwei/bluearty/tinyhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    return-void
.end method


# virtual methods
.method public enqueue(Lcom/fanwei/jubaosdk/common/http/BitmapCall$BitmapCallback;)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->isCallbackOnUi()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/fanwei/jubaosdk/common/http/BitmapCall$BitmapCallback;

    invoke-direct {v0, p1}, Lcom/fanwei/jubaosdk/common/http/BitmapCall$BitmapCallback;-><init>(Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->dispatcher:Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->enqueue(Lcom/fanwei/jubaosdk/common/core/Call;)V

    return-void

    :cond_15
    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->callback:Lcom/fanwei/jubaosdk/common/core/AbstractCall$Callback;

    goto :goto_f
.end method

.method protected execute()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->request:Lcom/fanwei/bluearty/tinyhttp/Request;

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Request;->asStream()Lcom/fanwei/bluearty/tinyhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2
.end method

.method protected bridge synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/http/BitmapCall;->execute()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
