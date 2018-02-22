.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    return v0
.end method

.method public b()I
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->a()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    return v1
.end method

.method public c()I
    .registers 3

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->b:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-object v0
.end method
