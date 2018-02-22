.class public Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->setResult(I)V

    invoke-virtual {p0}, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_app_settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lsdk/pay/easypermissions/AppSettingsDialog;

    invoke-virtual {v0, p0}, Lsdk/pay/easypermissions/AppSettingsDialog;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lsdk/pay/easypermissions/AppSettingsDialog;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lsdk/pay/easypermissions/AppSettingsDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lsdk/pay/easypermissions/AppSettingsDialog;->a()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/app/AlertDialog;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_14
    return-void
.end method
