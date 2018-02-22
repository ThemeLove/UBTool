.class final Lcom/google/zxing/qrcode/encoder/BlockPair;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->a:[B

    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->a:[B

    return-object v0
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/BlockPair;->b:[B

    return-object v0
.end method
