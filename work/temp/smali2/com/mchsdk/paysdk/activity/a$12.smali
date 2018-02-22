.class Lcom/mchsdk/paysdk/activity/a$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$12;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$12;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Z)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$12;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;Z)Z

    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$12;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/j;->b(Landroid/os/Handler;)V

    sget-object v0, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    if-eqz v0, :cond_25

    :try_start_1a
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$12;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mchsdk/paysdk/activity/a;->d:Lcom/mchsdk/paysdk/receive/MCHControlReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "LoginActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method
