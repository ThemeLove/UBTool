.class Lcom/vas/xiantu2/XianTu2SDK$3;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/mchsdk/open/IGPSDKInitObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/xiantu2/XianTu2SDK;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vas/xiantu2/XianTu2SDK;


# direct methods
.method constructor <init>(Lcom/vas/xiantu2/XianTu2SDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$3;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFinish(Lcom/mchsdk/open/GPSDKInitResult;)V
    .registers 4
    .param p1, "initResult"    # Lcom/mchsdk/open/GPSDKInitResult;

    .prologue
    .line 130
    const-string v0, "xiantu2sdk"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasInitCallback()Lcom/vas/vassdk/callback/VasInitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vas/vassdk/callback/VasInitCallback;->onSuccess()V

    .line 132
    return-void
.end method
