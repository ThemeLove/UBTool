.class public Lcom/vas/vassdk/plugin/VasUser;
.super Ljava/lang/Object;
.source "VasUser.java"


# static fields
.field private static volatile a:Lcom/vas/vassdk/plugin/VasUser;


# instance fields
.field private b:Lcom/vas/vassdk/plugin/IUserPlugin;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/vas/vassdk/plugin/VasUser;)Lcom/vas/vassdk/plugin/IUserPlugin;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    return-object v0
.end method

.method public static getInstance()Lcom/vas/vassdk/plugin/VasUser;
    .registers 2

    .prologue
    .line 25
    sget-object v0, Lcom/vas/vassdk/plugin/VasUser;->a:Lcom/vas/vassdk/plugin/VasUser;

    if-nez v0, :cond_13

    .line 27
    const-class v1, Lcom/vas/vassdk/plugin/VasUser;

    monitor-enter v1

    .line 29
    :try_start_7
    sget-object v0, Lcom/vas/vassdk/plugin/VasUser;->a:Lcom/vas/vassdk/plugin/VasUser;

    if-nez v0, :cond_12

    .line 31
    new-instance v0, Lcom/vas/vassdk/plugin/VasUser;

    invoke-direct {v0}, Lcom/vas/vassdk/plugin/VasUser;-><init>()V

    sput-object v0, Lcom/vas/vassdk/plugin/VasUser;->a:Lcom/vas/vassdk/plugin/VasUser;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 35
    :cond_13
    sget-object v0, Lcom/vas/vassdk/plugin/VasUser;->a:Lcom/vas/vassdk/plugin/VasUser;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    if-nez v0, :cond_b

    .line 95
    const-string v0, "no instance for userPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/IUserPlugin;->getUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;

    move-result-object v0

    goto :goto_a
.end method

.method public init()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vas/vassdk/factory/VasFacktory;->newPlugin(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vas/vassdk/plugin/IUserPlugin;

    iput-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    .line 44
    const-string v0, "VasUser init"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public login()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    if-eqz v0, :cond_25

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mUserPlugin = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasUser$1;

    invoke-direct {v1, p0}, Lcom/vas/vassdk/plugin/VasUser$1;-><init>(Lcom/vas/vassdk/plugin/VasUser;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 68
    :goto_24
    return-void

    .line 65
    :cond_25
    const-string v0, "no instance for userPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 66
    const-string v0, "VasSDK"

    const-string v1, "no instance for userPlugin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public logout()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    if-eqz v0, :cond_11

    .line 74
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasUser$2;

    invoke-direct {v1, p0}, Lcom/vas/vassdk/plugin/VasUser$2;-><init>(Lcom/vas/vassdk/plugin/VasUser;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 89
    :goto_10
    return-void

    .line 87
    :cond_11
    const-string v0, "no instance for userPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    if-eqz v0, :cond_11

    .line 126
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasUser$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/vas/vassdk/plugin/VasUser$4;-><init>(Lcom/vas/vassdk/plugin/VasUser;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 141
    :goto_10
    return-void

    .line 139
    :cond_11
    const-string v0, "no instance for userPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser;->b:Lcom/vas/vassdk/plugin/IUserPlugin;

    if-eqz v0, :cond_11

    .line 105
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    new-instance v1, Lcom/vas/vassdk/plugin/VasUser$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vas/vassdk/plugin/VasUser$3;-><init>(Lcom/vas/vassdk/plugin/VasUser;Lcom/vas/vassdk/bean/VasRoleInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/vas/vassdk/VasSDK;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 120
    :goto_10
    return-void

    .line 118
    :cond_11
    const-string v0, "no instance for userPlugin"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    goto :goto_10
.end method
