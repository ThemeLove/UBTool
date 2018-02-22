.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a:[B

    return-void
.end method

.method private static a([I)I
    .registers 10

    const/4 v4, 0x0

    array-length v6, p0

    move v2, v4

    move v0, v4

    move v1, v4

    move v3, v4

    :goto_6
    if-ge v2, v6, :cond_18

    aget v5, p0, v2

    if-le v5, v0, :cond_f

    aget v0, p0, v2

    move v1, v2

    :cond_f
    aget v5, p0, v2

    if-le v5, v3, :cond_15

    aget v3, p0, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    move v2, v4

    move v5, v4

    :goto_1a
    if-ge v4, v6, :cond_2a

    sub-int v0, v4, v1

    aget v7, p0, v4

    mul-int/2addr v7, v0

    mul-int/2addr v0, v7

    if-le v0, v2, :cond_5b

    move v2, v4

    :goto_25
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1a

    :cond_2a
    if-le v1, v5, :cond_57

    :goto_2c
    sub-int v0, v1, v5

    div-int/lit8 v2, v6, 0x10

    if-gt v0, v2, :cond_37

    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_37
    add-int/lit8 v6, v1, -0x1

    const/4 v2, -0x1

    add-int/lit8 v4, v1, -0x1

    :goto_3c
    if-le v4, v5, :cond_51

    sub-int v0, v4, v5

    mul-int/2addr v0, v0

    sub-int v7, v1, v4

    mul-int/2addr v0, v7

    aget v7, p0, v4

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    if-le v0, v2, :cond_54

    move v2, v4

    :goto_4c
    add-int/lit8 v4, v4, -0x1

    move v6, v2

    move v2, v0

    goto :goto_3c

    :cond_51
    shl-int/lit8 v0, v6, 0x3

    return v0

    :cond_54
    move v0, v2

    move v2, v6

    goto :goto_4c

    :cond_57
    move v8, v5

    move v5, v1

    move v1, v8

    goto :goto_2c

    :cond_5b
    move v0, v2

    move v2, v5

    goto :goto_25
.end method

.method private a(I)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    array-length v0, v0

    if-ge v0, p1, :cond_a

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    :cond_a
    move v0, v1

    :goto_b
    const/16 v2, 0x20

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_16
    return-void
.end method


# virtual methods
.method public b()Lcom/google/zxing/common/BitMatrix;
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->b()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->c()I

    move-result v5

    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a(I)V

    iget-object v7, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->c:[I

    const/4 v0, 0x1

    move v2, v0

    :goto_19
    const/4 v0, 0x5

    if-ge v2, v0, :cond_41

    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    iget-object v8, p0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->b:[B

    invoke-virtual {v3, v0, v8}, Lcom/google/zxing/LuminanceSource;->a(I[B)[B

    move-result-object v8

    shl-int/lit8 v0, v4, 0x2

    div-int/lit8 v9, v0, 0x5

    div-int/lit8 v0, v4, 0x5

    :goto_2c
    if-ge v0, v9, :cond_3d

    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_41
    invoke-static {v7}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->a([I)I

    move-result v7

    invoke-virtual {v3}, Lcom/google/zxing/LuminanceSource;->a()[B

    move-result-object v3

    move v2, v1

    :goto_4a
    if-ge v2, v5, :cond_63

    mul-int v8, v2, v4

    move v0, v1

    :goto_4f
    if-ge v0, v4, :cond_5f

    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    if-ge v9, v7, :cond_5c

    invoke-virtual {v6, v0, v2}, Lcom/google/zxing/common/BitMatrix;->b(II)V

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_5f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    :cond_63
    return-object v6
.end method
