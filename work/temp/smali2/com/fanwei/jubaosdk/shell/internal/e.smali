.class public Lcom/fanwei/jubaosdk/shell/internal/e;
.super Lcom/fanwei/jubaosdk/common/core/AbstractCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fanwei/jubaosdk/common/core/AbstractCall",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/fanwei/jubaosdk/common/core/AbstractCall;-><init>(Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    iput-object p2, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/fanwei/jubaosdk/shell/internal/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "fanweikey0123455"

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/common/util/AESCryptUtils;->decryptFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decryptFile is null or decryptFile not exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "plugin apk verify MD5 failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "filePath is null or md5 is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected synthetic execute()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/shell/internal/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
