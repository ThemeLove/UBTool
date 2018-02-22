.class public final Lcom/google/zxing/Dimension;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/Dimension;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/google/zxing/Dimension;

    iget v1, p0, Lcom/google/zxing/Dimension;->a:I

    iget v2, p1, Lcom/google/zxing/Dimension;->a:I

    if-ne v1, v2, :cond_14

    iget v1, p0, Lcom/google/zxing/Dimension;->b:I

    iget v2, p1, Lcom/google/zxing/Dimension;->b:I

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/Dimension;->a:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/zxing/Dimension;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/Dimension;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/Dimension;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
