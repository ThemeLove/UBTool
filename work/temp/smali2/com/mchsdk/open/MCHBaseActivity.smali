.class public Lcom/mchsdk/open/MCHBaseActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/open/MCHBaseActivity$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCHBaseActivity"


# instance fields
.field receiver:Lcom/mchsdk/open/MCHBaseActivity$a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private registerBroadCast()V
    .registers 4

    new-instance v0, Lcom/mchsdk/open/MCHBaseActivity$a;

    invoke-direct {v0, p0}, Lcom/mchsdk/open/MCHBaseActivity$a;-><init>(Lcom/mchsdk/open/MCHBaseActivity;)V

    iput-object v0, p0, Lcom/mchsdk/open/MCHBaseActivity;->receiver:Lcom/mchsdk/open/MCHBaseActivity$a;

    iget-object v0, p0, Lcom/mchsdk/open/MCHBaseActivity;->receiver:Lcom/mchsdk/open/MCHBaseActivity$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/open/MCHBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/mchsdk/open/MCHBaseActivity;->registerBroadCast()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onDestroy stopFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->b:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->c:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->offLineAnnounce(Landroid/content/Context;)V

    :cond_1d
    iget-object v0, p0, Lcom/mchsdk/open/MCHBaseActivity;->receiver:Lcom/mchsdk/open/MCHBaseActivity$a;

    invoke-virtual {p0, v0}, Lcom/mchsdk/open/MCHBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onPause startFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onRestart startFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onResume startFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->b:Z

    if-eqz v0, :cond_1d

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->c:Z

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->requestAntiAddiction()V

    :cond_1d
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onStart startFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->startFloating(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string v0, "MCHBaseActivity"

    const-string v1, "onStop stopFloating"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
