.class final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

.field private final b:[I


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v2, p2

    if-le v2, v1, :cond_39

    aget v0, p2, v4

    if-nez v0, :cond_39

    move v0, v1

    :goto_18
    if-ge v0, v2, :cond_21

    aget v3, p2, v0

    if-nez v3, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_21
    if-ne v0, v2, :cond_2a

    new-array v0, v1, [I

    aput v4, v0, v4

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    :goto_29
    return-void

    :cond_2a
    sub-int v1, v2, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_39
    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    goto :goto_29
.end method


# virtual methods
.method a()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method a(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a()I

    move-result v0

    move v1, v0

    :goto_11
    if-ltz v1, :cond_4a

    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->a(I)I

    move-result v0

    if-eqz v0, :cond_31

    if-gez v0, :cond_35

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    :cond_21
    :goto_21
    if-eqz v1, :cond_25

    if-eq v0, v4, :cond_28

    :cond_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_28
    if-eqz v1, :cond_31

    if-ne v1, v4, :cond_41

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_41
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
