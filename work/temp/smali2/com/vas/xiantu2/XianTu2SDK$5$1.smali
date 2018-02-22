.class Lcom/vas/xiantu2/XianTu2SDK$5$1;
.super Ljava/lang/Object;
.source "XianTu2SDK.java"

# interfaces
.implements Lcom/vas/vassdk/apiadapter/VasLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vas/xiantu2/XianTu2SDK$5;->onFinish(Lcom/mchsdk/open/GPUserResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vas/xiantu2/XianTu2SDK$5;


# direct methods
.method constructor <init>(Lcom/vas/xiantu2/XianTu2SDK$5;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$5$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$5;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "vassdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login-fail:message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getVasLoginCallback()Lcom/vas/vassdk/callback/VasLoginCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/vas/vassdk/callback/VasLoginCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public loginSuccess(Lcom/vas/vassdk/bean/VasUserInfo;)V
    .registers 6
    .param p1, "vasUserInfo"    # Lcom/vas/vassdk/bean/VasUserInfo;

    .prologue
    .line 221
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$5$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$5;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK$5;->access$0(Lcom/vas/xiantu2/XianTu2SDK$5;)Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasUserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vas/xiantu2/XianTu2SDK;->access$3(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$5$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$5;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK$5;->access$0(Lcom/vas/xiantu2/XianTu2SDK$5;)Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vas/xiantu2/XianTu2SDK;->access$4(Lcom/vas/xiantu2/XianTu2SDK;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcom/vas/vassdk/bean/VasUserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "token":Ljava/lang/String;
    const-string v1, "vassdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login-success:uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vas/xiantu2/XianTu2SDK$5$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$5;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;
    invoke-static {v3}, Lcom/vas/xiantu2/XianTu2SDK$5;->access$0(Lcom/vas/xiantu2/XianTu2SDK$5;)Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v3

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/vas/xiantu2/XianTu2SDK;->access$5(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mAccount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vas/xiantu2/XianTu2SDK$5$1;->this$1:Lcom/vas/xiantu2/XianTu2SDK$5;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK$5;->this$0:Lcom/vas/xiantu2/XianTu2SDK;
    invoke-static {v3}, Lcom/vas/xiantu2/XianTu2SDK$5;->access$0(Lcom/vas/xiantu2/XianTu2SDK$5;)Lcom/vas/xiantu2/XianTu2SDK;

    move-result-object v3

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mAccount:Ljava/lang/String;
    invoke-static {v3}, Lcom/vas/xiantu2/XianTu2SDK;->access$6(Lcom/vas/xiantu2/XianTu2SDK;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vas/vassdk/VasSDK;->getVasLoginCallback()Lcom/vas/vassdk/callback/VasLoginCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/vas/vassdk/callback/VasLoginCallback;->onSuccess(Lcom/vas/vassdk/bean/VasUserInfo;)V

    .line 226
    return-void
.end method
