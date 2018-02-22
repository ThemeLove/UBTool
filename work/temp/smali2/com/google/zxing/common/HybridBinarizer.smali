.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;


# instance fields
.field private a:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method private static a(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private static a([BIIIILcom/google/zxing/common/BitMatrix;)V
    .registers 13

    const/16 v6, 0x8

    const/4 v1, 0x0

    mul-int v0, p2, p4

    add-int/2addr v0, p1

    move v2, v0

    move v3, v1

    :goto_8
    if-ge v3, v6, :cond_25

    move v0, v1

    :goto_b
    if-ge v0, v6, :cond_1f

    add-int v4, v2, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, p3, :cond_1c

    add-int v4, p1, v0

    add-int v5, p2, v3

    invoke-virtual {p5, v4, v5}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    add-int v0, v2, p4

    move v2, v0

    goto :goto_8

    :cond_25
    return-void
.end method

.method private static a([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .registers 18

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    if-ge v7, p2, :cond_56

    shl-int/lit8 v0, v7, 0x3

    add-int/lit8 v2, p4, -0x8

    if-le v0, v2, :cond_59

    :goto_a
    const/4 v0, 0x0

    move v6, v0

    :goto_c
    if-ge v6, p1, :cond_52

    shl-int/lit8 v0, v6, 0x3

    add-int/lit8 v1, p3, -0x8

    if-le v0, v1, :cond_57

    :goto_14
    const/4 v0, 0x2

    add-int/lit8 v3, p1, -0x3

    invoke-static {v6, v0, v3}, Lcom/google/zxing/common/HybridBinarizer;->a(III)I

    move-result v4

    const/4 v0, 0x2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v7, v0, v3}, Lcom/google/zxing/common/HybridBinarizer;->a(III)I

    move-result v5

    const/4 v3, 0x0

    const/4 v0, -0x2

    :goto_24
    const/4 v8, 0x2

    if-gt v0, v8, :cond_45

    add-int v8, v5, v0

    aget-object v8, p5, v8

    add-int/lit8 v9, v4, -0x2

    aget v9, v8, v9

    add-int/lit8 v10, v4, -0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    aget v10, v8, v4

    add-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    aget v10, v8, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    div-int/lit8 v3, v3, 0x19

    move-object v0, p0

    move v4, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/common/HybridBinarizer;->a([BIIIILcom/google/zxing/common/BitMatrix;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_c

    :cond_52
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_56
    return-void

    :cond_57
    move v1, v0

    goto :goto_14

    :cond_59
    move v2, v0

    goto :goto_a
.end method

.method private static a([BIIII)[[I
    .registers 18

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v11, v1

    :goto_e
    if-ge v11, p2, :cond_b0

    shl-int/lit8 v2, v11, 0x3

    add-int/lit8 v1, p4, -0x8

    if-le v2, v1, :cond_ba

    :goto_16
    const/4 v2, 0x0

    move v10, v2

    :goto_18
    if-ge v10, p1, :cond_ab

    shl-int/lit8 v3, v10, 0x3

    add-int/lit8 v2, p3, -0x8

    if-le v3, v2, :cond_b7

    :goto_20
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v3, 0x0

    const/4 v5, 0x0

    mul-int v4, v1, p3

    add-int/2addr v4, v2

    :goto_28
    const/16 v2, 0x8

    if-ge v5, v2, :cond_79

    const/4 v2, 0x0

    move v8, v2

    :goto_2e
    const/16 v2, 0x8

    if-ge v8, v2, :cond_46

    add-int v2, v4, v8

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int v9, v6, v2

    if-ge v2, v7, :cond_b5

    move v6, v2

    :goto_3d
    if-le v2, v3, :cond_b3

    :goto_3f
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v7, v6

    move v3, v2

    move v6, v9

    goto :goto_2e

    :cond_46
    sub-int v2, v3, v7

    const/16 v8, 0x18

    if-le v2, v8, :cond_6e

    add-int/lit8 v5, v5, 0x1

    add-int v2, v4, p3

    move v4, v5

    move v5, v6

    :goto_52
    const/16 v6, 0x8

    if-ge v4, v6, :cond_71

    const/4 v6, 0x0

    move v12, v6

    move v6, v5

    move v5, v12

    :goto_5a
    const/16 v8, 0x8

    if-ge v5, v8, :cond_68

    add-int v8, v2, v5

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_68
    add-int/lit8 v4, v4, 0x1

    add-int v2, v2, p3

    move v5, v6

    goto :goto_52

    :cond_6e
    move v2, v4

    move v4, v5

    move v5, v6

    :cond_71
    add-int/lit8 v6, v4, 0x1

    add-int v4, v2, p3

    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_28

    :cond_79
    shr-int/lit8 v2, v6, 0x6

    sub-int/2addr v3, v7

    const/16 v4, 0x18

    if-gt v3, v4, :cond_a2

    div-int/lit8 v3, v7, 0x2

    if-lez v11, :cond_b1

    if-lez v10, :cond_b1

    add-int/lit8 v2, v11, -0x1

    aget-object v2, v0, v2

    aget v2, v2, v10

    aget-object v4, v0, v11

    add-int/lit8 v5, v10, -0x1

    aget v4, v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v11, -0x1

    aget-object v4, v0, v4

    add-int/lit8 v5, v10, -0x1

    aget v4, v4, v5

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x4

    if-ge v7, v2, :cond_b1

    :cond_a2
    :goto_a2
    aget-object v3, v0, v11

    aput v2, v3, v10

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_18

    :cond_ab
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_e

    :cond_b0
    return-object v0

    :cond_b1
    move v2, v3

    goto :goto_a2

    :cond_b3
    move v2, v3

    goto :goto_3f

    :cond_b5
    move v6, v7

    goto :goto_3d

    :cond_b7
    move v2, v3

    goto/16 :goto_20

    :cond_ba
    move v1, v2

    goto/16 :goto_16
.end method


# virtual methods
.method public b()Lcom/google/zxing/common/BitMatrix;
    .registers 8

    const/16 v1, 0x28

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->a:Lcom/google/zxing/common/BitMatrix;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->a:Lcom/google/zxing/common/BitMatrix;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/zxing/common/HybridBinarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->c()I

    move-result v4

    if-lt v3, v1, :cond_3e

    if-lt v4, v1, :cond_3e

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->a()[B

    move-result-object v0

    shr-int/lit8 v1, v3, 0x3

    and-int/lit8 v2, v3, 0x7

    if-eqz v2, :cond_25

    add-int/lit8 v1, v1, 0x1

    :cond_25
    shr-int/lit8 v2, v4, 0x3

    and-int/lit8 v5, v4, 0x7

    if-eqz v5, :cond_2d

    add-int/lit8 v2, v2, 0x1

    :cond_2d
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/zxing/common/HybridBinarizer;->a([BIIII)[[I

    move-result-object v5

    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-static/range {v0 .. v6}, Lcom/google/zxing/common/HybridBinarizer;->a([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    iput-object v6, p0, Lcom/google/zxing/common/HybridBinarizer;->a:Lcom/google/zxing/common/BitMatrix;

    :goto_3b
    iget-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->a:Lcom/google/zxing/common/BitMatrix;

    goto :goto_8

    :cond_3e
    invoke-super {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/common/HybridBinarizer;->a:Lcom/google/zxing/common/BitMatrix;

    goto :goto_3b
.end method
