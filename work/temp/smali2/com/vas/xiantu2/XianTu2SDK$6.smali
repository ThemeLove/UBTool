.class Lcom/vas/xiantu2/XianTu2SDK$6;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/vas/vassdk/apiadapter/VasPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/xiantu2/XianTu2SDK;->pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vas/xiantu2/XianTu2SDK;

.field private final synthetic val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;


# direct methods
.method constructor <init>(Lcom/vas/xiantu2/XianTu2SDK;Lcom/vas/vassdk/bean/VasOrderInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    iput-object p2, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v0, "vassdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay-fail:message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, p1, v2}, Lcom/vas/vassdk/callback/VasPayCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "vasOrderId"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v1, "vassdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay-success:vasOrderId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1, p1}, Lcom/vas/vassdk/bean/VasOrderInfo;->setOrderId(Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/mchsdk/open/OrderInfo;

    invoke-direct {v0}, Lcom/mchsdk/open/OrderInfo;-><init>()V

    .line 263
    .local v0, "orderInfo":Lcom/mchsdk/open/OrderInfo;
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getAmount()D

    move-result-wide v1

    iget-object v3, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_PayRate:Ljava/lang/String;
    invoke-static {v3}, Lcom/vas/xiantu2/XianTu2SDK;->access$7(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/OrderInfo;->setAmount(I)V

    .line 264
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/OrderInfo;->setExtendInfo(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/OrderInfo;->setProductName(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getGoodsDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/OrderInfo;->setProductDesc(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/vas/xiantu2/XianTu2SDK$6$1;

    iget-object v4, p0, Lcom/vas/xiantu2/XianTu2SDK$6;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-direct {v3, p0, v4}, Lcom/vas/xiantu2/XianTu2SDK$6$1;-><init>(Lcom/vas/xiantu2/XianTu2SDK$6;Lcom/vas/vassdk/bean/VasOrderInfo;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mchsdk/open/MCApiFactory;->pay(Landroid/content/Context;Lcom/mchsdk/open/OrderInfo;Lcom/mchsdk/open/PayCallback;)V

    .line 287
    return-void
.end method
