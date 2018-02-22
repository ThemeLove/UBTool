.class public Lcom/vas/xiantu2/plugin/XianTu2UserPlugin;
.super Ljava/lang/Object;
.source "XianTu2UserPlugin.java"

# interfaces
.implements Lcom/vas/vassdk/plugin/IUserPlugin;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/xiantu2/XianTu2SDK;->init()V

    .line 20
    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public login()V
    .registers 2

    .prologue
    .line 24
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/xiantu2/XianTu2SDK;->login()V

    .line 25
    return-void
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 29
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/xiantu2/XianTu2SDK;->logout()V

    .line 30
    return-void
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
    .registers 4
    .param p1, "vasRoleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;
    .param p2, "roleType"    # Lcom/vas/vassdk/bean/RoleType;

    .prologue
    .line 44
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vas/xiantu2/XianTu2SDK;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V

    .line 45
    return-void
.end method

.method public setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
    .registers 4
    .param p1, "vasRoleInfo"    # Lcom/vas/vassdk/bean/VasRoleInfo;
    .param p2, "isCreateRole"    # Z

    .prologue
    .line 39
    invoke-static {}, Lcom/vas/xiantu2/XianTu2SDK;->getInstance()Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vas/xiantu2/XianTu2SDK;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V

    .line 40
    return-void
.end method
