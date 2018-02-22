.class final Lcom/alipay/sdk/app/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/sdk/app/a/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    new-instance v0, Lcom/alipay/sdk/f/a/c;

    invoke-direct {v0}, Lcom/alipay/sdk/f/a/c;-><init>()V

    :try_start_5
    iget-object v1, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_statistic_record"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/sdk/j/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/sdk/f/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/f/b;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    const-string v2, "alipay_cashier_statistic_record"

    invoke-static {v1, v2}, Lcom/alipay/sdk/j/h;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_23} :catch_40

    :cond_23
    :goto_23
    :try_start_23
    iget-object v1, p0, Lcom/alipay/sdk/app/a/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/sdk/app/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/f/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/f/b;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_32} :catch_33
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_32} :catch_3e

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    iget-object v0, p0, Lcom/alipay/sdk/app/a/b;->a:Landroid/content/Context;

    const-string v1, "alipay_cashier_statistic_record"

    iget-object v2, p0, Lcom/alipay/sdk/app/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/sdk/j/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_3e
    move-exception v0

    goto :goto_32

    :catch_40
    move-exception v1

    goto :goto_23
.end method
