.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [C

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->a:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->b:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->c:[C

    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->a:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->d:C

    return-void

    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method
