.class final Lcom/alipay/sdk/k/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/k/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/k/a;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    new-instance v1, Lcom/alipay/sdk/k/a$a;

    iget-object v2, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    iget-object v3, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v3}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/sdk/k/a$a;-><init>(Lcom/alipay/sdk/k/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/sdk/k/a;->a(Lcom/alipay/sdk/k/a;Lcom/alipay/sdk/k/a$a;)Lcom/alipay/sdk/k/a$a;

    iget-object v0, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v1}, Lcom/alipay/sdk/k/a;->d(Lcom/alipay/sdk/k/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/k/a$a;->setCancelable(Z)V

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a$a;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/alipay/sdk/k/b;->a:Lcom/alipay/sdk/k/a;

    invoke-static {v0}, Lcom/alipay/sdk/k/a;->c(Lcom/alipay/sdk/k/a;)Lcom/alipay/sdk/k/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/k/a$a;->show()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3e} :catch_3f

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e
.end method
