.class Lsdk/pay/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/c;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsdk/pay/c;


# direct methods
.method constructor <init>(Lsdk/pay/c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/c$1;->b:Lsdk/pay/c;

    iput-object p2, p0, Lsdk/pay/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/c$1;->b:Lsdk/pay/c;

    invoke-static {v0}, Lsdk/pay/c;->a(Lsdk/pay/c;)Lsdk/pay/c/d;

    move-result-object v0

    iget-object v1, p0, Lsdk/pay/c$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lsdk/pay/c/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/c$1;->b:Lsdk/pay/c;

    iget-object v0, v0, Lsdk/pay/c;->e:Landroid/app/Activity;

    iget-object v1, p0, Lsdk/pay/c$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lsdk/pay/e/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
