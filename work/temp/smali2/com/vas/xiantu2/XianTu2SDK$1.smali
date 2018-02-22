.class Lcom/vas/xiantu2/XianTu2SDK$1;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/mchsdk/open/IGPExitObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vas/xiantu2/XianTu2SDK;
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
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$1;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExitFinish(Lcom/mchsdk/open/GPExitResult;)V
    .registers 5
    .param p1, "exitResult"    # Lcom/mchsdk/open/GPExitResult;

    .prologue
    .line 71
    iget v1, p1, Lcom/mchsdk/open/GPExitResult;->mResultCode:I

    packed-switch v1, :pswitch_data_5e

    .line 97
    :goto_5
    :pswitch_5
    return-void

    .line 73
    :pswitch_6
    const-string v1, "xiantu2sdk"

    const-string v2, "\u4e2a\u4eba\u4e2d\u5fc3\u7684\u9000\u51fa\u5e10\u53f7\u7684\u56de\u8c03"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 76
    :pswitch_e
    const-string v1, "xiantu2sdk"

    const-string v2, "\u6ce8\u9500\u56de\u8c03\uff1a\u6267\u884cSDK\u6ce8\u9500\u65b9\u6cd5"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK$1;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    .line 79
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$1;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    invoke-virtual {v1}, Lcom/vas/xiantu2/XianTu2SDK;->logout()V

    goto :goto_5

    .line 83
    :pswitch_28
    const-string v1, "xiantu2sdk"

    const-string v2, "\u9000\u51fa\u56de\u8c03:\u9000\u51fa\u65b9\u6cd5\u56de\u8c03"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/vas/xiantu2/XianTu2SDK$1;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "MyIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$1;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vas/vassdk/VasSDK;->getVasExitCallback()Lcom/vas/vassdk/callback/VasExitCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/vas/vassdk/callback/VasExitCallback;->onSuccess()V

    goto :goto_5

    .line 71
    nop

    :pswitch_data_5e
    .packed-switch -0x5
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_28
    .end packed-switch
.end method
