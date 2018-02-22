.class Lcom/mchsdk/open/MCHBaseActivity$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/open/MCHBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/open/MCHBaseActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/open/MCHBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/open/MCHBaseActivity$a;->a:Lcom/mchsdk/open/MCHBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->b:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->c:Z

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/MCHBaseActivity$a;->a:Lcom/mchsdk/open/MCHBaseActivity;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->offLineAnnounce(Landroid/content/Context;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2d
.end method
