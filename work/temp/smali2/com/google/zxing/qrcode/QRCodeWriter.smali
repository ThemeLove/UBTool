.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .registers 16

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->a()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a()I

    move-result v7

    shl-int/lit8 v0, p3, 0x1

    add-int/2addr v0, v6

    shl-int/lit8 v1, p3, 0x1

    add-int/2addr v1, v7

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int v0, v2, v0

    div-int v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int v0, v6, v8

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    mul-int v0, v7, v8

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_3e
    if-ge v4, v7, :cond_5a

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_43
    if-ge v2, v6, :cond_53

    invoke-virtual {v5, v2, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4f

    invoke-virtual {v9, v0, v3, v8, v8}, Lcom/google/zxing/common/BitMatrix;->a(IIII)V

    :cond_4f
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v8

    goto :goto_43

    :cond_53
    add-int/lit8 v2, v4, 0x1

    add-int v0, v3, v8

    move v3, v0

    move v4, v2

    goto :goto_3e

    :cond_5a
    return-object v9
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    if-eq p2, v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can only encode QR_CODE, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    if-ltz p3, :cond_2b

    if-gez p4, :cond_4a

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested dimensions are too small: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, 0x4

    if-eqz p5, :cond_87

    sget-object v2, Lcom/google/zxing/EncodeHintType;->a:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    sget-object v0, Lcom/google/zxing/EncodeHintType;->a:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v0

    :cond_65
    sget-object v2, Lcom/google/zxing/EncodeHintType;->f:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    sget-object v1, Lcom/google/zxing/EncodeHintType;->f:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_7e
    invoke-static {p1, v1, p5}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v1

    invoke-static {v1, p3, p4, v0}, Lcom/google/zxing/qrcode/QRCodeWriter;->a(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    :cond_87
    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_7e
.end method
