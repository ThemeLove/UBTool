.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

.field private final b:I


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 11

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, v2

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :cond_10
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    move v1, v2

    :goto_16
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_7c

    const-string v3, "CW %3d:"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v2

    :goto_2b
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:I

    add-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_72

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    if-nez v5, :cond_41

    const-string v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_41
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v5, v5, v1

    if-nez v5, :cond_55

    const-string v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3e

    :cond_55
    const-string v6, " %3d|%3d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3e

    :cond_72
    const-string v3, "%n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_7c
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    return-object v0
.end method
