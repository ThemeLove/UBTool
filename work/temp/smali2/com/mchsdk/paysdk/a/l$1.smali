.class Lcom/mchsdk/paysdk/a/l$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/l;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/l;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/l$1;->a:Lcom/mchsdk/paysdk/a/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/l$1;->a:Lcom/mchsdk/paysdk/a/l;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/l;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->c:Z

    const-string v0, "OffLineAnnounceModel"

    const-string v1, "\u8bf7\u6c42\u4e0b\u7ebf\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mchsdk/paysdk/a/l;->a:J

    const-string v0, "OffLineAnnounceModel"

    const-string v1, "\u8bf7\u6c42\u4e0b\u7ebf\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    nop

    :pswitch_data_28
    .packed-switch 0x62
        :pswitch_9
        :pswitch_19
    .end packed-switch
.end method
