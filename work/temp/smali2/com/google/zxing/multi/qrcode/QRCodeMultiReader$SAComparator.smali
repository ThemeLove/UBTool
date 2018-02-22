.class final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I
    .registers 6

    invoke-virtual {p1}, Lcom/google/zxing/Result;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/Result;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->j:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_24

    const/4 v0, -0x1

    :goto_23
    return v0

    :cond_24
    if-le v1, v0, :cond_28

    const/4 v0, 0x1

    goto :goto_23

    :cond_28
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/google/zxing/Result;

    check-cast p2, Lcom/google/zxing/Result;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader$SAComparator;->a(Lcom/google/zxing/Result;Lcom/google/zxing/Result;)I

    move-result v0

    return v0
.end method
