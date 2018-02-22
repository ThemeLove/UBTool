.class final Lcom/google/zxing/pdf417/decoder/Codeword;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:I


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/Codeword;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
