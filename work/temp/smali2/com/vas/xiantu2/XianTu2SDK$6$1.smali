.class Lcom/vas/xiantu2/XianTu2SDK$6$1;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/mchsdk/open/PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/xiantu2/XianTu2SDK$6;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vas/xiantu2/XianTu2SDK$6;

.field private final synthetic val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;


# direct methods
.method constructor <init>(Lcom/vas/xiantu2/XianTu2SDK$6;Lcom/vas/vassdk/bean/VasOrderInfo;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$6;

    iput-object p2, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 285
    :goto_6
    return-void

    .line 275
    :cond_7
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay:errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "1"

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 277
    :cond_2d
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay-success:errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v2}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v3}, Lcom/vas/vassdk/bean/VasOrderInfo;->getExtrasParams()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vas/vassdk/callback/VasPayCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 279
    :cond_5f
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 280
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay-wait:errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 282
    :cond_7c
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay-fail:errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$6$1;->val$vasOrderInfo:Lcom/vas/vassdk/bean/VasOrderInfo;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/vas/vassdk/callback/VasPayCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method
