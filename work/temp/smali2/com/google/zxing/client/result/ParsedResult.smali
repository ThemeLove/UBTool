.class public abstract Lcom/google/zxing/client/result/ParsedResult;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5

    if-eqz p0, :cond_e

    array-length v1, p0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/google/zxing/client/result/ParsedResult;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/zxing/client/result/ParsedResult;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
