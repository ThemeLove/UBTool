.class Lcom/vas/xiantu2/XianTu2SDK$4;
.super Lcom/vas/vassdk/apiadapter/ActivityAdapter;
.source "XianTu2SDK.java"


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
    iput-object p1, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    .line 138
    invoke-direct {p0}, Lcom/vas/vassdk/apiadapter/ActivityAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 3

    .prologue
    .line 172
    const-string v0, "xiantu2sdk"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    invoke-virtual {v0}, Lcom/vas/xiantu2/XianTu2SDK;->exit()V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 166
    const-string v0, "xiantu2sdk"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "xiantu2sdk"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 152
    const-string v0, "xiantu2sdk"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->onResume()V

    .line 155
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 141
    const-string v0, "xiantu2sdk"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mchsdk/open/MCApiFactory;->floatingIsClose:Z

    .line 143
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "xiantu2sdk"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    .line 161
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/vas/xiantu2/XianTu2SDK$4;->this$0:Lcom/vas/xiantu2/XianTu2SDK;

    # getter for: Lcom/vas/xiantu2/XianTu2SDK;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/vas/xiantu2/XianTu2SDK;->access$0(Lcom/vas/xiantu2/XianTu2SDK;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->onStop(Landroid/content/Context;)V

    .line 162
    return-void
.end method
