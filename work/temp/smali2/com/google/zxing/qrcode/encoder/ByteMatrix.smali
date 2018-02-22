.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;


# instance fields
.field private final a:[[B

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    return-void
.end method


# virtual methods
.method public a(II)B
    .registers 4

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    return v0
.end method

.method public a(B)V
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    if-ge v0, v2, :cond_17

    move v2, v1

    :goto_7
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    if-ge v2, v3, :cond_14

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v3, v3, v0

    aput-byte p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return-void
.end method

.method public a(III)V
    .registers 6

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    return-void
.end method

.method public a(IIZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v1, v0, p2

    if-eqz p3, :cond_b

    const/4 v0, 0x1

    :goto_7
    int-to-byte v0, v0

    aput-byte v0, v1, p1

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    return v0
.end method

.method public c()[[B
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    mul-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_10
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    if-ge v0, v2, :cond_3e

    move v2, v1

    :goto_15
    iget v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    if-ge v2, v4, :cond_36

    iget-object v4, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v2

    packed-switch v4, :pswitch_data_44

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :pswitch_2a
    const-string v4, " 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :pswitch_30
    const-string v4, " 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_36
    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_30
    .end packed-switch
.end method
