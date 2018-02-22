.class final Lcom/alipay/c/a/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/c/a/a/e/b;


# direct methods
.method constructor <init>(Lcom/alipay/c/a/a/e/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/c/a/a/e/c;->a:Lcom/alipay/c/a/a/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/c/a/a/e/c;->a:Lcom/alipay/c/a/a/e/b;

    invoke-static {v0}, Lcom/alipay/c/a/a/e/b;->a(Lcom/alipay/c/a/a/e/b;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/alipay/c/a/a/e/d;->a(Ljava/lang/Throwable;)V

    goto :goto_5
.end method
