.class Lcom/vas/xiantu2/XianTu2SDK$5;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/mchsdk/open/IGPUserObsv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/xiantu2/XianTu2SDK;->login()V
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
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vas/xiantu2/XianTu2SDK$5;)Lcom/vas/xiantu2/XianTu2SDK;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    return-object v0
.end method


# virtual methods
.method public onFinish(Lcom/mchsdk/open/GPUserResult;)V
    .registers 8
    .param p1, "userResult"    # Lcom/mchsdk/open/GPUserResult;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/mchsdk/open/GPUserResult;->getmErrCode()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    .line 236
    :goto_7
    :pswitch_7
    return-void

    .line 206
    :pswitch_8
    const-string v0, "xiantu2sdk"

    const-string v1, "login-fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasLoginCallback()Lcom/vas/vassdk/callback/VasLoginCallback;

    move-result-object v0

    const-string v1, "\u6e20\u9053\u767b\u5f55\u5931\u8d25"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Lcom/vas/vassdk/callback/VasLoginCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 211
    :pswitch_1f
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    invoke-virtual {p1}, Lcom/mchsdk/open/GPUserResult;->getAccountNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$1(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/mchsdk/open/GPUserResult;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "mXianTu2Token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mchsdk/open/GPUserResult;->getAccount()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "mXianTu2Account":Ljava/lang/String;
    const-string v0, "xiantu2sdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "login-success:xiantuUid="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;
    invoke-static {v4}, Lcom/vas/xiantu2/XianTu2SDK;->access$2(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",xiantuToken="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",xiantuAccount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/model/VasModel;->getInstance(Landroid/app/Activity;)Lcom/vas/vassdk/model/VasModel;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mXianTu2Uid:Ljava/lang/String;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$2(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/vas/xiantu2/XianTu2SDK$5$1;

    invoke-direct {v5, p0}, Lcom/vas/xiantu2/XianTu2SDK$5$1;-><init>(Lcom/vas/xiantu2/XianTu2SDK$5;)V

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/vas/vassdk/model/VasModel;->vasLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vas/vassdk/apiadapter/VasLoginListener;)V

    goto :goto_7

    .line 204
    nop

    :pswitch_data_86
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_1f
    .end packed-switch
.end method
