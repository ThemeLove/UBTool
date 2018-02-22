.class public Lcom/mchsdk/paysdk/activity/MCBaseActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected c(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected d(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "MCBaseActivity"

    const-string v1, "fun#onCreate"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->f:Z

    return-void
.end method

.method protected onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->requestAntiAddiction()V

    sput-boolean v1, Lcom/mchsdk/paysdk/a/h;->d:Z

    sput-boolean v1, Lcom/mchsdk/paysdk/a/h;->e:Z

    sput-boolean v1, Lcom/mchsdk/paysdk/a/h;->f:Z

    return-void
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->d:Z

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->e:Z

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->f:Z

    if-nez v0, :cond_15

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mchsdk/open/MCApiFactory;->offLineAnnounce(Landroid/content/Context;)V

    :cond_15
    return-void
.end method
