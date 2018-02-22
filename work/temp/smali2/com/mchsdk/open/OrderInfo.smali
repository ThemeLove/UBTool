.class public Lcom/mchsdk/open/OrderInfo;
.super Ljava/lang/Object;


# instance fields
.field private extendInfo:Ljava/lang/String;

.field private gameServerId:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productPrice:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAmount()I
    .registers 2

    iget v0, p0, Lcom/mchsdk/open/OrderInfo;->productPrice:I

    return v0
.end method


# virtual methods
.method public getExtendInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/OrderInfo;->extendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatGoodsPriceYuan()F
    .registers 3

    invoke-direct {p0}, Lcom/mchsdk/open/OrderInfo;->getAmount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000

    div-float/2addr v0, v1

    return v0
.end method

.method public getGameServerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/OrderInfo;->gameServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPriceFen()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mchsdk/open/OrderInfo;->getAmount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoodsPriceYuan()Ljava/lang/String;
    .registers 5

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mchsdk/open/OrderInfo;->getFloatGoodsPriceYuan()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoodsPriceYuanByZK(I)Ljava/lang/String;
    .registers 7

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mchsdk/open/OrderInfo;->getFloatGoodsPriceYuan()F

    move-result v3

    int-to-float v4, p1

    mul-float/2addr v3, v4

    const v4, 0x3dcccccd

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/OrderInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/open/OrderInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(I)V
    .registers 2

    iput p1, p0, Lcom/mchsdk/open/OrderInfo;->productPrice:I

    return-void
.end method

.method public setExtendInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/OrderInfo;->extendInfo:Ljava/lang/String;

    return-void
.end method

.method public setGameServerId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/OrderInfo;->gameServerId:Ljava/lang/String;

    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/OrderInfo;->productDesc:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/OrderInfo;->productName:Ljava/lang/String;

    return-void
.end method
