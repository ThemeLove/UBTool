.class Lsdk/pay/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/c;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lsdk/pay/c;


# direct methods
.method constructor <init>(Lsdk/pay/c;I)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/c$3;->b:Lsdk/pay/c;

    iput p2, p0, Lsdk/pay/c$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/c$3;->b:Lsdk/pay/c;

    iget-object v0, v0, Lsdk/pay/c;->j:Lsdk/pay/c/b;

    iget v1, p0, Lsdk/pay/c$3;->a:I

    invoke-interface {v0, v1}, Lsdk/pay/c/b;->a(I)V

    return-void
.end method
