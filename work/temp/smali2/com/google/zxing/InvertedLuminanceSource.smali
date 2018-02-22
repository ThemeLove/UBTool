.class public final Lcom/google/zxing/InvertedLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;


# instance fields
.field private final a:Lcom/google/zxing/LuminanceSource;


# virtual methods
.method public a()[B
    .registers 6

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->a:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->a()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->c()I

    move-result v2

    mul-int/2addr v2, v0

    new-array v3, v2, [B

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_20

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    return-object v3
.end method

.method public a(I[B)[B
    .registers 7

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->a:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/LuminanceSource;->a(I[B)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->b()I

    move-result v2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_19

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    rsub-int v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    return-object v1
.end method
