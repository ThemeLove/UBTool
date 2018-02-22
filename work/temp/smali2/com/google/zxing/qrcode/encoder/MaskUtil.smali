.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .registers 14

    const/4 v10, 0x5

    const/4 v5, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v0

    move v8, v0

    :goto_9
    if-eqz p1, :cond_36

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v0

    :goto_f
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c()[[B

    move-result-object v9

    move v7, v5

    move v1, v5

    :goto_15
    if-ge v7, v8, :cond_57

    const/4 v2, -0x1

    move v4, v5

    move v6, v5

    :goto_1a
    if-ge v4, v0, :cond_4c

    if-eqz p1, :cond_3b

    aget-object v3, v9, v7

    aget-byte v3, v3, v4

    :goto_22
    if-ne v3, v2, :cond_40

    add-int/lit8 v3, v6, 0x1

    move v11, v2

    move v2, v3

    move v3, v1

    move v1, v11

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    move v2, v1

    move v1, v3

    goto :goto_1a

    :cond_30
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v0

    move v8, v0

    goto :goto_9

    :cond_36
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v0

    goto :goto_f

    :cond_3b
    aget-object v3, v9, v4

    aget-byte v3, v3, v7

    goto :goto_22

    :cond_40
    if-lt v6, v10, :cond_47

    add-int/lit8 v2, v6, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :cond_47
    const/4 v2, 0x1

    move v11, v3

    move v3, v1

    move v1, v11

    goto :goto_2a

    :cond_4c
    if-lt v6, v10, :cond_53

    add-int/lit8 v2, v6, -0x5

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :cond_53
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_15

    :cond_57
    return v1
.end method

.method static a(III)Z
    .registers 6

    packed-switch p0, :pswitch_data_54

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mask pattern: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    add-int v0, p2, p1

    and-int/lit8 v0, v0, 0x1

    :goto_1c
    if-nez v0, :cond_51

    const/4 v0, 0x1

    :goto_1f
    return v0

    :pswitch_20
    and-int/lit8 v0, p2, 0x1

    goto :goto_1c

    :pswitch_23
    rem-int/lit8 v0, p1, 0x3

    goto :goto_1c

    :pswitch_26
    add-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_1c

    :pswitch_2b
    div-int/lit8 v0, p2, 0x2

    div-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :pswitch_33
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    goto :goto_1c

    :pswitch_3b
    mul-int v0, p2, p1

    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :pswitch_45
    mul-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    add-int v1, p2, p1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_51
    const/4 v0, 0x0

    goto :goto_1f

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_18
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_2b
        :pswitch_33
        :pswitch_3b
        :pswitch_45
    .end packed-switch
.end method

.method private static a([BII)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v3, p0

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_b
    if-ge v2, v3, :cond_15

    aget-byte v4, p0, v2

    if-ne v4, v1, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_15
    move v0, v1

    goto :goto_11
.end method

.method private static a([[BIII)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v3, p0

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_b
    if-ge v2, v3, :cond_17

    aget-object v4, p0, v2

    aget-byte v4, v4, p1

    if-ne v4, v1, :cond_14

    :goto_13
    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    move v0, v1

    goto :goto_13
.end method

.method static b(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_f
    add-int/lit8 v1, v6, -0x1

    if-ge v3, v1, :cond_3f

    move v1, v2

    :goto_14
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_3b

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    aget-object v8, v4, v3

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_38

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    aget-byte v8, v8, v1

    if-ne v7, v8, :cond_38

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    :cond_3f
    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method static c(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 12

    const/4 v2, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_10
    if-ge v3, v6, :cond_ae

    move v1, v2

    :goto_13
    if-ge v1, v5, :cond_a9

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x6

    if-ge v8, v5, :cond_57

    aget-byte v8, v7, v1

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v7, v8

    if-nez v8, :cond_57

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x4

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, 0x5

    aget-byte v8, v7, v8

    if-nez v8, :cond_57

    add-int/lit8 v8, v1, 0x6

    aget-byte v8, v7, v8

    if-ne v8, v10, :cond_57

    add-int/lit8 v8, v1, -0x4

    invoke-static {v7, v8, v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a([BII)Z

    move-result v8

    if-nez v8, :cond_55

    add-int/lit8 v8, v1, 0x7

    add-int/lit8 v9, v1, 0xb

    invoke-static {v7, v8, v9}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_57

    :cond_55
    add-int/lit8 v0, v0, 0x1

    :cond_57
    add-int/lit8 v7, v3, 0x6

    if-ge v7, v6, :cond_a5

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_a5

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_a5

    add-int/lit8 v7, v3, 0x6

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v10, :cond_a5

    add-int/lit8 v7, v3, -0x4

    invoke-static {v4, v1, v7, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a([[BIII)Z

    move-result v7

    if-nez v7, :cond_a3

    add-int/lit8 v7, v3, 0x7

    add-int/lit8 v8, v3, 0xb

    invoke-static {v4, v1, v7, v8}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a([[BIII)Z

    move-result v7

    if-eqz v7, :cond_a5

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13

    :cond_a9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_10

    :cond_ae
    mul-int/lit8 v0, v0, 0x28

    return v0
.end method

.method static d(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c()[[B

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    :goto_f
    if-ge v3, v6, :cond_24

    aget-object v7, v4, v3

    move v1, v2

    :goto_14
    if-ge v1, v5, :cond_20

    aget-byte v8, v7, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_f

    :cond_24
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v2

    mul-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method
