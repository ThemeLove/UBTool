.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I


# virtual methods
.method public a()[B
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->c()I

    move-result v4

    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->b:I

    if-ne v3, v0, :cond_14

    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:I

    if-ne v4, v0, :cond_14

    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->a:[B

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    mul-int v5, v3, v4

    new-array v0, v5, [B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->e:I

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->b:I

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->b:I

    if-ne v3, v6, :cond_2a

    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->a:[B

    invoke-static {v3, v2, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_2a
    :goto_2a
    if-ge v1, v4, :cond_13

    mul-int v5, v1, v3

    iget-object v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->a:[B

    invoke-static {v6, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->b:I

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a
.end method

.method public a(I[B)[B
    .registers 7

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->c()I

    move-result v0

    if-lt p1, v0, :cond_1d

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested row is outside the image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->b()I

    move-result v0

    if-eqz p2, :cond_26

    array-length v1, p2

    if-ge v1, v0, :cond_28

    :cond_26
    new-array p2, v0, [B

    :cond_28
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->e:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->a:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, p2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method
