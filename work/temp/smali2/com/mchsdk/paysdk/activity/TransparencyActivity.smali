.class public Lcom/mchsdk/paysdk/activity/TransparencyActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/activity/TransparencyActivity$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity$1;-><init>(Lcom/mchsdk/paysdk/activity/TransparencyActivity;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 3

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/j;->a(Landroid/os/Handler;)V

    new-instance v0, Lcom/mchsdk/paysdk/activity/a;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/mchsdk/paysdk/activity/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/a;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a:Lcom/mchsdk/paysdk/activity/TransparencyActivity;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    if-eqz v0, :cond_c

    :try_start_7
    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/activity/TransparencyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "TransparencyActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
