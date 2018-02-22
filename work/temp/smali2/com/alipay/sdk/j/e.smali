.class public Lcom/alipay/sdk/j/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/j/e$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field private b:Lcom/alipay/android/app/IAlixPay;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Lcom/alipay/sdk/j/e$a;

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/alipay/android/app/IRemoteServiceCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/j/e$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/android/app/IAlixPay;

    iput-object v0, p0, Lcom/alipay/sdk/j/e;->c:Ljava/lang/Object;

    new-instance v0, Lcom/alipay/sdk/j/f;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/j/f;-><init>(Lcom/alipay/sdk/j/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/alipay/sdk/j/g;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/j/g;-><init>(Lcom/alipay/sdk/j/e;)V

    iput-object v0, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object p1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/j/e;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .registers 2

    iput-object p1, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/sdk/j/e;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/sdk/j/e;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/alipay/sdk/j/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.eg.android.AlipayGphone.IAlixPay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/sdk/j/k;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_19
    iget-object v2, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_25} :catch_9f

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_28
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_b3

    if-nez v0, :cond_3a

    :try_start_2c
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->c:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/sdk/c/a;->b()Lcom/alipay/sdk/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/c/a;->a()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_3a} :catch_aa
    .catchall {:try_start_2c .. :try_end_3a} :catchall_b3

    :cond_3a
    :goto_3a
    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_b3

    :try_start_3b
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/alipay/sdk/j/k;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "biz"

    const-string v4, "ClientBindFailed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "failed"
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_75} :catch_107
    .catchall {:try_start_3b .. :try_end_75} :catchall_13e

    :try_start_75
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7c} :catch_17a

    :goto_7c
    :try_start_7c
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_87} :catch_177

    :goto_87
    iput-object v6, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/j/e;->d:Z

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput-boolean v7, p0, Lcom/alipay/sdk/j/e;->d:Z

    :cond_9e
    :goto_9e
    return-object v0

    :catch_9f
    move-exception v0

    const-string v1, "biz"

    const-string v2, "ClientBindServiceFailed"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "failed"

    goto :goto_9e

    :catch_aa
    move-exception v0

    :try_start_ab
    const-string v3, "biz"

    const-string v4, "BindWaitTimeoutEx"

    invoke-static {v3, v4, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_b3

    goto :goto_3a

    :catchall_b3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_b6
    :try_start_b6
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    invoke-interface {v0}, Lcom/alipay/sdk/j/e$a;->a()V

    :cond_bf
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_d0

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/j/e;->d:Z

    :cond_d0
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_dc} :catch_107
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_13e

    move-result-object v0

    :try_start_dd
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e4} :catch_174

    :goto_e4
    :try_start_e4
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_ef} :catch_171

    :goto_ef
    iput-object v6, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/j/e;->d:Z

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput-boolean v7, p0, Lcom/alipay/sdk/j/e;->d:Z

    goto :goto_9e

    :catch_107
    move-exception v0

    :try_start_108
    const-string v1, "biz"

    const-string v2, "ClientBindException"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/sdk/app/i;->a()Ljava/lang/String;
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_13e

    move-result-object v0

    :try_start_113
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_11a} :catch_16f

    :goto_11a
    :try_start_11a
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_125} :catch_16d

    :goto_125
    iput-object v6, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/j/e;->d:Z

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput-boolean v7, p0, Lcom/alipay/sdk/j/e;->d:Z

    goto/16 :goto_9e

    :catchall_13e
    move-exception v0

    :try_start_13f
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_13f .. :try_end_146} :catch_16b

    :goto_146
    :try_start_146
    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_151} :catch_169

    :goto_151
    iput-object v6, p0, Lcom/alipay/sdk/j/e;->e:Lcom/alipay/sdk/j/e$a;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->g:Lcom/alipay/android/app/IRemoteServiceCallback;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->f:Landroid/content/ServiceConnection;

    iput-object v6, p0, Lcom/alipay/sdk/j/e;->b:Lcom/alipay/android/app/IAlixPay;

    iget-boolean v1, p0, Lcom/alipay/sdk/j/e;->d:Z

    if-eqz v1, :cond_168

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    if-eqz v1, :cond_168

    iget-object v1, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iput-boolean v7, p0, Lcom/alipay/sdk/j/e;->d:Z

    :cond_168
    throw v0

    :catch_169
    move-exception v1

    goto :goto_151

    :catch_16b
    move-exception v1

    goto :goto_146

    :catch_16d
    move-exception v1

    goto :goto_125

    :catch_16f
    move-exception v1

    goto :goto_11a

    :catch_171
    move-exception v1

    goto/16 :goto_ef

    :catch_174
    move-exception v1

    goto/16 :goto_e4

    :catch_177
    move-exception v1

    goto/16 :goto_87

    :catch_17a
    move-exception v1

    goto/16 :goto_7c
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/sdk/j/k;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/j/k$a;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "failed"

    :goto_e
    return-object v0

    :cond_f
    if-eqz v0, :cond_17

    iget v0, v0, Lcom/alipay/sdk/j/k$a;->b:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_35

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_1c

    :cond_17
    :goto_17
    invoke-direct {p0, p1}, Lcom/alipay/sdk/j/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/alipay/sdk/j/k;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.alipay.android.app.TransProcessPayActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/sdk/j/e;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_34} :catch_35

    goto :goto_17

    :catch_35
    move-exception v0

    const-string v1, "biz"

    const-string v2, "CheckClientSignEx"

    invoke-static {v1, v2, v0}, Lcom/alipay/sdk/app/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_17
.end method
