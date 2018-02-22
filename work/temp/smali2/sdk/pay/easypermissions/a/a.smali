.class Lsdk/pay/easypermissions/a/a;
.super Lsdk/pay/easypermissions/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsdk/pay/easypermissions/a/c",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lsdk/pay/easypermissions/a/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    invoke-virtual {p0}, Lsdk/pay/easypermissions/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;III[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lsdk/pay/easypermissions/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p5, p4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lsdk/pay/easypermissions/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
