.class public interface abstract Lcom/vas/vassdk/plugin/ISettingPlugin;
.super Ljava/lang/Object;
.source "ISettingPlugin.java"


# static fields
.field public static final PLUGIN_TYPE:I = 0x3


# virtual methods
.method public abstract callFunction(I)Ljava/lang/String;
.end method

.method public abstract exit()V
.end method

.method public abstract getExtrasConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSubPlatformId()I
.end method

.method public abstract isFunctionSupported(I)Z
.end method

.method public abstract isSDKShowExitDialog()Z
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract setIsLandScape(Z)V
.end method

.method public abstract setShowExitDialog(Z)V
.end method
