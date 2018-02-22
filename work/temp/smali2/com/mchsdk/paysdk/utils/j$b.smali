.class Lcom/mchsdk/paysdk/utils/j$b;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/j;


# direct methods
.method public constructor <init>(Lcom/mchsdk/paysdk/utils/j;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j$b;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x123

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$b;->a:Lcom/mchsdk/paysdk/utils/j;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/j;->f(Lcom/mchsdk/paysdk/utils/j;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j$b;->a:Lcom/mchsdk/paysdk/utils/j;

    iget-object v1, v1, Lcom/mchsdk/paysdk/utils/j;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
