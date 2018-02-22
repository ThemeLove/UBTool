.class public Lcom/vas/vassdk/model/VasModel;
.super Ljava/lang/Object;
.source "VasModel.java"


# static fields
.field private static a:Lcom/vas/vassdk/model/VasModel;


# instance fields
.field private b:Lcom/vas/vassdk/VasLoadingDialog;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/vas/vassdk/VasLoadingDialog;

    const-string v1, "\u8ba2\u5355\u521b\u5efa\u4e2d..."

    invoke-direct {v0, p1, v1}, Lcom/vas/vassdk/VasLoadingDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vas/vassdk/model/VasModel;->b:Lcom/vas/vassdk/VasLoadingDialog;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/model/VasModel;)Lcom/vas/vassdk/VasLoadingDialog;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vas/vassdk/model/VasModel;->b:Lcom/vas/vassdk/VasLoadingDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/vas/vassdk/model/VasModel;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasInitListener;)V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/vas/vassdk/model/VasModel;->a(Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasInitListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/model/VasModel;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V
    .registers 3

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/vas/vassdk/model/VasModel;->a(Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/model/VasModel;Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V
    .registers 5

    .prologue
    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vas/vassdk/model/VasModel;->a(Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasInitListener;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 123
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 125
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    if-ne v3, v1, :cond_56

    .line 127
    const-string v3, "vassdk-init"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "success---result(status==1):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 129
    const-string v3, "login_status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    const-string v4, "pay_status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    const-string v2, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    move v2, v0

    .line 133
    :goto_44
    const-string v3, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 135
    :goto_4c
    if-eqz p2, :cond_51

    .line 136
    invoke-interface {p2, v2, v0}, Lcom/vas/vassdk/apiadapter/VasInitListener;->onSuccess(ZZ)V

    .line 157
    :cond_51
    :goto_51
    return-void

    :cond_52
    move v2, v1

    .line 132
    goto :goto_44

    :cond_54
    move v0, v1

    .line 133
    goto :goto_4c

    .line 143
    :cond_56
    const-string v0, "vassdk-init"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail---result(status!=1):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_51

    .line 145
    invoke-interface {p2, v4}, Lcom/vas/vassdk/apiadapter/VasInitListener;->onFail(Ljava/lang/String;)V
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_6f} :catch_70

    goto :goto_51

    .line 149
    :catch_70
    move-exception v0

    .line 151
    const-string v1, "vassdk-init"

    const-string v2, "fail---parse vassdk-init result error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    if-eqz p2, :cond_51

    .line 154
    const-string v0, "parse vassdk-init result error!"

    invoke-interface {p2, v0}, Lcom/vas/vassdk/apiadapter/VasInitListener;->onFail(Ljava/lang/String;)V

    goto :goto_51
.end method

.method private a(Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V
    .registers 8

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 248
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    const/4 v3, 0x1

    if-ne v3, v1, :cond_5e

    .line 250
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 251
    const-string v1, "userid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "username"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    const-string v3, "token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v3, Lcom/vas/vassdk/bean/VasUserInfo;

    invoke-direct {v3}, Lcom/vas/vassdk/bean/VasUserInfo;-><init>()V

    .line 255
    invoke-virtual {v3, v1}, Lcom/vas/vassdk/bean/VasUserInfo;->setUid(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3, v2}, Lcom/vas/vassdk/bean/VasUserInfo;->setUserName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v3, v0}, Lcom/vas/vassdk/bean/VasUserInfo;->setToken(Ljava/lang/String;)V

    .line 258
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/vas/vassdk/bean/VasUserInfo;->setExtra(Ljava/lang/String;)V

    .line 260
    const-string v0, "vassdk-login"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "success---result(code==1):"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "503"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz p2, :cond_5d

    .line 266
    invoke-interface {p2, v3}, Lcom/vas/vassdk/apiadapter/VasLoginListener;->loginSuccess(Lcom/vas/vassdk/bean/VasUserInfo;)V

    .line 287
    :cond_5d
    :goto_5d
    return-void

    .line 269
    :cond_5e
    const-string v0, "vassdk-login"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fail---result(code!=1):"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz p2, :cond_5d

    .line 272
    invoke-interface {p2, v2}, Lcom/vas/vassdk/apiadapter/VasLoginListener;->loginFail(Ljava/lang/String;)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_77} :catch_78

    goto :goto_5d

    .line 276
    :catch_78
    move-exception v0

    .line 278
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    const-string v0, "vassdk-login"

    const-string v1, "fail---parse vassdk-login result error!"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "vassdk-login"

    const-string v1, "fail---parse vassdk-login result error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz p2, :cond_5d

    .line 284
    const-string v0, "parse vassdk-login result error!"

    invoke-interface {p2, v0}, Lcom/vas/vassdk/apiadapter/VasLoginListener;->loginFail(Ljava/lang/String;)V

    goto :goto_5d
.end method

.method private a(Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V
    .registers 9

    .prologue
    .line 372
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 373
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 377
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_41

    .line 380
    const-string v1, "vassdk-pay"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "success---result(status==0):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "oid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    if-eqz p4, :cond_40

    .line 383
    invoke-interface {p4, v0}, Lcom/vas/vassdk/apiadapter/VasPayListener;->onSuccess(Ljava/lang/String;)V

    .line 405
    :cond_40
    :goto_40
    return-void

    .line 386
    :cond_41
    const-string v0, "vassdk-pay"

    const-string v1, "fail---json data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz p4, :cond_40

    .line 388
    const-string v0, "fail---json data is null"

    invoke-interface {p4, v0}, Lcom/vas/vassdk/apiadapter/VasPayListener;->onFail(Ljava/lang/String;)V
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4f} :catch_50

    goto :goto_40

    .line 398
    :catch_50
    move-exception v0

    .line 400
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 401
    const-string v0, "vassdk-login"

    const-string v1, "fail---parse vassdk-pay result error!"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "vassdk-login"

    const-string v1, "fail---parse vassdk-pay result error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u62c9\u53d6\u652f\u4ed8\u9875\u9762\u5931\u8d25"

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/vas/vassdk/callback/VasPayCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 392
    :cond_76
    :try_start_76
    const-string v0, "vassdk-pay"

    const-string v1, "fail---result(status!=0)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz p4, :cond_40

    .line 394
    invoke-interface {p4, v2}, Lcom/vas/vassdk/apiadapter/VasPayListener;->onFail(Ljava/lang/String;)V
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_82} :catch_50

    goto :goto_40
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/vas/vassdk/model/VasModel;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lcom/vas/vassdk/model/VasModel;->a:Lcom/vas/vassdk/model/VasModel;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/vas/vassdk/model/VasModel;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/model/VasModel;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/vas/vassdk/model/VasModel;->a:Lcom/vas/vassdk/model/VasModel;

    .line 46
    :cond_b
    sget-object v0, Lcom/vas/vassdk/model/VasModel;->a:Lcom/vas/vassdk/model/VasModel;

    return-object v0
.end method


# virtual methods
.method public vasInitConfig(Lcom/vas/vassdk/apiadapter/VasInitListener;)V
    .registers 9

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {}, Lcom/vas/vassdk/util/VasSDKUtil;->getMD5RomdomStr()Ljava/lang/String;

    move-result-object v3

    .line 58
    const/4 v0, 0x3

    .line 61
    :try_start_19
    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_90

    move-result v0

    .line 67
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "PPLive_"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "###"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "41ff537415a19cad4096e2cd0390abeb"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    new-instance v4, Lcom/yolanda/nohttp/rest/StringRequest;

    const-string v5, "http://game.g.pptv.com/api/sdk/cgconf.php"

    .line 70
    sget-object v6, Lcom/yolanda/nohttp/RequestMethod;->GET:Lcom/yolanda/nohttp/RequestMethod;

    .line 69
    invoke-direct {v4, v5, v6}, Lcom/yolanda/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yolanda/nohttp/RequestMethod;)V

    .line 71
    const-string v5, "platform"

    invoke-interface {v4, v5, v0}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;I)V

    .line 72
    const-string v0, "gid"

    sget-object v5, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-interface {v4, v0, v5}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "time"

    invoke-interface {v4, v0, v2}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "token"

    invoke-interface {v4, v0, v3}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "sign"

    invoke-static {v1}, Lcom/vas/vassdk/util/VasMD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/vas/vassdk/http/VasHttpUtil;->getInstance()Lcom/vas/vassdk/http/VasHttpUtil;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/vas/vassdk/model/VasModel$1;

    invoke-direct {v2, p0, p1}, Lcom/vas/vassdk/model/VasModel$1;-><init>(Lcom/vas/vassdk/model/VasModel;Lcom/vas/vassdk/apiadapter/VasInitListener;)V

    invoke-virtual {v0, v1, v4, v2}, Lcom/vas/vassdk/http/VasHttpUtil;->add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V

    .line 117
    return-void

    .line 63
    :catch_90
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public vasLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V
    .registers 12

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    sget-object v2, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    const-string v3, "^*(s%_)%623kjh$()6Hk<%YL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/VasMD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    new-instance v2, Lcom/yolanda/nohttp/rest/StringRequest;

    const-string v3, "http://game.g.pptv.com/api/sdk/integration/get_user_info.php"

    sget-object v4, Lcom/yolanda/nohttp/RequestMethod;->GET:Lcom/yolanda/nohttp/RequestMethod;

    invoke-direct {v2, v3, v4}, Lcom/yolanda/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yolanda/nohttp/RequestMethod;)V

    .line 185
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 186
    const-string v4, "platform"

    sget-object v5, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v4, "subplatform"

    sget-object v5, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v4, "gid"

    sget-object v5, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v4, "userid"

    invoke-virtual {v3, v4, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v4, "username"

    invoke-virtual {v3, v4, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v4, "token"

    invoke-virtual {v3, v4, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "ext"

    invoke-virtual {v3, v4, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v4, "tm"

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v0, "sign"

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-interface {v2, v3}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/util/Map;)V

    .line 197
    invoke-static {}, Lcom/vas/vassdk/http/VasHttpUtil;->getInstance()Lcom/vas/vassdk/http/VasHttpUtil;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v3, Lcom/vas/vassdk/model/VasModel$2;

    invoke-direct {v3, p0, p5}, Lcom/vas/vassdk/model/VasModel$2;-><init>(Lcom/vas/vassdk/model/VasModel;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vas/vassdk/http/VasHttpUtil;->add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V

    .line 240
    return-void
.end method

.method public vasPay(Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V
    .registers 12

    .prologue
    .line 300
    new-instance v0, Lcom/yolanda/nohttp/rest/StringRequest;

    const-string v1, "http://game.g.pptv.com/api/sdk/order/index.php"

    sget-object v2, Lcom/yolanda/nohttp/RequestMethod;->GET:Lcom/yolanda/nohttp/RequestMethod;

    invoke-direct {v0, v1, v2}, Lcom/yolanda/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yolanda/nohttp/RequestMethod;)V

    .line 301
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 302
    const-string v2, "username"

    invoke-virtual {v1, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v2, "open_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "amount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vas/vassdk/bean/VasOrderInfo;->getAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v2, "ext"

    invoke-virtual {p3}, Lcom/vas/vassdk/bean/VasOrderInfo;->getExtrasParams()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "trade_no"

    invoke-virtual {p3}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v2, "gid"

    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v2, "cid"

    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_CHANNELID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v2, "ccid"

    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBCHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v2, "sid"

    invoke-virtual {p4}, Lcom/vas/vassdk/bean/VasRoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v2, "roid"

    invoke-virtual {p4}, Lcom/vas/vassdk/bean/VasRoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v2, "platform"

    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v2, "sub_platform"

    sget-object v3, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v2, Lcom/vas/vassdk/util/VasMD5Util;

    invoke-direct {v2}, Lcom/vas/vassdk/util/VasMD5Util;-><init>()V

    const-string v3, "2aaa08de964854800c204e400006f45b"

    invoke-virtual {v2, v1, v3}, Lcom/vas/vassdk/util/VasMD5Util;->MD5EncryptString(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-interface {v0, v1}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/util/Map;)V

    .line 317
    const-string v1, "sign"

    invoke-interface {v0, v1, v2}, Lcom/yolanda/nohttp/rest/Request;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/vas/vassdk/http/VasHttpUtil;->getInstance()Lcom/vas/vassdk/http/VasHttpUtil;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/vas/vassdk/model/VasModel$3;

    invoke-direct {v3, p0, p5, p3, p4}, Lcom/vas/vassdk/model/VasModel$3;-><init>(Lcom/vas/vassdk/model/VasModel;Lcom/vas/vassdk/apiadapter/VasPayListener;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/vas/vassdk/http/VasHttpUtil;->add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V

    .line 366
    return-void
.end method
