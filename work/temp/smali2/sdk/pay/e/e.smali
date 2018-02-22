.class public Lsdk/pay/e/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lsdk/pay/e/e$1;

    invoke-direct {v0}, Lsdk/pay/e/e$1;-><init>()V

    sput-object v0, Lsdk/pay/e/e;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lsdk/pay/e/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
