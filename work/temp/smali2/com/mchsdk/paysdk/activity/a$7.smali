.class Lcom/mchsdk/paysdk/activity/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$7;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$7;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_16

    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$7;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->h(Lcom/mchsdk/paysdk/activity/a;)V

    const/4 v0, 0x0

    return v0

    :catch_16
    move-exception v0

    const-string v1, "LoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
