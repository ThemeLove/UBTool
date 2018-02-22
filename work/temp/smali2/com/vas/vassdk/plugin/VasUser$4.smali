.class Lcom/vas/vassdk/plugin/VasUser$4;
.super Ljava/lang/Object;
.source "VasUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasUser;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasUser;

.field private final synthetic b:Lcom/vas/vassdk/bean/VasRoleInfo;

.field private final synthetic c:Lcom/vas/vassdk/bean/RoleType;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasUser;Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasUser$4;->a:Lcom/vas/vassdk/plugin/VasUser;

    iput-object p2, p0, Lcom/vas/vassdk/plugin/VasUser$4;->b:Lcom/vas/vassdk/bean/VasRoleInfo;

    iput-object p3, p0, Lcom/vas/vassdk/plugin/VasUser$4;->c:Lcom/vas/vassdk/bean/RoleType;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser$4;->a:Lcom/vas/vassdk/plugin/VasUser;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasUser;->a(Lcom/vas/vassdk/plugin/VasUser;)Lcom/vas/vassdk/plugin/IUserPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/vassdk/plugin/VasUser$4;->b:Lcom/vas/vassdk/bean/VasRoleInfo;

    iget-object v2, p0, Lcom/vas/vassdk/plugin/VasUser$4;->c:Lcom/vas/vassdk/bean/RoleType;

    invoke-interface {v0, v1, v2}, Lcom/vas/vassdk/plugin/IUserPlugin;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Lcom/vas/vassdk/bean/RoleType;)V

    .line 133
    const-string v0, "VasUser setGameRoleInfo"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 134
    return-void
.end method
