.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    return-void
.end method

.method constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iput p2, p0, Lcom/google/zxing/common/BitArray;->b:I

    return-void
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x5

    if-le p1, v0, :cond_16

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->c(I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    :cond_16
    return-void
.end method

.method private static c(I)[I
    .registers 2

    add-int/lit8 v0, p0, 0x1f

    div-int/lit8 v0, v0, 0x20

    new-array v0, v0, [I

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    return v0
.end method

.method public a(II)V
    .registers 5

    const/4 v1, 0x1

    if-ltz p2, :cond_7

    const/16 v0, 0x20

    if-le p2, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Num bits must be between 0 and 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->b(I)V

    :goto_15
    if-lez p2, :cond_28

    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_26

    move v0, v1

    :goto_20
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    :cond_26
    const/4 v0, 0x0

    goto :goto_20

    :cond_28
    return-void
.end method

.method public a(I[BII)V
    .registers 12

    const/4 v2, 0x0

    move v4, v2

    move v0, p1

    :goto_3
    if-ge v4, p4, :cond_26

    move v1, v2

    move v3, v0

    move v0, v2

    :goto_8
    const/16 v5, 0x8

    if-ge v1, v5, :cond_1c

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitArray;->a(I)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    rsub-int/lit8 v6, v1, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1c
    add-int v1, p3, v4

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_3

    :cond_26
    return-void
.end method

.method public a(Lcom/google/zxing/common/BitArray;)V
    .registers 5

    iget v1, p1, Lcom/google/zxing/common/BitArray;->b:I

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->b(I)V

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_15

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->a(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public a(Z)V
    .registers 7

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->b(I)V

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    div-int/lit8 v1, v1, 0x20

    aget v2, v0, v1

    const/4 v3, 0x1

    iget v4, p0, Lcom/google/zxing/common/BitArray;->b:I

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    :cond_1a
    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    return-void
.end method

.method public a(I)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    div-int/lit8 v2, p1, 0x20

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public b(Lcom/google/zxing/common/BitArray;)V
    .registers 6

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    iget v1, p1, Lcom/google/zxing/common/BitArray;->b:I

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->a:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_22
    return-void
.end method

.method public c()Lcom/google/zxing/common/BitArray;
    .registers 4

    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-direct {v1, v0, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->c()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/common/BitArray;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    iget v2, p1, Lcom/google/zxing/common/BitArray;->b:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    iget-object v2, p1, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->a:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/common/BitArray;->b:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Lcom/google/zxing/common/BitArray;->b:I

    if-ge v0, v1, :cond_26

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_15

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->a(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x58

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_23
    const/16 v1, 0x2e

    goto :goto_1d

    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
