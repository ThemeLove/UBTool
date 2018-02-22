.class public final Lcom/google/zxing/common/reedsolomon/GenericGF;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final b:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final c:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final d:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final e:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final f:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final g:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field public static final h:Lcom/google/zxing/common/reedsolomon/GenericGF;


# instance fields
.field private final i:[I

.field private final j:[I

.field private final k:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final l:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x100

    const/4 v3, 0x1

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x1069

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x409

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->b:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x43

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x13

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->d:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x11d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->e:Lcom/google/zxing/common/reedsolomon/GenericGF;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/16 v1, 0x12d

    invoke-direct {v0, v1, v4, v3}, Lcom/google/zxing/common/reedsolomon/GenericGF;-><init>(III)V

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->f:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->g:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->c:Lcom/google/zxing/common/reedsolomon/GenericGF;

    sput-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->h:Lcom/google/zxing/common/reedsolomon/GenericGF;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 9

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->n:I

    iput p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->m:I

    iput p3, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->o:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    move v2, v1

    move v0, v3

    :goto_15
    if-ge v2, p2, :cond_26

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    aput v0, v4, v2

    shl-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_23

    xor-int/2addr v0, p1

    add-int/lit8 v4, p2, -0x1

    and-int/2addr v0, v4

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    move v0, v1

    :goto_27
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    aget v4, v4, v0

    aput v0, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_36
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v3, [I

    aput v1, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->k:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    new-array v2, v3, [I

    aput v3, v2, v1

    invoke-direct {v0, p0, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->l:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-void
.end method

.method static b(II)I
    .registers 3

    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method a(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    aget v0, v0, p1

    return v0
.end method

.method a()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->k:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    return-object v0
.end method

.method a(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 5

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-nez p2, :cond_d

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->k:Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    :goto_c
    return-object v0

    :cond_d
    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_c
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->o:I

    return v0
.end method

.method b(I)I
    .registers 3

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    aget v0, v0, p1

    return v0
.end method

.method c(I)I
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->m:I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    aget v2, v2, p1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method c(II)I
    .registers 6

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->i:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->j:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->m:I

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GF(0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGF;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
