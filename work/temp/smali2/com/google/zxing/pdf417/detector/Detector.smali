.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->b:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->c:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->d:[I

    return-void

    :array_22
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_4e
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
