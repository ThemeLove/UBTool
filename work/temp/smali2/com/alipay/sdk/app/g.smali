.class final Lcom/alipay/sdk/app/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/c;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/c;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/app/g;->a:Lcom/alipay/sdk/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/app/g;->a:Lcom/alipay/sdk/app/c;

    invoke-static {v0}, Lcom/alipay/sdk/app/c;->b(Lcom/alipay/sdk/app/c;)V

    return-void
.end method
