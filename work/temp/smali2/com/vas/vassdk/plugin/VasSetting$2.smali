.class Lcom/vas/vassdk/plugin/VasSetting$2;
.super Ljava/lang/Object;
.source "VasSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasSetting;->setIsLandScape(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasSetting;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasSetting;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasSetting$2;->a:Lcom/vas/vassdk/plugin/VasSetting;

    iput-boolean p2, p0, Lcom/vas/vassdk/plugin/VasSetting$2;->b:Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting$2;->a:Lcom/vas/vassdk/plugin/VasSetting;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasSetting;->a(Lcom/vas/vassdk/plugin/VasSetting;)Lcom/vas/vassdk/plugin/ISettingPlugin;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vas/vassdk/plugin/VasSetting$2;->b:Z

    invoke-interface {v0, v1}, Lcom/vas/vassdk/plugin/ISettingPlugin;->setIsLandScape(Z)V

    .line 67
    return-void
.end method
