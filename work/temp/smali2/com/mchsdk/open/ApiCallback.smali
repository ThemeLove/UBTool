.class public Lcom/mchsdk/open/ApiCallback;
.super Ljava/lang/Object;


# static fields
.field public static mJBYPayCallback:Lcom/mchsdk/paysdk/b/a;

.field public static mWXPayCallback:Lcom/mchsdk/paysdk/b/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExitObsv()Lcom/mchsdk/open/IGPExitObsv;
    .registers 1

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getExitObsv()Lcom/mchsdk/open/IGPExitObsv;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;
    .registers 1

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getLoginCallback()Lcom/mchsdk/open/IGPUserObsv;

    move-result-object v0

    return-object v0
.end method

.method public static order()Lcom/mchsdk/open/OrderInfo;
    .registers 1

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/k;->b()Lcom/mchsdk/open/OrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setJBYCallback(Lcom/mchsdk/paysdk/b/a;)V
    .registers 1

    if-eqz p0, :cond_4

    sput-object p0, Lcom/mchsdk/open/ApiCallback;->mJBYPayCallback:Lcom/mchsdk/paysdk/b/a;

    :cond_4
    return-void
.end method

.method public static setWXPayCallback(Lcom/mchsdk/paysdk/b/f;)V
    .registers 1

    if-eqz p0, :cond_4

    sput-object p0, Lcom/mchsdk/open/ApiCallback;->mWXPayCallback:Lcom/mchsdk/paysdk/b/f;

    :cond_4
    return-void
.end method
