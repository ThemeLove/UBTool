.class public final Lcom/google/zxing/client/result/EmailAddressParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/zxing/client/result/EmailAddressParsedResult;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/EmailAddressParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
