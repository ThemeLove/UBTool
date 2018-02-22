.class abstract Lcom/google/zxing/aztec/encoder/Token;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/zxing/aztec/encoder/Token;


# instance fields
.field private final b:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/aztec/encoder/SimpleToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/SimpleToken;-><init>(Lcom/google/zxing/aztec/encoder/Token;II)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/Token;->a:Lcom/google/zxing/aztec/encoder/Token;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/aztec/encoder/Token;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/Token;->b:Lcom/google/zxing/aztec/encoder/Token;

    return-void
.end method
