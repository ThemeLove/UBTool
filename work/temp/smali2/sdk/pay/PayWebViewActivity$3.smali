.class Lsdk/pay/PayWebViewActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/PayWebViewActivity;->c()V
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

    iput-object p1, p0, Lsdk/pay/PayWebViewActivity$3;->a:Lsdk/pay/PayWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$3;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, v0, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$3;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, v0, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_d
    return-void

    :cond_e
    iget-object v6, p0, Lsdk/pay/PayWebViewActivity$3;->a:Lsdk/pay/PayWebViewActivity;

    iget-object v0, p0, Lsdk/pay/PayWebViewActivity$3;->a:Lsdk/pay/PayWebViewActivity;

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u652f\u4ed8..."

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lsdk/pay/PayWebViewActivity;->a:Landroid/app/Dialog;

    goto :goto_d
.end method
