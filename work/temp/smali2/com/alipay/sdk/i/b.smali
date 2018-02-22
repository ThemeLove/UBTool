.class public final Lcom/alipay/sdk/i/b;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alipay/sdk/i/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/sdk/i/b;
    .registers 8

    const-class v1, Lcom/alipay/sdk/i/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    if-nez v0, :cond_6c

    new-instance v0, Lcom/alipay/sdk/i/b;

    invoke-direct {v0}, Lcom/alipay/sdk/i/b;-><init>()V

    sput-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    invoke-static {}, Lcom/alipay/sdk/h/b;->a()Lcom/alipay/sdk/h/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/sdk/h/b;->a:Landroid/content/Context;

    new-instance v2, Lcom/alipay/sdk/i/a;

    invoke-direct {v2, v0}, Lcom/alipay/sdk/i/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/alipay/sdk/j/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/j/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alipay/sdk/j/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/j/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/j/b;->b()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/i/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/i/b;->a:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    invoke-virtual {v2, v3, v4}, Lcom/alipay/sdk/i/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    iget-object v0, v0, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v5, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-le v6, v7, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0xa

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_5f
    iput-object v0, v5, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    :cond_61
    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    iget-object v0, v0, Lcom/alipay/sdk/i/b;->a:Ljava/lang/String;

    sget-object v5, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;

    iget-object v5, v5, Lcom/alipay/sdk/i/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/sdk/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    sget-object v0, Lcom/alipay/sdk/i/b;->c:Lcom/alipay/sdk/i/b;
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_70

    monitor-exit v1

    return-object v0

    :catchall_70
    move-exception v0

    monitor-exit v1

    throw v0
.end method
