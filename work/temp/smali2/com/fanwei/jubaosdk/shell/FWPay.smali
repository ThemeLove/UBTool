.class public final Lcom/fanwei/jubaosdk/shell/FWPay;
.super Ljava/lang/Object;


# static fields
.field private static alreadyInitialized:Z

.field private static volatile sAppId:Ljava/lang/String;

.field private static sOnPayResultListener:Lcom/fanwei/jubaosdk/common/core/OnPayResultListener;

.field private static volatile sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

.field private static volatile sUseApi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/FWPay;->alreadyInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getChannelType(Lcom/fanwei/jubaosdk/shell/PayOrder;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/fanwei/jubaosdk/shell/a;->a()Lcom/fanwei/jubaosdk/shell/a;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u8bf7\u5148\u8fdb\u884c\u652f\u4ed8\u521d\u59cb\u5316\u64cd\u4f5c\uff0c\u786e\u4fdd\u5df2\u8c03\u7528 FWPay.init(Context context, String appId, boolean useApi) \u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v1, Lcom/fanwei/jubaosdk/shell/FWPay;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/fanwei/jubaosdk/shell/a;->a(Ljava/lang/String;Lcom/fanwei/jubaosdk/shell/PayOrder;)Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->getCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->getChannelTypeList()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    invoke-virtual {v0}, Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_34
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method private static getOnPayResultListener()Lcom/fanwei/jubaosdk/common/core/OnPayResultListener;
    .registers 1

    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sOnPayResultListener:Lcom/fanwei/jubaosdk/common/core/OnPayResultListener;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {}, Lcom/fanwei/jubaosdk/common/util/FunctionUtil;->isMainLooper()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/fanwei/jubaosdk/shell/FWPay;->alreadyInitialized:Z

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    sput-object p1, Lcom/fanwei/jubaosdk/shell/FWPay;->sAppId:Ljava/lang/String;

    sput-boolean p2, Lcom/fanwei/jubaosdk/shell/FWPay;->sUseApi:Z

    new-instance v0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;

    invoke-direct {v0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;-><init>()V

    invoke-static {p0, v0}, Lcom/fanwei/jubaosdk/shell/a;->a(Landroid/content/Context;Lcom/fanwei/jubaosdk/common/core/Dispatcher;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/fanwei/jubaosdk/shell/FWPay;->alreadyInitialized:Z

    goto :goto_a
.end method

.method public static pay(Landroid/app/Activity;Lcom/fanwei/jubaosdk/shell/PayOrder;ILcom/fanwei/jubaosdk/common/core/OnPayResultListener;)V
    .registers 10

    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "ErrorCode=1\uff0cMessage=AppId\u4e3a\u7a7a"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/fanwei/jubaosdk/common/util/DialogUtil;->showMessage(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    :goto_e
    return-void

    :cond_f
    sget-object v0, Lcom/fanwei/jubaosdk/shell/FWPay;->sAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setAppId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    invoke-static {p0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v0

    const-string v1, "APK_UUID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->with(Landroid/content/Context;)Lcom/fanwei/jubaosdk/common/util/PrefsUtil;

    move-result-object v1

    const-string v2, "APK_UUID"

    invoke-virtual {v1, v2, v0}, Lcom/fanwei/jubaosdk/common/util/PrefsUtil;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fanwei/jubaosdk/shell/PayOrder;->getPlayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fanwei/jubaosdk/shell/PayOrder;->setPlayerId(Ljava/lang/String;)Lcom/fanwei/jubaosdk/shell/PayOrder;

    sput-object p3, Lcom/fanwei/jubaosdk/shell/FWPay;->sOnPayResultListener:Lcom/fanwei/jubaosdk/common/core/OnPayResultListener;

    invoke-static {}, Lcom/fanwei/jubaosdk/shell/a;->a()Lcom/fanwei/jubaosdk/shell/a;

    move-result-object v0

    sget-boolean v3, Lcom/fanwei/jubaosdk/shell/FWPay;->sUseApi:Z

    sget-object v5, Lcom/fanwei/jubaosdk/shell/FWPay;->sPayMethodResponse:Lcom/fanwei/jubaosdk/common/entity/PayMethodResponse;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fanwei/jubaosdk/shell/a;->a(Landroid/app/Activity;Lcom/fanwei/jubaosdk/shell/PayOrder;ZILcom/fanwei/jubaosdk/common/entity/PayMethodResponse;)V

    goto :goto_e
.end method
