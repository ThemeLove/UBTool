.class Lsdk/pay/easypermissions/a/b;
.super Lsdk/pay/easypermissions/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsdk/pay/easypermissions/a/c",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lsdk/pay/easypermissions/a/c;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs a(Ljava/lang/String;III[Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should never be requesting permissions on API < 23!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
