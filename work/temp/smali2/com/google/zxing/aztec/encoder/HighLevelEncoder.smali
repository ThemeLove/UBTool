.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[[I

.field static final c:[[I

.field private static final d:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v4, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "UPPER"

    aput-object v1, v0, v2

    const-string v1, "LOWER"

    aput-object v1, v0, v6

    const-string v1, "DIGIT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v3, "MIXED"

    aput-object v3, v0, v1

    const-string v1, "PUNCT"

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[Ljava/lang/String;

    new-array v0, v4, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_134

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_142

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_150

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_15e

    aput-object v3, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_16c

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->b:[[I

    const/16 v0, 0x100

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v6, v0, v1

    const/16 v0, 0x41

    :goto_5e
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_6f

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v1, v1, v2

    add-int/lit8 v3, v0, -0x41

    add-int/lit8 v3, v3, 0x2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    :cond_6f
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v0, v0, v6

    const/16 v1, 0x20

    aput v6, v0, v1

    const/16 v0, 0x61

    :goto_79
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_8a

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v1, v1, v6

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_8a
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v0, v0, v7

    const/16 v1, 0x20

    aput v6, v0, v1

    const/16 v0, 0x30

    :goto_94
    const/16 v1, 0x39

    if-gt v0, v1, :cond_a5

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v1, v1, v7

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x2

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    :cond_a5
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v0, v0, v7

    const/16 v1, 0x2c

    const/16 v3, 0xc

    aput v3, v0, v1

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v0, v0, v7

    const/16 v1, 0x2e

    const/16 v3, 0xd

    aput v3, v0, v1

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_17a

    move v0, v2

    :goto_c1
    const/16 v3, 0x1c

    if-ge v0, v3, :cond_d1

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aget v4, v1, v0

    aput v0, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    :cond_d1
    const/16 v0, 0x1f

    new-array v1, v0, [I

    fill-array-data v1, :array_1b6

    move v0, v2

    :goto_d9
    const/16 v3, 0x1f

    if-ge v0, v3, :cond_ec

    aget v3, v1, v0

    if-lez v3, :cond_e9

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->d:[[I

    aget-object v3, v3, v8

    aget v4, v1, v0

    aput v0, v3, v4

    :cond_e9
    add-int/lit8 v0, v0, 0x1

    goto :goto_d9

    :cond_ec
    const/4 v0, 0x6

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    array-length v3, v0

    move v1, v2

    :goto_fe
    if-ge v1, v3, :cond_109

    aget-object v4, v0, v1

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    :cond_109
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    aget-object v0, v0, v2

    aput v2, v0, v8

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    aget-object v0, v0, v6

    aput v2, v0, v8

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    aget-object v0, v0, v6

    const/16 v1, 0x1c

    aput v1, v0, v2

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    const/4 v1, 0x3

    aget-object v0, v0, v1

    aput v2, v0, v8

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    aget-object v0, v0, v7

    aput v2, v0, v8

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->c:[[I

    aget-object v0, v0, v7

    const/16 v1, 0xf

    aput v1, v0, v2

    return-void

    nop

    :array_134
    .array-data 4
        0x0
        0x5001c
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_142
    .array-data 4
        0x901ee
        0x0
        0x5001e
        0x5001d
        0xa03be
    .end array-data

    :array_150
    .array-data 4
        0x4000e
        0x901dc
        0x0
        0x901dd
        0xe3bbe
    .end array-data

    :array_15e
    .array-data 4
        0x5001d
        0x5001c
        0xa03be
        0x0
        0x5001e
    .end array-data

    :array_16c
    .array-data 4
        0x5001f
        0xa03fc
        0xa03fe
        0xa03fd
        0x0
    .end array-data

    :array_17a
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_1b6
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method
