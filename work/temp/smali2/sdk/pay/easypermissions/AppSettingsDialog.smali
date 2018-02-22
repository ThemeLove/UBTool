.class public Lsdk/pay/easypermissions/AppSettingsDialog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lsdk/pay/easypermissions/AppSettingsDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Object;

.field private h:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lsdk/pay/easypermissions/AppSettingsDialog$1;

    invoke-direct {v0}, Lsdk/pay/easypermissions/AppSettingsDialog$1;-><init>()V

    sput-object v0, Lsdk/pay/easypermissions/AppSettingsDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->e:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lsdk/pay/easypermissions/AppSettingsDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lsdk/pay/easypermissions/AppSettingsDialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->e:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->e:I

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    :cond_20
    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    iget v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->e:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f
.end method


# virtual methods
.method a()Landroid/app/AlertDialog;
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->d:Ljava/lang/String;

    iget-object v2, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->f:Landroid/content/Context;

    return-void
.end method

.method a(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->g:Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    iget-object v2, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lsdk/pay/easypermissions/AppSettingsDialog;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lsdk/pay/easypermissions/AppSettingsDialog;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
