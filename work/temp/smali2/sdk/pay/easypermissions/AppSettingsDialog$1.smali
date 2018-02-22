.class final Lsdk/pay/easypermissions/AppSettingsDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/easypermissions/AppSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lsdk/pay/easypermissions/AppSettingsDialog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lsdk/pay/easypermissions/AppSettingsDialog;
    .registers 4

    new-instance v0, Lsdk/pay/easypermissions/AppSettingsDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsdk/pay/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;Lsdk/pay/easypermissions/AppSettingsDialog$1;)V

    return-object v0
.end method

.method public a(I)[Lsdk/pay/easypermissions/AppSettingsDialog;
    .registers 3

    new-array v0, p1, [Lsdk/pay/easypermissions/AppSettingsDialog;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lsdk/pay/easypermissions/AppSettingsDialog$1;->a(Landroid/os/Parcel;)Lsdk/pay/easypermissions/AppSettingsDialog;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lsdk/pay/easypermissions/AppSettingsDialog$1;->a(I)[Lsdk/pay/easypermissions/AppSettingsDialog;

    move-result-object v0

    return-object v0
.end method
