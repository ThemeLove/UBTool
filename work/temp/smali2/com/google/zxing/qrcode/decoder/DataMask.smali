.class abstract enum Lcom/google/zxing/qrcode/decoder/DataMask;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/qrcode/decoder/DataMask;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum b:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum c:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum d:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum e:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum f:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum g:Lcom/google/zxing/qrcode/decoder/DataMask;

.field public static final enum h:Lcom/google/zxing/qrcode/decoder/DataMask;

.field private static final synthetic i:[Lcom/google/zxing/qrcode/decoder/DataMask;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$1;

    const-string v1, "DATA_MASK_000"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/qrcode/decoder/DataMask$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->a:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$2;

    const-string v1, "DATA_MASK_001"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/qrcode/decoder/DataMask$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->b:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$3;

    const-string v1, "DATA_MASK_010"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/qrcode/decoder/DataMask$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->c:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$4;

    const-string v1, "DATA_MASK_011"

    invoke-direct {v0, v1, v6}, Lcom/google/zxing/qrcode/decoder/DataMask$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->d:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$5;

    const-string v1, "DATA_MASK_100"

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/qrcode/decoder/DataMask$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->e:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$6;

    const-string v1, "DATA_MASK_101"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->f:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$7;

    const-string v1, "DATA_MASK_110"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->g:Lcom/google/zxing/qrcode/decoder/DataMask;

    new-instance v0, Lcom/google/zxing/qrcode/decoder/DataMask$8;

    const-string v1, "DATA_MASK_111"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->h:Lcom/google/zxing/qrcode/decoder/DataMask;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->a:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->b:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->c:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->d:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/zxing/qrcode/decoder/DataMask;->e:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->f:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->g:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DataMask;->h:Lcom/google/zxing/qrcode/decoder/DataMask;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->i:[Lcom/google/zxing/qrcode/decoder/DataMask;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/DataMask;
    .registers 2

    const-class v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/DataMask;
    .registers 1

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DataMask;->i:[Lcom/google/zxing/qrcode/decoder/DataMask;

    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/DataMask;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/qrcode/decoder/DataMask;

    return-object v0
.end method
