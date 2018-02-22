.class Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->d(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a()Lcom/mchsdk/paysdk/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :pswitch_1b
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$3;->a:Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->d(Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a()Lcom/mchsdk/paysdk/e/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    nop

    :pswitch_data_2e
    .packed-switch 0x1001
        :pswitch_9
        :pswitch_1b
    .end packed-switch
.end method
