.class public Lcom/vas/xiantu2/plugin/XianTu2SettingPlugin;
.super Ljava/lang/Object;
.source "XianTu2SettingPlugin.java"

# interfaces
.implements Lcom/vas/vassdk/plugin/ISettingPlugin;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vas/xiantu2/plugin/XianTu2SettingPlugin;->mActivity:Landroid/app/Activity;

    .line 17
    return-void
.end method


# virtual methods
.method public callFunction(I)Ljava/lang/String;
    .registers 3
    .param p1, "paramInt"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public exit()V
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/xiantu2/XianTu2SDK;->exit()V

    .line 37
    return-void
.end method

.method public getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubPlatformId()I
    .registers 4

    .prologue
    .line 41
    const/4 v1, -0x1

    .line 43
    .local v1, "subPlatformId":I
    :try_start_1
    sget-object v2, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 47
    :goto_7
    return v1

    .line 44
    :catch_8
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_7
.end method

.method public isFunctionSupported(I)Z
    .registers 3
    .param p1, "paramInt"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isSDKShowExitDialog()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "debug"    # Z

    .prologue
    .line 22
    return-void
.end method

.method public setIsLandScape(Z)V
    .registers 2
    .param p1, "isLandScape"    # Z

    .prologue
    .line 27
    return-void
.end method

.method public setShowExitDialog(Z)V
    .registers 2
    .param p1, "showExitDialog"    # Z

    .prologue
    .line 32
    return-void
.end method
