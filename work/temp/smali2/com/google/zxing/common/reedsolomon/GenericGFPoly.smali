.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/reedsolomon/GenericGF;

.field private final b:[I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
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
    iput-object p1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

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

    iput-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    :goto_29
    return-void

    :cond_2a
    sub-int v1, v2, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_39
    iput-object p2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    goto :goto_29
.end method


# virtual methods
.method a(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method a(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 8

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    if-nez p2, :cond_11

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v1, v0

    add-int v0, v1, p1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v1, :cond_2a

    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2a
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_10
.end method

.method a(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-object p1

    :cond_1a
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object p1, p0

    goto :goto_19

    :cond_22
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_4f

    :goto_2a
    array-length v2, v0

    new-array v4, v2, [I

    array-length v2, v0

    array-length v3, v1

    sub-int v3, v2, v3

    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    :goto_35
    array-length v5, v0

    if-ge v2, v5, :cond_47

    sub-int v5, v2, v3

    aget v5, v1, v5

    aget v6, v0, v2

    invoke-static {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b(II)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_47
    new-instance p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {p1, v0, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_19

    :cond_4f
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2a
.end method

.method a()[I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    return-object v0
.end method

.method b()I
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v2, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1f
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v4, v3

    iget-object v5, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    array-length v6, v5

    add-int v0, v4, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    move v2, v1

    :goto_33
    if-ge v2, v4, :cond_55

    aget v8, v3, v2

    move v0, v1

    :goto_38
    if-ge v0, v6, :cond_51

    add-int v9, v2, v0

    add-int v10, v2, v0

    aget v10, v7, v10

    iget-object v11, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    aget v12, v5, v0

    invoke-virtual {v11, v8, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v11

    invoke-static {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b(II)I

    move-result v10

    aput v10, v7, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_33

    :cond_55
    new-instance v0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    goto :goto_25
.end method

.method c()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b:[I

    aget v1, v1, v0

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method c(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .registers 9

    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    iget-object v1, p1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v2, v1}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(I)I

    move-result v2

    move-object v1, v0

    move-object v0, p0

    :goto_36
    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v4

    if-lt v3, v4, :cond_70

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->c()Z

    move-result v3

    if-nez v3, :cond_70

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lcom/google/zxing/common/reedsolomon/GenericGF;->c(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6, v3, v4}, Lcom/google/zxing/common/reedsolomon/GenericGF;->a(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v0

    goto :goto_36

    :cond_70
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->b()I

    move-result v0

    move v1, v0

    :goto_11
    if-ltz v1, :cond_65

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a(I)I

    move-result v0

    if-eqz v0, :cond_3b

    if-gez v0, :cond_3f

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v0

    :cond_21
    :goto_21
    if-eqz v1, :cond_25

    if-eq v0, v4, :cond_32

    :cond_25
    iget-object v3, p0, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->a:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v3, v0}, Lcom/google/zxing/common/reedsolomon/GenericGF;->b(I)I

    move-result v0

    if-nez v0, :cond_4b

    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    :goto_32
    if-eqz v1, :cond_3b

    if-ne v1, v4, :cond_5c

    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_3b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_4b
    if-ne v0, v4, :cond_53

    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_53
    const-string v3, "a^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_5c
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3b

    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
