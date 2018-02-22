.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;


# static fields
.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[[I

.field static final f:[[I


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final g:Lcom/google/zxing/oned/UPCEANExtensionSupport;

.field private final h:Lcom/google/zxing/oned/EANManufacturerOrgSupport;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v0, 0xa

    const/4 v1, 0x0

    const/4 v5, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_a2

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->b:[I

    new-array v2, v7, [I

    fill-array-data v2, :array_ac

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->c:[I

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_ba

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->d:[I

    new-array v2, v0, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_ca

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-array v4, v5, [I

    fill-array-data v4, :array_d6

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v4, v5, [I

    fill-array-data v4, :array_e2

    aput-object v4, v2, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_ee

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_fa

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_106

    aput-object v3, v2, v7

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_112

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v5, [I

    fill-array-data v4, :array_11e

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v5, [I

    fill-array-data v4, :array_12a

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v5, [I

    fill-array-data v4, :array_136

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    const/16 v2, 0x14

    new-array v2, v2, [[I

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->f:[[I

    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->f:[[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v0

    :goto_7c
    const/16 v0, 0x14

    if-ge v2, v0, :cond_a0

    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->e:[[I

    add-int/lit8 v3, v2, -0xa

    aget-object v3, v0, v3

    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    :goto_8a
    array-length v5, v3

    if-ge v0, v5, :cond_98

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    :cond_98
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->f:[[I

    aput-object v4, v0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7c

    :cond_a0
    return-void

    nop

    :array_a2
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_ac
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_ba
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_ca
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_d6
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_e2
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_ee
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_fa
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_106
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_112
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_11e
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_12a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_136
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->a:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->g:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    new-instance v0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    invoke-direct {v0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->h:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    return-void
.end method
