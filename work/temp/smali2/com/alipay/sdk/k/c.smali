.class final Lcom/alipay/sdk/k/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/k/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/k/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/k/c;->a:Lcom/alipay/sdk/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/k/c;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_8
    iget-object v0, p0, Lcom/alipay/sdk/k/c;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a$a;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method
