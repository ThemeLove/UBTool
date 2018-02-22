.class public Lcom/vas/vassdk/VasSDK;
.super Ljava/lang/Object;
.source "VasSDK.java"


# static fields
.field private static b:Lcom/vas/vassdk/VasSDK;


# instance fields
.field private a:Landroid/app/Activity;

.field private c:Landroid/os/Handler;

.field private d:Lcom/vas/vassdk/callback/VasInitCallback;

.field private e:Lcom/vas/vassdk/callback/VasLoginCallback;

.field private f:Lcom/vas/vassdk/callback/VasLogoutCallback;

.field private g:Lcom/vas/vassdk/callback/VasPayCallback;

.field private h:Lcom/vas/vassdk/callback/VasExitCallback;

.field private i:Lcom/vas/vassdk/callback/VasSwitchAccountCallback;

.field private j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDK;->c:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/VasSDK;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 556
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9000\u51fa\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u6e38\u620f\u4e48?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 557
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/vas/vassdk/VasSDK$8;

    invoke-direct {v2, p0}, Lcom/vas/vassdk/VasSDK$8;-><init>(Lcom/vas/vassdk/VasSDK;)V

    .line 556
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 567
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/vas/vassdk/VasSDK$9;

    invoke-direct {v2, p0}, Lcom/vas/vassdk/VasSDK$9;-><init>(Lcom/vas/vassdk/VasSDK;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 577
    return-void
.end method

.method public static getInstance()Lcom/vas/vassdk/VasSDK;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/vas/vassdk/VasSDK;->b:Lcom/vas/vassdk/VasSDK;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Lcom/vas/vassdk/VasSDK;

    invoke-direct {v0}, Lcom/vas/vassdk/VasSDK;-><init>()V

    sput-object v0, Lcom/vas/vassdk/VasSDK;->b:Lcom/vas/vassdk/VasSDK;

    .line 66
    :cond_b
    sget-object v0, Lcom/vas/vassdk/VasSDK;->b:Lcom/vas/vassdk/VasSDK;

    return-object v0
.end method


# virtual methods
.method public callFunction(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 500
    const-string v0, "callFunction"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->callFunction(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 423
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasSetting;->exit()V

    .line 424
    const-string v0, "exit"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 476
    const-string v0, "getExtrasConfig"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformId()I
    .registers 3

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channelType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 449
    const/4 v0, -0x1

    .line 452
    :try_start_15
    sget-object v1, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v0

    .line 458
    :goto_1b
    return v0

    .line 454
    :catch_1c
    move-exception v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public getSubPlatformId()I
    .registers 3

    .prologue
    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subPlatformId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vas/vassdk/plugin/VasSetting;->getSubPlatformId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasSetting;->getSubPlatformId()I

    move-result v0

    return v0
.end method

.method public getVasExitCallback()Lcom/vas/vassdk/callback/VasExitCallback;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->h:Lcom/vas/vassdk/callback/VasExitCallback;

    if-nez v0, :cond_b

    .line 272
    new-instance v0, Lcom/vas/vassdk/VasSDK$6;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$6;-><init>(Lcom/vas/vassdk/VasSDK;)V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDK;->h:Lcom/vas/vassdk/callback/VasExitCallback;

    .line 286
    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->h:Lcom/vas/vassdk/callback/VasExitCallback;

    return-object v0
.end method

.method public getVasInitCallback()Lcom/vas/vassdk/callback/VasInitCallback;
    .registers 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->d:Lcom/vas/vassdk/callback/VasInitCallback;

    if-nez v0, :cond_11

    .line 172
    const-string v0, "VasSDK"

    const-string v1, "mVasInitCallback == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/vas/vassdk/VasSDK$2;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$2;-><init>(Lcom/vas/vassdk/VasSDK;)V

    .line 190
    :goto_10
    return-object v0

    .line 189
    :cond_11
    const-string v0, "VasSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mVasInitCallback == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vas/vassdk/VasSDK;->d:Lcom/vas/vassdk/callback/VasInitCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->d:Lcom/vas/vassdk/callback/VasInitCallback;

    goto :goto_10
.end method

.method public getVasLoginCallback()Lcom/vas/vassdk/callback/VasLoginCallback;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->e:Lcom/vas/vassdk/callback/VasLoginCallback;

    if-nez v0, :cond_a

    .line 197
    new-instance v0, Lcom/vas/vassdk/VasSDK$3;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$3;-><init>(Lcom/vas/vassdk/VasSDK;)V

    .line 218
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->e:Lcom/vas/vassdk/callback/VasLoginCallback;

    goto :goto_9
.end method

.method public getVasLogoutCallback()Lcom/vas/vassdk/callback/VasLogoutCallback;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->f:Lcom/vas/vassdk/callback/VasLogoutCallback;

    if-nez v0, :cond_b

    .line 225
    new-instance v0, Lcom/vas/vassdk/VasSDK$4;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$4;-><init>(Lcom/vas/vassdk/VasSDK;)V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDK;->f:Lcom/vas/vassdk/callback/VasLogoutCallback;

    .line 239
    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->f:Lcom/vas/vassdk/callback/VasLogoutCallback;

    return-object v0
.end method

.method public getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->g:Lcom/vas/vassdk/callback/VasPayCallback;

    if-nez v0, :cond_b

    .line 246
    new-instance v0, Lcom/vas/vassdk/VasSDK$5;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$5;-><init>(Lcom/vas/vassdk/VasSDK;)V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDK;->g:Lcom/vas/vassdk/callback/VasPayCallback;

    .line 265
    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->g:Lcom/vas/vassdk/callback/VasPayCallback;

    return-object v0
.end method

.method public getVasSwitchAccountCallback()Lcom/vas/vassdk/callback/VasSwitchAccountCallback;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->i:Lcom/vas/vassdk/callback/VasSwitchAccountCallback;

    if-nez v0, :cond_b

    .line 293
    new-instance v0, Lcom/vas/vassdk/VasSDK$7;

    invoke-direct {v0, p0}, Lcom/vas/vassdk/VasSDK$7;-><init>(Lcom/vas/vassdk/VasSDK;)V

    iput-object v0, p0, Lcom/vas/vassdk/VasSDK;->i:Lcom/vas/vassdk/callback/VasSwitchAccountCallback;

    .line 312
    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->i:Lcom/vas/vassdk/callback/VasSwitchAccountCallback;

    return-object v0
.end method

.method public getVasUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;
    .registers 2

    .prologue
    .line 550
    const-string v0, "getVasUserInfo"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasUser;->getUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    .line 96
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasUser;->init()V

    .line 97
    invoke-static {}, Lcom/vas/vassdk/plugin/VasPay;->getInstance()Lcom/vas/vassdk/plugin/VasPay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasPay;->init()V

    .line 98
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasSetting;->init()V

    .line 99
    const-string v0, "init"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Lcom/vas/vassdk/util/VasSDKUtil;->isFirstActive(Landroid/app/Activity;)Z

    move-result v0

    .line 101
    if-eqz v0, :cond_36

    .line 103
    const-string v0, ""

    const-string v1, "501"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_29
    invoke-static {p1}, Lcom/vas/vassdk/model/VasModel;->getInstance(Landroid/app/Activity;)Lcom/vas/vassdk/model/VasModel;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/VasSDK$1;

    invoke-direct {v1, p0}, Lcom/vas/vassdk/VasSDK$1;-><init>(Lcom/vas/vassdk/VasSDK;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/model/VasModel;->vasInitConfig(Lcom/vas/vassdk/apiadapter/VasInitListener;)V

    .line 125
    return-void

    .line 107
    :cond_36
    const-string v0, ""

    const-string v1, "502"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public initAllConfigs(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 90
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/VasSDKConfig;->loadConfig(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public isFunctionSupported(I)Z
    .registers 3

    .prologue
    .line 488
    const-string v0, "isFunctionSupported"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->isFunctionSupported(I)Z

    move-result v0

    return v0
.end method

.method public isSDKShowExitDialog()Z
    .registers 2

    .prologue
    .line 506
    const-string v0, "isSDKShowExitDialog"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasSetting;->isSDKShowExitDialog()Z

    move-result v0

    return v0
.end method

.method public login()V
    .registers 4

    .prologue
    .line 512
    const-string v0, "vas login"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 513
    sget-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessLogin:Z

    if-nez v0, :cond_16

    .line 514
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    const-string v1, "\u6e20\u9053\u7981\u6b62\u767b\u5f55\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 518
    :goto_15
    return-void

    .line 517
    :cond_16
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasUser;->login()V

    goto :goto_15
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 522
    const-string v0, "vas logout"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/plugin/VasUser;->logout()V

    .line 524
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onActivityResult(IILandroid/content/Intent;)V

    .line 386
    :cond_9
    const-string v0, "onActivityResult"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    .line 412
    const/4 v0, 0x1

    .line 413
    iget-object v1, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v1, :cond_b

    .line 415
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onBackPressed()Z

    move-result v0

    .line 417
    :cond_b
    const-string v1, "onBackPressed"

    invoke-static {v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 418
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 401
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 403
    :cond_9
    const-string v0, "onConfigurationChanged"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 319
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onCreate(Landroid/os/Bundle;)V

    .line 321
    :cond_9
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onDestroy()V

    .line 377
    :cond_9
    const-string v0, "onDestory"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 393
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onNewIntent(Landroid/content/Intent;)V

    .line 395
    :cond_9
    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 328
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onPause()V

    .line 330
    :cond_9
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public onRestart()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onRestart()V

    .line 359
    :cond_9
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_10

    .line 337
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onResume()V

    .line 338
    const-string v0, "xxxx"

    const-string v1, "vassdk onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_10
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 341
    const-string v0, "xxxx"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onStart()V

    .line 368
    :cond_9
    const-string v0, "onStart"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    invoke-interface {v0}, Lcom/vas/vassdk/apiadapter/IActivityAdapter;->onStop()V

    .line 350
    :cond_9
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 6

    .prologue
    .line 528
    const-string v0, "vas pay"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 529
    sget-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessPay:Z

    if-nez v0, :cond_16

    .line 530
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    const-string v1, "\u6e20\u9053\u7981\u6b62\u652f\u4ed8\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    :goto_15
    return-void

    .line 533
    :cond_16
    invoke-static {}, Lcom/vas/vassdk/plugin/VasPay;->getInstance()Lcom/vas/vassdk/plugin/VasPay;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vas/vassdk/plugin/VasPay;->pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V

    goto :goto_15
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->c:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    :cond_9
    :goto_9
    return-void

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/vas/vassdk/VasSDK;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_9
.end method

.method public setActivityListener(Lcom/vas/vassdk/apiadapter/IActivityAdapter;)V
    .registers 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->j:Lcom/vas/vassdk/apiadapter/IActivityAdapter;

    .line 135
    const-string v0, "setActivityListener"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 3

    .prologue
    .line 429
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/VasSDKConfig;->setDebug(Z)V

    .line 430
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->setDebug(Z)V

    .line 431
    return-void
.end method

.method public setGameRoleInfo(Landroid/app/Activity;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
    .registers 5

    .prologue
    .line 544
    const-string v0, "vas setGameRoleInfo"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/vas/vassdk/plugin/VasUser;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V

    .line 546
    return-void
.end method

.method public setIsLandScape(Z)V
    .registers 3

    .prologue
    .line 435
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->setIsLandScape(Z)V

    .line 436
    const-string v0, "setIsLandScape"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setRoleInfo(Landroid/app/Activity;Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
    .registers 5

    .prologue
    .line 538
    const-string v0, "vas setRoleInfo"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/vas/vassdk/plugin/VasUser;->getInstance()Lcom/vas/vassdk/plugin/VasUser;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/vas/vassdk/plugin/VasUser;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V

    .line 540
    return-void
.end method

.method public setShowExitDialog(Z)V
    .registers 3

    .prologue
    .line 441
    invoke-static {}, Lcom/vas/vassdk/plugin/VasSetting;->getInstance()Lcom/vas/vassdk/plugin/VasSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vas/vassdk/plugin/VasSetting;->setShowExitDialog(Z)V

    .line 442
    const-string v0, "setShowExitDialog"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public setVasExitCallback(Lcom/vas/vassdk/callback/VasExitCallback;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->h:Lcom/vas/vassdk/callback/VasExitCallback;

    .line 166
    return-void
.end method

.method public setVasInitCallback(Lcom/vas/vassdk/callback/VasInitCallback;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->d:Lcom/vas/vassdk/callback/VasInitCallback;

    .line 141
    return-void
.end method

.method public setVasLoginCallback(Lcom/vas/vassdk/callback/VasLoginCallback;)V
    .registers 2

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->e:Lcom/vas/vassdk/callback/VasLoginCallback;

    .line 146
    return-void
.end method

.method public setVasLogoutCallback(Lcom/vas/vassdk/callback/VasLogoutCallback;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->f:Lcom/vas/vassdk/callback/VasLogoutCallback;

    .line 151
    return-void
.end method

.method public setVasPayCallback(Lcom/vas/vassdk/callback/VasPayCallback;)V
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->g:Lcom/vas/vassdk/callback/VasPayCallback;

    .line 156
    return-void
.end method

.method public setVasSwitchAccountCallback(Lcom/vas/vassdk/callback/VasSwitchAccountCallback;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vas/vassdk/VasSDK;->i:Lcom/vas/vassdk/callback/VasSwitchAccountCallback;

    .line 161
    return-void
.end method
