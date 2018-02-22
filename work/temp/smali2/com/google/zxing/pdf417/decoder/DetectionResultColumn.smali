.class Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/zxing/pdf417/decoder/Codeword;


# virtual methods
.method final a()[Lcom/google/zxing/pdf417/decoder/Codeword;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a:[Lcom/google/zxing/pdf417/decoder/Codeword;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->a:[Lcom/google/zxing/pdf417/decoder/Codeword;

    array-length v6, v5

    move v1, v2

    move v3, v2

    :goto_c
    if-ge v1, v6, :cond_4b

    aget-object v7, v5, v1

    if-nez v7, :cond_25

    const-string v7, "%3d:    |   %n"

    new-array v8, v10, [Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {v4, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_21
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_c

    :cond_25
    const-string v8, "%3d: %3d|%3d%n"

    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-virtual {v4, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_21

    :cond_4b
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    return-object v0
.end method
