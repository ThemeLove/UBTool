.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/Binarizer;

.field private b:Lcom/google/zxing/common/BitMatrix;


# virtual methods
.method public a()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->b()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    :cond_c
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->a()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method
