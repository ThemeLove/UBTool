.class Lcom/alipay/android/a/a/a/n;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/android/a/a/a/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/a/a/a/s;

.field final synthetic b:Lcom/alipay/android/a/a/a/m;


# direct methods
.method constructor <init>(Lcom/alipay/android/a/a/a/m;Ljava/util/concurrent/Callable;Lcom/alipay/android/a/a/a/s;)V
    .registers 4

    iput-object p1, p0, Lcom/alipay/android/a/a/a/n;->b:Lcom/alipay/android/a/a/a/m;

    iput-object p3, p0, Lcom/alipay/android/a/a/a/n;->a:Lcom/alipay/android/a/a/a/s;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 5

    iget-object v0, p0, Lcom/alipay/android/a/a/a/n;->a:Lcom/alipay/android/a/a/a/s;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/s;->e()Lcom/alipay/android/a/a/a/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/w;->f()Lcom/alipay/android/a/a/a/ah;

    move-result-object v2

    if-nez v2, :cond_10

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/a/a/a/x;

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/n;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/w;->h()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_22
    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/w;->g()V

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/n;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/n;->isDone()Z

    move-result v0

    if-nez v0, :cond_35

    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/android/a/a/a/n;->cancel(Z)Z

    :cond_35
    invoke-interface {v2, v1}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_38} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_38} :catch_49
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_38} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_38} :catch_7b

    goto :goto_f

    :catch_39
    move-exception v0

    const/4 v3, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    goto :goto_f

    :cond_43
    if-eqz v0, :cond_f

    :try_start_45
    invoke-interface {v2, v1, v0}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;Lcom/alipay/android/a/a/a/x;)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Ljava/util/concurrent/CancellationException; {:try_start_45 .. :try_end_48} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_7b

    goto :goto_f

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6a

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/alipay/android/a/a/a/l;

    if-eqz v3, :cond_6a

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/a/a/a/l;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/l;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    goto :goto_f

    :cond_6a
    const/4 v3, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;ILjava/lang/String;)V

    goto :goto_f

    :catch_73
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/android/a/a/a/w;->g()V

    invoke-interface {v2, v1}, Lcom/alipay/android/a/a/a/ah;->a(Lcom/alipay/android/a/a/a/w;)V

    goto :goto_f

    :catch_7b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
