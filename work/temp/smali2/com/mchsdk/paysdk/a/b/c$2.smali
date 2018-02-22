.class Lcom/mchsdk/paysdk/a/b/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/a/b/c;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mchsdk/paysdk/a/b/c;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/b/c$2;->b:Lcom/mchsdk/paysdk/a/b/c;

    iput-object p2, p0, Lcom/mchsdk/paysdk/a/b/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b/c$2;->b:Lcom/mchsdk/paysdk/a/b/c;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/b/c;->a(Lcom/mchsdk/paysdk/a/b/c;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b/c$2;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c$2;->b:Lcom/mchsdk/paysdk/a/b/c;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/b/c;->b(Lcom/mchsdk/paysdk/a/b/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
