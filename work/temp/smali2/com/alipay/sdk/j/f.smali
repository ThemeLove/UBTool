.class final Lcom/alipay/sdk/j/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/j/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/j/e;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/j/f;->a:Lcom/alipay/sdk/j/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/alipay/sdk/j/f;->a:Lcom/alipay/sdk/j/e;

    invoke-static {v0}, Lcom/alipay/sdk/j/e;->a(Lcom/alipay/sdk/j/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/alipay/sdk/j/f;->a:Lcom/alipay/sdk/j/e;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/sdk/j/e;->a(Lcom/alipay/sdk/j/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    iget-object v0, p0, Lcom/alipay/sdk/j/f;->a:Lcom/alipay/sdk/j/e;

    invoke-static {v0}, Lcom/alipay/sdk/j/e;->a(Lcom/alipay/sdk/j/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/alipay/sdk/j/f;->a:Lcom/alipay/sdk/j/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/sdk/j/e;->a(Lcom/alipay/sdk/j/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
