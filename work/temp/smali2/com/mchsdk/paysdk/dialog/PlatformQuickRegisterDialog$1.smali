.class Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->b(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$1;->a:Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-static {v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->b(Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_25
    const-string v0, "PlatformQuickRegisterDialog"

    const-string v1, "\u4e0b\u8f7dlogo\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2d
    const-string v0, "PlatformQuickRegisterDialog"

    const-string v1, "\u4e0b\u8f7dlogo\u5931\u8d25 "

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    nop

    :pswitch_data_36
    .packed-switch -0x1
        :pswitch_2d
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
