.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v3, 0x80

    const/16 v2, 0x1e

    const/4 v1, 0x0

    const/4 v5, -0x1

    new-array v0, v2, [B

    fill-array-data v0, :array_56

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->a:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->b:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->c:[B

    new-array v0, v3, [B

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->d:[B

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->e:Ljava/nio/charset/Charset;

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->c:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    move v0, v1

    :goto_2a
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->a:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->a:[B

    aget-byte v2, v2, v0

    if-lez v2, :cond_3a

    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->c:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v2

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3d
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->d:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([BB)V

    :goto_42
    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->b:[B

    array-length v0, v0

    if-ge v1, v0, :cond_55

    sget-object v0, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->b:[B

    aget-byte v0, v0, v1

    if-lez v0, :cond_52

    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->d:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v0

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_55
    return-void

    :array_56
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
