.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v9, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcom/google/zxing/pdf417/PDF417Common;->a:[I

    array-length v0, v0

    filled-new-array {v0, v9}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->a:[[F

    move v0, v1

    :goto_15
    sget-object v2, Lcom/google/zxing/pdf417/PDF417Common;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_45

    sget-object v2, Lcom/google/zxing/pdf417/PDF417Common;->a:[I

    aget v3, v2, v0

    and-int/lit8 v2, v3, 0x1

    move v4, v1

    move v5, v2

    :goto_22
    if-ge v4, v9, :cond_42

    const/4 v2, 0x0

    :goto_25
    and-int/lit8 v6, v3, 0x1

    if-ne v6, v5, :cond_2f

    const/high16 v6, 0x3f800000

    add-float/2addr v2, v6

    shr-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_2f
    and-int/lit8 v5, v3, 0x1

    sget-object v6, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->a:[[F

    aget-object v6, v6, v0

    rsub-int/lit8 v7, v4, 0x8

    add-int/lit8 v7, v7, -0x1

    const/high16 v8, 0x41880000

    div-float/2addr v2, v8

    aput v2, v6, v7

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_22

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_45
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
