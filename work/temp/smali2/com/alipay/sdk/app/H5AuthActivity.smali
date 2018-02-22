.class public Lcom/alipay/sdk/app/H5AuthActivity;
.super Lcom/alipay/sdk/app/H5PayActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-object v1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    :goto_6
    :try_start_6
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_b
    move-exception v0

    goto :goto_6
.end method
