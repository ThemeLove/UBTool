.class public Lcom/google/zxing/oned/rss/DataCharacter;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/zxing/oned/rss/DataCharacter;

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->a:I

    iget v2, p1, Lcom/google/zxing/oned/rss/DataCharacter;->a:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->b:I

    iget v2, p1, Lcom/google/zxing/oned/rss/DataCharacter;->b:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/oned/rss/DataCharacter;->a:I

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/oned/rss/DataCharacter;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
