.class Lcom/mchsdk/paysdk/utils/j$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/j;


# direct methods
.method private constructor <init>(Lcom/mchsdk/paysdk/utils/j;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j$a;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/utils/j$a;-><init>(Lcom/mchsdk/paysdk/utils/j;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x1234

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$a;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v1, v1, Lcom/mchsdk/paysdk/utils/j;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
