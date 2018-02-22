.class Lsdk/pay/e/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/e/f;->b(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/e/f;


# direct methods
.method constructor <init>(Lsdk/pay/e/f;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/e/f$1;->a:Lsdk/pay/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lsdk/pay/e/f$1;->a:Lsdk/pay/e/f;

    invoke-static {v0}, Lsdk/pay/e/f;->a(Lsdk/pay/e/f;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "program quit caused by exception "

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
