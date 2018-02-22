.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final b:I

.field private final c:Lcom/google/zxing/aztec/encoder/Token;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->a:Lcom/google/zxing/aztec/encoder/Token;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->a:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->c:Lcom/google/zxing/aztec/encoder/Token;

    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->b:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->d:I

    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->e:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, "%s bits=%d bytes=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a:[Ljava/lang/String;

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->b:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
