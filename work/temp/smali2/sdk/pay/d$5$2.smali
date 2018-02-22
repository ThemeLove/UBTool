.class Lsdk/pay/d$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/d$5;->a(Lokhttp3/e;Lokhttp3/aa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsdk/pay/d$5;


# direct methods
.method constructor <init>(Lsdk/pay/d$5;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/d$5$2;->b:Lsdk/pay/d$5;

    iput-object p2, p0, Lsdk/pay/d$5$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d$5$2;->b:Lsdk/pay/d$5;

    iget-object v0, v0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    iget-object v0, v0, Lsdk/pay/d;->e:Landroid/app/Activity;

    iget-object v1, p0, Lsdk/pay/d$5$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lsdk/pay/e/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
