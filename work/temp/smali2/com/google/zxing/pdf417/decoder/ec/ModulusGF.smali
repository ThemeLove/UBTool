.class public final Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# instance fields
.field private final b:[I

.field private final c:[I

.field private final d:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

.field private final e:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/16 v1, 0x3a1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;-><init>(II)V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->f:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:[I

    move v0, v1

    move v2, v3

    :goto_11
    if-ge v0, p1, :cond_1c

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b:[I

    aput v2, v4, v0

    mul-int/2addr v2, p2

    rem-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    move v0, v1

    :goto_1d
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_2c

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c:[I

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b:[I

    aget v4, v4, v0

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e:Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    return-void
.end method
