.class Lsdk/pay/PayWebViewActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/PayWebViewActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/PayWebViewActivity;


# direct methods
.method constructor <init>(Lsdk/pay/PayWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/PayWebViewActivity$2;->a:Lsdk/pay/PayWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$2;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, v0, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$2;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, v0, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$2;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, v0, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_17
    return-void
.end method
