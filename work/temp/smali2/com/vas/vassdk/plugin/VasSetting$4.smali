.class Lcom/vas/vassdk/plugin/VasSetting$4;
.super Ljava/lang/Object;
.source "VasSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/vassdk/plugin/VasSetting;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vas/vassdk/plugin/VasSetting;


# direct methods
.method constructor <init>(Lcom/vas/vassdk/plugin/VasSetting;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/vassdk/plugin/VasSetting$4;->a:Lcom/vas/vassdk/plugin/VasSetting;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vas/vassdk/plugin/VasSetting$4;->a:Lcom/vas/vassdk/plugin/VasSetting;

    invoke-static {v0}, Lcom/vas/vassdk/plugin/VasSetting;->a(Lcom/vas/vassdk/plugin/VasSetting;)Lcom/vas/vassdk/plugin/ISettingPlugin;

    move-result-object v0

    invoke-interface {v0}, Lcom/vas/vassdk/plugin/ISettingPlugin;->exit()V

    .line 107
    return-void
.end method
