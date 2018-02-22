.class public Lcom/vas/vassdk/plugin/VasSetting;
.super Ljava/lang/Object;
.source "VasSetting.java"


# static fields
.field private static a:Lcom/vas/vassdk/plugin/VasSetting;


# instance fields
.field private b:Lcom/vas/vassdk/plugin/ISettingPlugin;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/plugin/VasSetting;)Lcom/vas/vassdk/plugin/ISettingPlugin;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    return-object v0
.end method

.method public static getInstance()Lcom/vas/vassdk/plugin/VasSetting;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/vas/vassdk/plugin/VasSetting;->a:Lcom/vas/vassdk/plugin/VasSetting;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lcom/vas/vassdk/plugin/VasSetting;

    invoke-direct {v0}, Lcom/vas/vassdk/plugin/VasSetting;-><init>()V

    sput-object v0, Lcom/vas/vassdk/plugin/VasSetting;->a:Lcom/vas/vassdk/plugin/VasSetting;

    .line 22
    :cond_b
    sget-object v0, Lcom/vas/vassdk/plugin/VasSetting;->a:Lcom/vas/vassdk/plugin/VasSetting;

    return-object v0
.end method


# virtual methods
.method public callFunction(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-nez v0, :cond_c

    .line 152
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 153
    const-string v0, ""

    .line 155
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/plugin/ISettingPlugin;->callFunction(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-eqz v0, :cond_11

    .line 100
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasSetting$4;

    invoke-direct {v1, p0}, Lcom/vas/vassdk/plugin/VasSetting$4;-><init>(Lcom/vas/vassdk/plugin/VasSetting;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 115
    :goto_10
    return-void

    .line 112
    :cond_11
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 113
    const-string v0, "VasSDK"

    const-string v1, "no instance for settingplugin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-nez v0, :cond_c

    .line 132
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 133
    const-string v0, ""

    .line 135
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/plugin/ISettingPlugin;->getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getSubPlatformId()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-nez v0, :cond_b

    .line 121
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 122
    const/4 v0, -0x1

    .line 125
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/ISettingPlugin;->getSubPlatformId()I

    move-result v0

    goto :goto_a
.end method

.method public init()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vas/vassdk/factory/VasFacktory;->newPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vas/vassdk/plugin/ISettingPlugin;

    iput-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    .line 33
    const-string v0, "vas settingplugin init"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public isFunctionSupported(I)Z
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-nez v0, :cond_b

    .line 142
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    invoke-interface {v0, p1}, Lcom/vas/vassdk/plugin/ISettingPlugin;->isFunctionSupported(I)Z

    move-result v0

    goto :goto_a
.end method

.method public isSDKShowExitDialog()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-nez v0, :cond_b

    .line 162
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    .line 165
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/ISettingPlugin;->isSDKShowExitDialog()Z

    move-result v0

    goto :goto_a
.end method

.method public setDebug(Z)V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-eqz v0, :cond_11

    .line 40
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasSetting$1;

    invoke-direct {v1, p0, p1}, Lcom/vas/vassdk/plugin/VasSetting$1;-><init>(Lcom/vas/vassdk/plugin/VasSetting;Z)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 54
    :goto_10
    return-void

    .line 52
    :cond_11
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setIsLandScape(Z)V
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-eqz v0, :cond_11

    .line 60
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasSetting$2;

    invoke-direct {v1, p0, p1}, Lcom/vas/vassdk/plugin/VasSetting$2;-><init>(Lcom/vas/vassdk/plugin/VasSetting;Z)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 74
    :goto_10
    return-void

    .line 72
    :cond_11
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setShowExitDialog(Z)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting;->b:Lcom/vas/vassdk/plugin/ISettingPlugin;

    if-eqz v0, :cond_11

    .line 80
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasSetting$3;

    invoke-direct {v1, p0, p1}, Lcom/vas/vassdk/plugin/VasSetting$3;-><init>(Lcom/vas/vassdk/plugin/VasSetting;Z)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 94
    :goto_10
    return-void

    .line 92
    :cond_11
    const-string v0, "no instance for settingplugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method
