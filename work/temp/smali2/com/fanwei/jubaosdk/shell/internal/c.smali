.class public Lcom/fanwei/jubaosdk/shell/internal/c;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/internal/c;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fanwei/jubaosdk/shell/internal/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/internal/c;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_11
    iget-object v3, p0, Lcom/fanwei/jubaosdk/shell/internal/c;->a:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_11

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/c;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_1f

    const/4 v0, 0x1

    goto :goto_23
.end method

.method protected synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/shell/internal/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
