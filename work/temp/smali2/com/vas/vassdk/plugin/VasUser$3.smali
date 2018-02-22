.class Lcom/vas/vassdk/plugin/VasUser$3;
.super Ljava/lang/Object;
.source "VasUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasUser;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasUser;

.field private final synthetic b:Lcom/vas/vassdk/bean/VasRoleInfo;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasUser;Lcom/vas/vassdk/bean/VasRoleInfo;Z)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasUser$3;->a:Lcom/vas/vassdk/plugin/VasUser;

    iput-object p2, p0, Lcom/vas/vassdk/plugin/VasUser$3;->b:Lcom/vas/vassdk/bean/VasRoleInfo;

    iput-boolean p3, p0, Lcom/vas/vassdk/plugin/VasUser$3;->c:Z

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser$3;->a:Lcom/vas/vassdk/plugin/VasUser;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasUser;->a(Lcom/vas/vassdk/plugin/VasUser;)Lcom/vas/vassdk/plugin/IUserPlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/vassdk/plugin/VasUser$3;->b:Lcom/vas/vassdk/bean/VasRoleInfo;

    iget-boolean v2, p0, Lcom/vas/vassdk/plugin/VasUser$3;->c:Z

    invoke-interface {v0, v1, v2}, Lcom/vas/vassdk/plugin/IUserPlugin;->setGameRoleInfo(Lcom/vas/vassdk/bean/VasRoleInfo;Z)V

    .line 112
    const-string v0, "VasUser setGameRoleInfo"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 113
    return-void
.end method
