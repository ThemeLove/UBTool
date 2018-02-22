.class public final Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_d8

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->a:[I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_fc

    aput-object v3, v2, v0

    new-array v3, v6, [I

    fill-array-data v3, :array_10a

    aput-object v3, v2, v1

    const/4 v3, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_11c

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xb

    new-array v4, v4, [I

    fill-array-data v4, :array_134

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0xc

    new-array v4, v4, [I

    fill-array-data v4, :array_14e

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_16a

    aput-object v3, v2, v5

    const/4 v3, 0x6

    const/16 v4, 0x12

    new-array v4, v4, [I

    fill-array-data v4, :array_18a

    aput-object v4, v2, v3

    const/16 v3, 0x14

    new-array v3, v3, [I

    fill-array-data v3, :array_1b2

    aput-object v3, v2, v6

    const/16 v3, 0x8

    const/16 v4, 0x18

    new-array v4, v4, [I

    fill-array-data v4, :array_1de

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x1c

    new-array v4, v4, [I

    fill-array-data v4, :array_212

    aput-object v4, v2, v3

    const/16 v3, 0x24

    new-array v3, v3, [I

    fill-array-data v3, :array_24e

    aput-object v3, v2, v7

    const/16 v3, 0xb

    const/16 v4, 0x2a

    new-array v4, v4, [I

    fill-array-data v4, :array_29a

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x30

    new-array v4, v4, [I

    fill-array-data v4, :array_2f2

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x38

    new-array v4, v4, [I

    fill-array-data v4, :array_356

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x3e

    new-array v4, v4, [I

    fill-array-data v4, :array_3ca

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x44

    new-array v4, v4, [I

    fill-array-data v4, :array_44a

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->b:[[I

    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->c:[I

    const/16 v2, 0xff

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->d:[I

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_c0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_d7

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->d:[I

    aput v0, v2, v1

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->c:[I

    aput v1, v2, v0

    shl-int/lit8 v0, v0, 0x1

    const/16 v2, 0x100

    if-lt v0, v2, :cond_d4

    xor-int/lit16 v0, v0, 0x12d

    :cond_d4
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_d7
    return-void

    :array_d8
    .array-data 4
        0x5
        0x7
        0xa
        0xb
        0xc
        0xe
        0x12
        0x14
        0x18
        0x1c
        0x24
        0x2a
        0x30
        0x38
        0x3e
        0x44
    .end array-data

    :array_fc
    .array-data 4
        0xe4
        0x30
        0xf
        0x6f
        0x3e
    .end array-data

    :array_10a
    .array-data 4
        0x17
        0x44
        0x90
        0x86
        0xf0
        0x5c
        0xfe
    .end array-data

    :array_11c
    .array-data 4
        0x1c
        0x18
        0xb9
        0xa6
        0xdf
        0xf8
        0x74
        0xff
        0x6e
        0x3d
    .end array-data

    :array_134
    .array-data 4
        0xaf
        0x8a
        0xcd
        0xc
        0xc2
        0xa8
        0x27
        0xf5
        0x3c
        0x61
        0x78
    .end array-data

    :array_14e
    .array-data 4
        0x29
        0x99
        0x9e
        0x5b
        0x3d
        0x2a
        0x8e
        0xd5
        0x61
        0xb2
        0x64
        0xf2
    .end array-data

    :array_16a
    .array-data 4
        0x9c
        0x61
        0xc0
        0xfc
        0x5f
        0x9
        0x9d
        0x77
        0x8a
        0x2d
        0x12
        0xba
        0x53
        0xb9
    .end array-data

    :array_18a
    .array-data 4
        0x53
        0xc3
        0x64
        0x27
        0xbc
        0x4b
        0x42
        0x3d
        0xf1
        0xd5
        0x6d
        0x81
        0x5e
        0xfe
        0xe1
        0x30
        0x5a
        0xbc
    .end array-data

    :array_1b2
    .array-data 4
        0xf
        0xc3
        0xf4
        0x9
        0xe9
        0x47
        0xa8
        0x2
        0xbc
        0xa0
        0x99
        0x91
        0xfd
        0x4f
        0x6c
        0x52
        0x1b
        0xae
        0xba
        0xac
    .end array-data

    :array_1de
    .array-data 4
        0x34
        0xbe
        0x58
        0xcd
        0x6d
        0x27
        0xb0
        0x15
        0x9b
        0xc5
        0xfb
        0xdf
        0x9b
        0x15
        0x5
        0xac
        0xfe
        0x7c
        0xc
        0xb5
        0xb8
        0x60
        0x32
        0xc1
    .end array-data

    :array_212
    .array-data 4
        0xd3
        0xe7
        0x2b
        0x61
        0x47
        0x60
        0x67
        0xae
        0x25
        0x97
        0xaa
        0x35
        0x4b
        0x22
        0xf9
        0x79
        0x11
        0x8a
        0x6e
        0xd5
        0x8d
        0x88
        0x78
        0x97
        0xe9
        0xa8
        0x5d
        0xff
    .end array-data

    :array_24e
    .array-data 4
        0xf5
        0x7f
        0xf2
        0xda
        0x82
        0xfa
        0xa2
        0xb5
        0x66
        0x78
        0x54
        0xb3
        0xdc
        0xfb
        0x50
        0xb6
        0xe5
        0x12
        0x2
        0x4
        0x44
        0x21
        0x65
        0x89
        0x5f
        0x77
        0x73
        0x2c
        0xaf
        0xb8
        0x3b
        0x19
        0xe1
        0x62
        0x51
        0x70
    .end array-data

    :array_29a
    .array-data 4
        0x4d
        0xc1
        0x89
        0x1f
        0x13
        0x26
        0x16
        0x99
        0xf7
        0x69
        0x7a
        0x2
        0xf5
        0x85
        0xf2
        0x8
        0xaf
        0x5f
        0x64
        0x9
        0xa7
        0x69
        0xd6
        0x6f
        0x39
        0x79
        0x15
        0x1
        0xfd
        0x39
        0x36
        0x65
        0xf8
        0xca
        0x45
        0x32
        0x96
        0xb1
        0xe2
        0x5
        0x9
        0x5
    .end array-data

    :array_2f2
    .array-data 4
        0xf5
        0x84
        0xac
        0xdf
        0x60
        0x20
        0x75
        0x16
        0xee
        0x85
        0xee
        0xe7
        0xcd
        0xbc
        0xed
        0x57
        0xbf
        0x6a
        0x10
        0x93
        0x76
        0x17
        0x25
        0x5a
        0xaa
        0xcd
        0x83
        0x58
        0x78
        0x64
        0x42
        0x8a
        0xba
        0xf0
        0x52
        0x2c
        0xb0
        0x57
        0xbb
        0x93
        0xa0
        0xaf
        0x45
        0xd5
        0x5c
        0xfd
        0xe1
        0x13
    .end array-data

    :array_356
    .array-data 4
        0xaf
        0x9
        0xdf
        0xee
        0xc
        0x11
        0xdc
        0xd0
        0x64
        0x1d
        0xaf
        0xaa
        0xe6
        0xc0
        0xd7
        0xeb
        0x96
        0x9f
        0x24
        0xdf
        0x26
        0xc8
        0x84
        0x36
        0xe4
        0x92
        0xda
        0xea
        0x75
        0xcb
        0x1d
        0xe8
        0x90
        0xee
        0x16
        0x96
        0xc9
        0x75
        0x3e
        0xcf
        0xa4
        0xd
        0x89
        0xf5
        0x7f
        0x43
        0xf7
        0x1c
        0x9b
        0x2b
        0xcb
        0x6b
        0xe9
        0x35
        0x8f
        0x2e
    .end array-data

    :array_3ca
    .array-data 4
        0xf2
        0x5d
        0xa9
        0x32
        0x90
        0xd2
        0x27
        0x76
        0xca
        0xbc
        0xc9
        0xbd
        0x8f
        0x6c
        0xc4
        0x25
        0xb9
        0x70
        0x86
        0xe6
        0xf5
        0x3f
        0xc5
        0xbe
        0xfa
        0x6a
        0xb9
        0xdd
        0xaf
        0x40
        0x72
        0x47
        0xa1
        0x2c
        0x93
        0x6
        0x1b
        0xda
        0x33
        0x3f
        0x57
        0xa
        0x28
        0x82
        0xbc
        0x11
        0xa3
        0x1f
        0xb0
        0xaa
        0x4
        0x6b
        0xe8
        0x7
        0x5e
        0xa6
        0xe0
        0x7c
        0x56
        0x2f
        0xb
        0xcc
    .end array-data

    :array_44a
    .array-data 4
        0xdc
        0xe4
        0xad
        0x59
        0xfb
        0x95
        0x9f
        0x38
        0x59
        0x21
        0x93
        0xf4
        0x9a
        0x24
        0x49
        0x7f
        0xd5
        0x88
        0xf8
        0xb4
        0xea
        0xc5
        0x9e
        0xb1
        0x44
        0x7a
        0x5d
        0xd5
        0xf
        0xa0
        0xe3
        0xec
        0x42
        0x8b
        0x99
        0xb9
        0xca
        0xa7
        0xb3
        0x19
        0xdc
        0xe8
        0x60
        0xd2
        0xe7
        0x88
        0xdf
        0xef
        0xb5
        0xf1
        0x3b
        0x34
        0xac
        0x19
        0x31
        0xe8
        0xd3
        0xbd
        0x40
        0x36
        0x6c
        0x99
        0x84
        0x3f
        0x60
        0x67
        0x52
        0xba
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
