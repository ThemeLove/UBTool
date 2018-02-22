.class Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/aztec/encoder/State;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
    .registers 5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/State;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/zxing/aztec/encoder/State;

    check-cast p2, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->a(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I

    move-result v0

    return v0
.end method
