.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;


# static fields
.field static final a:[I

.field private static final g:[I

.field private static final h:[[I


# instance fields
.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xa

    new-array v0, v3, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->a:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->g:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->h:[[I

    return-void

    nop

    :array_28
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_68
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->i:[I

    return-void
.end method
