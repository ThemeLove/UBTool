.class public Lcom/vas/xiantu2/XianTu2SDK;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$vas$vassdk$bean$RoleType:[I

.field private static instance:Lcom/vas/xiantu2/XianTu2SDK;


# instance fields
.field announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

.field private mAccount:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field mExitObsv:Lcom/mchsdk/open/IGPExitObsv;

.field private mUid:Ljava/lang/String;

.field private mXianTu2Uid:Ljava/lang/String;

.field private mXianTu2_ChannelId:Ljava/lang/String;

.field private mXianTu2_ChannelName:Ljava/lang/String;

.field private mXianTu2_GameAppId:Ljava/lang/String;

.field private mXianTu2_GameId:Ljava/lang/String;

.field private mXianTu2_GameName:Ljava/lang/String;

.field private mXianTu2_PayRate:Ljava/lang/String;

.field private mXianTu2_SDKAddress:Ljava/lang/String;

.field private mXianTu2_SDKSecretKey:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$vas$vassdk$bean$RoleType()[I
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcom/vas/xiantu2/XianTu2SDK;->$SWITCH_TABLE$com$vas$vassdk$bean$RoleType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/vas/vassdk/bean/RoleType;->values()[Lcom/vas/vassdk/bean/RoleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/vas/vassdk/bean/RoleType;->CREATEROLE:Lcom/vas/vassdk/bean/RoleType;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/RoleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/vas/vassdk/bean/RoleType;->ENTERGAME:Lcom/vas/vassdk/bean/RoleType;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/RoleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/vas/vassdk/bean/RoleType;->LEVELUP:Lcom/vas/vassdk/bean/RoleType;

    invoke-virtual {v1}, Lcom/vas/vassdk/bean/RoleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/vas/xiantu2/XianTu2SDK;->$SWITCH_TABLE$com$vas$vassdk$bean$RoleType:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/vas/xiantu2/XianTu2SDK$1;

    invoke-direct {v0, p0}, Lcom/vas/xiantu2/XianTu2SDK$1;-><init>(Lcom/vas/xiantu2/XianTu2SDK;)V

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mExitObsv:Lcom/mchsdk/open/IGPExitObsv;

    .line 330
    new-instance v0, Lcom/vas/xiantu2/XianTu2SDK$2;

    invoke-direct {v0, p0}, Lcom/vas/xiantu2/XianTu2SDK$2;-><init>(Lcom/vas/xiantu2/XianTu2SDK;)V

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mAccount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_PayRate:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/vas/xiantu2/XianTu2SDK;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/vas/xiantu2/XianTu2SDK;->instance:Lcom/vas/xiantu2/XianTu2SDK;

    if-nez v0, :cond_f

    .line 57
    sget-object v0, Lcom/vas/xiantu2/XianTu2SDK;->instance:Lcom/vas/xiantu2/XianTu2SDK;

    if-nez v0, :cond_f

    .line 58
    new-instance v0, Lcom/vas/xiantu2/XianTu2SDK;

    invoke-direct {v0}, Lcom/vas/xiantu2/XianTu2SDK;-><init>()V

    sput-object v0, Lcom/vas/xiantu2/XianTu2SDK;->instance:Lcom/vas/xiantu2/XianTu2SDK;

    .line 61
    :cond_f
    sget-object v0, Lcom/vas/xiantu2/XianTu2SDK;->instance:Lcom/vas/xiantu2/XianTu2SDK;

    return-object v0
.end method


# virtual methods
.method public exit()V
    .registers 4

    .prologue
    .line 192
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK;->mExitObsv:Lcom/mchsdk/open/IGPExitObsv;

    invoke-virtual {v0, v1, v2}, Lcom/mchsdk/open/MCApiFactory;->exitDialog(Landroid/content/Context;Lcom/mchsdk/open/IGPExitObsv;)V

    .line 193
    return-void
.end method

.method public init()V
    .registers 9

    .prologue
    .line 101
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_PayRate"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_PayRate:Ljava/lang/String;

    .line 103
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_ChannelId"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelId:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_ChannelName"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelName:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_GameId"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameId:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_GameName"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameName:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_GameAppId"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameAppId:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_SDKSecretKey"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_SDKSecretKey:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/vas/vassdk/VasSDKConfig;->getInstance()Lcom/vas/vassdk/VasSDKConfig;

    move-result-object v0

    const-string v1, "XianTu2_SDKAddress"

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDKConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_SDKAddress:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelId:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelName:Ljava/lang/String;

    .line 114
    iget-object v3, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameId:Ljava/lang/String;

    .line 115
    iget-object v4, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameName:Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameAppId:Ljava/lang/String;

    .line 117
    iget-object v6, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_SDKSecretKey:Ljava/lang/String;

    .line 118
    iget-object v7, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_SDKAddress:Ljava/lang/String;

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/mchsdk/open/MCApiFactory;->setParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/vas/xiantu2/XianTu2SDK$3;

    invoke-direct {v2, p0}, Lcom/vas/xiantu2/XianTu2SDK$3;-><init>(Lcom/vas/xiantu2/XianTu2SDK;)V

    .line 133
    const/4 v3, 0x1

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Lcom/mchsdk/open/MCApiFactory;->init(Landroid/content/Context;Lcom/mchsdk/open/IGPSDKInitObsv;Z)V

    .line 136
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mExitObsv:Lcom/mchsdk/open/IGPExitObsv;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->initExitFromPersonInfoParams(Lcom/mchsdk/open/IGPExitObsv;)V

    .line 138
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/xiantu2/XianTu2SDK$4;

    invoke-direct {v1, p0}, Lcom/vas/xiantu2/XianTu2SDK$4;-><init>(Lcom/vas/xiantu2/XianTu2SDK;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->setActivityListener(Lcom/vas/vassdk/apiadapter/IActivityAdapter;)V

    .line 179
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasInitCallback()Lcom/vas/vassdk/callback/VasInitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vas/vassdk/callback/VasInitCallback;->onSuccess()V

    .line 180
    return-void
.end method

.method public login()V
    .registers 4

    .prologue
    .line 196
    sget-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessLogin:Z

    if-nez v0, :cond_11

    .line 197
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6e20\u9053\u7981\u6b62\u767b\u5f55\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 238
    :goto_10
    return-void

    .line 200
    :cond_11
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/vas/xiantu2/XianTu2SDK$5;

    invoke-direct {v2, p0}, Lcom/vas/xiantu2/XianTu2SDK$5;-><init>(Lcom/vas/xiantu2/XianTu2SDK;)V

    invoke-virtual {v0, v1, v2}, Lcom/mchsdk/open/MCApiFactory;->startlogin(Landroid/content/Context;Lcom/mchsdk/open/IGPUserObsv;)V

    goto :goto_10
.end method

.method public logout()V
    .registers 3

    .prologue
    .line 183
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->loginout(Landroid/content/Context;)V

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasLogoutCallback()Lcom/vas/vassdk/callback/VasLogoutCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vas/vassdk/callback/VasLogoutCallback;->onSuccess()V

    .line 187
    return-void
.end method

.method public pay(Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;)V
    .registers 9
    .param p1, "vasOrderInfo"    # Lcom/vas/vassdk/bean/VasOrderInfo;
    .param p2, "vasRoleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;

    .prologue
    .line 241
    sget-boolean v0, Lcom/vas/vassdk/util/VasConstant;->isAsscessPay:Z

    if-nez v0, :cond_11

    .line 242
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    const-string v1, "\u6e20\u9053\u7981\u6b62\u767b\u5f55!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    :goto_10
    return-void

    .line 246
    :cond_11
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 247
    invoke-virtual {p0}, Lcom/vas/xiantu2/XianTu2SDK;->login()V

    goto :goto_10

    .line 251
    :cond_1d
    if-eqz p1, :cond_21

    if-nez p2, :cond_35

    .line 252
    :cond_21
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasPayCallback()Lcom/vas/vassdk/callback/VasPayCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasOrderInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8bf7\u67e5\u770b\u652f\u4ed8\u53c2\u6570..."

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/vas/vassdk/callback/VasPayCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 256
    :cond_35
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->getInstance(Landroid/app/Activity;)Lcom/vas/vassdk/model/VasModel;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK;->mAccount:Ljava/lang/String;

    new-instance v5, Lcom/vas/xiantu2/XianTu2SDK$6;

    invoke-direct {v5, p0, p1}, Lcom/vas/xiantu2/XianTu2SDK$6;-><init>(Lcom/vas/xiantu2/XianTu2SDK;Lcom/vas/vassdk/bean/VasOrderInfo;)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/vas/vassdk/model/VasModel;->vasPay(Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/bean/VasOrderInfo;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/apiadapter/VasPayListener;)V

    goto :goto_10
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
    .registers 9
    .param p1, "vasRoleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;
    .param p2, "roleType"    # Lcom/vas/vassdk/bean/RoleType;

    .prologue
    .line 308
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->$SWITCH_TABLE$com$vas$vassdk$bean$RoleType()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/vas/vassdk/bean/RoleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 325
    :goto_d
    :pswitch_d
    return-void

    .line 310
    :pswitch_e
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    const-string v1, "504"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasRoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasRoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameId:Ljava/lang/String;

    iget-object v5, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelId:Ljava/lang/String;

    .line 312
    invoke-virtual/range {v0 .. v5}, Lcom/mchsdk/open/MCApiFactory;->uploadRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->initAnnounceTimeCallBack(Lcom/mchsdk/open/AnnounceTimeCallBack;)V

    goto :goto_d

    .line 308
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
    .registers 9
    .param p1, "vasRoleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;
    .param p2, "isCreateRole"    # Z

    .prologue
    .line 298
    if-nez p2, :cond_27

    .line 299
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;

    const-string v1, "504"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VasStatisticUtil;->sendStatistic(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasRoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasRoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_GameId:Ljava/lang/String;

    iget-object v5, p0, Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2_ChannelId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/mchsdk/open/MCApiFactory;->uploadRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK;->announceTimeCallBack:Lcom/mchsdk/open/AnnounceTimeCallBack;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->initAnnounceTimeCallBack(Lcom/mchsdk/open/AnnounceTimeCallBack;)V

    .line 305
    :cond_27
    return-void
.end method
