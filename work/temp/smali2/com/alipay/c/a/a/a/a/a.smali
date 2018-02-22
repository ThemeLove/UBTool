.class public final Lcom/alipay/c/a/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/alipay/c/a/a/a/a/a;->a:[C

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/alipay/c/a/a/a/a/a;->b:[B

    return-void

    nop

    :array_14
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_58
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 10

    const/16 v8, 0x3d

    const/4 v7, -0x1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v4, :cond_86

    :goto_12
    sget-object v5, Lcom/alipay/c/a/a/a/a/a;->b:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    aget-byte v5, v5, v0

    if-ge v1, v4, :cond_1e

    if-eq v5, v7, :cond_97

    :cond_1e
    if-eq v5, v7, :cond_86

    :goto_20
    sget-object v6, Lcom/alipay/c/a/a/a/a/a;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    aget-byte v6, v6, v1

    if-ge v0, v4, :cond_2c

    if-eq v6, v7, :cond_95

    :cond_2c
    if-eq v6, v7, :cond_86

    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_39
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    if-ne v0, v8, :cond_4a

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_49
    return-object v0

    :cond_4a
    sget-object v5, Lcom/alipay/c/a/a/a/a/a;->b:[B

    aget-byte v5, v5, v0

    if-ge v1, v4, :cond_52

    if-eq v5, v7, :cond_93

    :cond_52
    if-eq v5, v7, :cond_86

    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_61
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    if-ne v1, v8, :cond_72

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_49

    :cond_72
    sget-object v6, Lcom/alipay/c/a/a/a/a/a;->b:[B

    aget-byte v1, v6, v1

    if-ge v0, v4, :cond_7a

    if-eq v1, v7, :cond_91

    :cond_7a
    if-eq v1, v7, :cond_86

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    :cond_86
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_49

    :cond_91
    move v1, v0

    goto :goto_61

    :cond_93
    move v0, v1

    goto :goto_39

    :cond_95
    move v1, v0

    goto :goto_20

    :cond_97
    move v0, v1

    goto/16 :goto_12
.end method
