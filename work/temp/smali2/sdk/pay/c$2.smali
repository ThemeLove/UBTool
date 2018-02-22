.class Lsdk/pay/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/c;


# direct methods
.method constructor <init>(Lsdk/pay/c;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/c$2;->a:Lsdk/pay/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lsdk/pay/c$2;->a:Lsdk/pay/c;

    iget-object v0, v0, Lsdk/pay/c;->i:Lsdk/pay/c/c;

    invoke-interface {v0}, Lsdk/pay/c/c;->a()V

    return-void
.end method
