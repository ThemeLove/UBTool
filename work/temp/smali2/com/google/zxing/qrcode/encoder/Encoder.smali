.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .registers 2

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    array-length v0, v0

    if-ge p0, v0, :cond_a

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    aget v0, v0, p0

    :goto_9
    return v0

    :cond_a
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private static a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 8

    const v3, 0x7fffffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    if-ge v2, v3, :cond_18

    move v0, v1

    :goto_13
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_5

    :cond_17
    return v0

    :cond_18
    move v2, v3

    goto :goto_13
.end method

.method private static a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I
    .registers 6

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .registers 3

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->b(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->c(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->d(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static a(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .registers 15

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v0

    if-eq v0, p2, :cond_e

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v6, v0

    move v7, v1

    move v8, v2

    :goto_1a
    if-ge v3, p3, :cond_55

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x1

    new-array v5, v0, [I

    move v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(IIII[I[I)V

    const/4 v0, 0x0

    aget v0, v4, v0

    new-array v1, v0, [B

    shl-int/lit8 v2, v8, 0x3

    const/4 v10, 0x0

    invoke-virtual {p0, v2, v1, v10, v0}, Lcom/google/zxing/common/BitArray;->a(I[BII)V

    const/4 v2, 0x0

    aget v2, v5, v2

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a([BI)[B

    move-result-object v2

    new-instance v5, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v5, v1, v2}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v0, v2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    aget v2, v4, v2

    add-int/2addr v2, v8

    add-int/lit8 v3, v3, 0x1

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_1a

    :cond_55
    if-eq p2, v8, :cond_5f

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_66
    if-ge v1, v7, :cond_8b

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;->a()[B

    move-result-object v0

    array-length v4, v0

    if-ge v1, v4, :cond_6c

    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/BitArray;->a(II)V

    goto :goto_6c

    :cond_87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    :cond_8b
    const/4 v0, 0x0

    move v1, v0

    :goto_8d
    if-ge v1, v6, :cond_b2

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_93
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/BlockPair;->b()[B

    move-result-object v0

    array-length v4, v0

    if-ge v1, v4, :cond_93

    aget-byte v0, v0, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v0, v4}, Lcom/google/zxing/common/BitArray;->a(II)V

    goto :goto_93

    :cond_ae
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8d

    :cond_b2
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v0

    if-eq p1, v0, :cond_e1

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " differ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e1
    return-object v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .registers 8

    const/4 v3, 0x1

    const/4 v0, 0x0

    const-string v1, "Shift_JIS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->g:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_12
    return-object v0

    :cond_13
    move v1, v0

    move v2, v0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_37

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2b

    const/16 v5, 0x39

    if-gt v4, v5, :cond_2b

    move v2, v3

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2b
    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_34

    move v1, v3

    goto :goto_28

    :cond_34
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_12

    :cond_37
    if-eqz v1, :cond_3c

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->c:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_12

    :cond_3c
    if-eqz v2, :cond_41

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->b:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_12

    :cond_41
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_12
.end method

.method private static a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->a(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;
    .registers 5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->a(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    const-string v0, "ISO-8859-1"

    if-eqz p2, :cond_16

    sget-object v1, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v0, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v2, v3, :cond_34

    const-string v3, "ISO-8859-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    invoke-static {v0}, Lcom/google/zxing/common/CharacterSetECI;->a(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-static {v3, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    :cond_34
    invoke-static {v2, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, v2, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    if-eqz p2, :cond_6d

    sget-object v0, Lcom/google/zxing/EncodeHintType;->k:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/google/zxing/EncodeHintType;->k:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->a(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    invoke-static {v2, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    invoke-static {v4, v0, p1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z

    move-result v4

    if-nez v4, :cond_71

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data too big for requested version"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    invoke-static {p1, v2, v1, v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    :cond_71
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/zxing/common/BitArray;->a(Lcom/google/zxing/common/BitArray;)V

    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->e:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v2, v1, :cond_c8

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v1

    :goto_81
    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {v4, v3}, Lcom/google/zxing/common/BitArray;->a(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/decoder/Version;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(ILcom/google/zxing/common/BitArray;)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b()I

    move-result v1

    invoke-static {v4, v5, v3, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    new-instance v3, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    invoke-virtual {v3, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/Mode;)V

    invoke-virtual {v3, v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version;->c()I

    move-result v2

    new-instance v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v4, v2, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    invoke-static {v1, p1, v0, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(I)V

    invoke-static {v1, p1, v0, v2, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v3

    :cond_c8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_81
.end method

.method static a(IIII[I[I)V
    .registers 15

    const/4 v8, 0x0

    if-lt p3, p2, :cond_b

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    div-int v4, p1, p2

    add-int/lit8 v5, v4, 0x1

    sub-int/2addr v2, v4

    sub-int/2addr v3, v5

    if-eq v2, v3, :cond_23

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    add-int v6, v1, v0

    if-eq p2, v6, :cond_2f

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    add-int v6, v4, v2

    mul-int/2addr v6, v1

    add-int v7, v5, v3

    mul-int/2addr v0, v7

    add-int/2addr v0, v6

    if-eq p0, v0, :cond_40

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    if-ge p3, v1, :cond_47

    aput v4, p4, v8

    aput v2, p5, v8

    :goto_46
    return-void

    :cond_47
    aput v5, p4, v8

    aput v3, p5, v8

    goto :goto_46
.end method

.method static a(ILcom/google/zxing/common/BitArray;)V
    .registers 7

    const/16 v4, 0x8

    const/4 v0, 0x0

    shl-int/lit8 v2, p0, 0x3

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v1

    if-le v1, v2, :cond_2e

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move v1, v0

    :goto_2f
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3e

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v3

    if-ge v3, v2, :cond_3e

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3e
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-lez v1, :cond_4e

    :goto_46
    if-ge v1, v4, :cond_4e

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_4e
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->b()I

    move-result v1

    sub-int v3, p0, v1

    move v1, v0

    :goto_55
    if-ge v1, v3, :cond_67

    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_64

    const/16 v0, 0xec

    :goto_5d
    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_55

    :cond_64
    const/16 v0, 0x11

    goto :goto_5d

    :cond_67
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v0

    if-eq v0, v2, :cond_75

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    return-void
.end method

.method static a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 9

    const/4 v4, 0x1

    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    shl-int v1, v4, v0

    if-lt p0, v1, :cond_2a

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->a(II)V

    return-void
.end method

.method private static a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .registers 4

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->f:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->a(II)V

    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->a()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->a(II)V

    return-void
.end method

.method static a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_4c

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v0, 0x2

    if-ge v3, v1, :cond_2f

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    add-int/lit8 v4, v0, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    const/16 v3, 0xa

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_5

    :cond_2f
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_45

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_45
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4c
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .registers 9

    const v6, 0x8140

    const/4 v1, -0x1

    :try_start_4
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_2e

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_54

    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v5

    if-lt v0, v6, :cond_35

    const v5, 0x9ffc

    if-gt v0, v5, :cond_35

    sub-int/2addr v0, v6

    :goto_24
    if-ne v0, v1, :cond_44

    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_35
    const v5, 0xe040

    if-lt v0, v5, :cond_55

    const v5, 0xebbf

    if-gt v0, v5, :cond_55

    const v5, 0xc140

    sub-int/2addr v0, v5

    goto :goto_24

    :cond_44
    shr-int/lit8 v5, v0, 0x8

    mul-int/lit16 v5, v5, 0xc0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v5

    const/16 v5, 0xd

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_d

    :cond_54
    return-void

    :cond_55
    move v0, v1

    goto :goto_24
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_19

    aget-byte v3, v1, v0

    const/16 v4, 0x8

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_12
    move-exception v0

    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder$1;->a:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    :goto_23
    return-void

    :pswitch_24
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->b(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_23

    :pswitch_28
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_23

    :pswitch_2c
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_23

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method private static a(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Version;->b()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/zxing/qrcode/decoder/Version;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->c()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x7

    div-int/lit8 v1, v1, 0x8

    if-lt v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_29

    move-result-object v2

    array-length v3, v2

    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_27

    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x81

    if-lt v4, v5, :cond_1c

    const/16 v5, 0x9f

    if-le v4, v5, :cond_24

    :cond_1c
    const/16 v5, 0xe0

    if-lt v4, v5, :cond_c

    const/16 v5, 0xeb

    if-gt v4, v5, :cond_c

    :cond_24
    add-int/lit8 v1, v1, 0x2

    goto :goto_e

    :cond_27
    const/4 v0, 0x1

    goto :goto_c

    :catch_29
    move-exception v1

    goto :goto_c
.end method

.method static a([BI)[B
    .registers 7

    const/4 v0, 0x0

    array-length v2, p0

    add-int v1, v2, p1

    new-array v3, v1, [I

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_12

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    new-instance v1, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v1, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v1, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->a([II)V

    new-array v1, p1, [B

    :goto_1e
    if-ge v0, p1, :cond_2a

    add-int v4, v2, v0

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2a
    return-object v1
.end method

.method static b(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .registers 7

    const/4 v4, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_40

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v2

    if-ne v2, v4, :cond_18

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_18
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_39

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(I)I

    move-result v3

    if-ne v3, v4, :cond_2e

    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_2e
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v3

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_39
    const/4 v3, 0x6

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/BitArray;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_40
    return-void
.end method
