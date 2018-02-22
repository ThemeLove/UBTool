.class public interface abstract Lcom/vas/vassdk/plugin/IUserPlugin;
.super Ljava/lang/Object;
.source "IUserPlugin.java"


# static fields
.field public static final PLUGIN_TYPE:I = 0x1


# virtual methods
.method public abstract getUserInfo()Lcom/vas/vassdk/bean/VasUserInfo;
.end method

.method public abstract login()V
.end method

.method public abstract logout()V
.end method

.method public abstract setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
.end method

.method public abstract setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
.end method
