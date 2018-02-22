.class Lcom/vas/vassdk/plugin/VasUser$1;
.super Ljava/lang/Object;
.source "VasUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasUser;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasUser;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasUser;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasUser$1;->a:Lcom/vas/vassdk/plugin/VasUser;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasUser$1;->a:Lcom/vas/vassdk/plugin/VasUser;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasUser;->a(Lcom/vas/vassdk/plugin/VasUser;)Lcom/vas/vassdk/plugin/IUserPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/IUserPlugin;->login()V

    .line 59
    const-string v0, "VasUser login"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 60
    return-void
.end method
