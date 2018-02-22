.class Lsdk/pay/e/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsdk/pay/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static a:Lsdk/pay/e/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lsdk/pay/e/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsdk/pay/e/f;-><init>(Lsdk/pay/e/f$1;)V

    sput-object v0, Lsdk/pay/e/f$a;->a:Lsdk/pay/e/f;

    return-void
.end method
