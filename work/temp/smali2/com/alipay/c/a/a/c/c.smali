.class final Lcom/alipay/c/a/a/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/f/a/a/b/a/a/a;

.field final synthetic b:Lcom/alipay/c/a/a/c/b;


# direct methods
.method constructor <init>(Lcom/alipay/c/a/a/c/b;Lcom/alipay/f/a/a/b/a/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/c/a/a/c/c;->b:Lcom/alipay/c/a/a/c/b;

    iput-object p2, p0, Lcom/alipay/c/a/a/c/c;->a:Lcom/alipay/f/a/a/b/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/c/a/a/c/c;->b:Lcom/alipay/c/a/a/c/b;

    invoke-static {v0}, Lcom/alipay/c/a/a/c/b;->a(Lcom/alipay/c/a/a/c/b;)Lcom/alipay/f/a/a/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/c/a/a/c/c;->a:Lcom/alipay/f/a/a/b/a/a/a;

    invoke-interface {v0, v1}, Lcom/alipay/f/a/a/b/a/a;->a(Lcom/alipay/f/a/a/b/a/a/a;)Lcom/alipay/f/a/a/b/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/c/b;->a(Lcom/alipay/f/a/a/b/a/a/b;)Lcom/alipay/f/a/a/b/a/a/b;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    new-instance v1, Lcom/alipay/f/a/a/b/a/a/b;

    invoke-direct {v1}, Lcom/alipay/f/a/a/b/a/a/b;-><init>()V

    invoke-static {v1}, Lcom/alipay/c/a/a/c/b;->a(Lcom/alipay/f/a/a/b/a/a/b;)Lcom/alipay/f/a/a/b/a/a/b;

    invoke-static {}, Lcom/alipay/c/a/a/c/b;->a()Lcom/alipay/f/a/a/b/a/a/b;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/f/a/a/b/a/a/b;->a:Z

    invoke-static {}, Lcom/alipay/c/a/a/c/b;->a()Lcom/alipay/f/a/a/b/a/a/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "static data rpc upload error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/f/a/a/b/a/a/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_f
.end method
