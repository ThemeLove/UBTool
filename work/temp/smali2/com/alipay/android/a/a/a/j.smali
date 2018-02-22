.class public Lcom/alipay/android/a/a/a/j;
.super Lcom/alipay/android/a/a/a/a;


# instance fields
.field private g:Lcom/alipay/android/a/a/a/g;


# direct methods
.method public constructor <init>(Lcom/alipay/android/a/a/a/g;Ljava/lang/reflect/Method;ILjava/lang/String;[BZ)V
    .registers 14

    const-string v5, "application/x-www-form-urlencoded"

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/a/a/a/a;-><init>(Ljava/lang/reflect/Method;ILjava/lang/String;[BLjava/lang/String;Z)V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/j;->g:Lcom/alipay/android/a/a/a/g;

    return-void
.end method

.method private a(I)I
    .registers 2

    packed-switch p1, :pswitch_data_1a

    :goto_3
    return p1

    :pswitch_4
    const/4 p1, 0x4

    goto :goto_3

    :pswitch_6
    const/4 p1, 0x7

    goto :goto_3

    :pswitch_8
    const/16 p1, 0x8

    goto :goto_3

    :pswitch_b
    const/4 p1, 0x6

    goto :goto_3

    :pswitch_d
    const/4 p1, 0x5

    goto :goto_3

    :pswitch_f
    const/4 p1, 0x3

    goto :goto_3

    :pswitch_11
    const/4 p1, 0x2

    goto :goto_3

    :pswitch_13
    const/16 p1, 0x10

    goto :goto_3

    :pswitch_16
    const/16 p1, 0xf

    goto :goto_3

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_4
        :pswitch_d
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method private a(Lcom/alipay/android/a/a/a/q;)V
    .registers 5

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/android/a/a/a/q;->a(Lorg/apache/http/Header;)V

    iget-object v0, p0, Lcom/alipay/android/a/a/a/j;->g:Lcom/alipay/android/a/a/a/g;

    invoke-interface {v0}, Lcom/alipay/android/a/a/a/g;->c()Lcom/alipay/android/a/a/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/ae;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-virtual {p1, v0}, Lcom/alipay/android/a/a/a/q;->a(Lorg/apache/http/Header;)V

    goto :goto_28

    :cond_38
    return-void
.end method

.method private b()Lcom/alipay/android/a/a/a/ag;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/j;->g:Lcom/alipay/android/a/a/a/g;

    invoke-interface {v0}, Lcom/alipay/android/a/a/a/g;->b()Lcom/alipay/android/a/a/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 7

    const/16 v5, 0xd

    const/16 v4, 0x9

    new-instance v0, Lcom/alipay/android/a/a/a/q;

    iget-object v1, p0, Lcom/alipay/android/a/a/a/j;->g:Lcom/alipay/android/a/a/a/g;

    invoke-interface {v1}, Lcom/alipay/android/a/a/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/a/a/a/q;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/a/a/a/j;->b:[B

    invoke-virtual {v0, v1}, Lcom/alipay/android/a/a/a/q;->a([B)V

    iget-object v1, p0, Lcom/alipay/android/a/a/a/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/a/a/a/q;->a(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/android/a/a/a/j;->f:Z

    invoke-virtual {v0, v1}, Lcom/alipay/android/a/a/a/q;->a(Z)V

    const-string v1, "id"

    iget v2, p0, Lcom/alipay/android/a/a/a/j;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/a/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "operationType"

    iget-object v2, p0, Lcom/alipay/android/a/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/a/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gzip"

    iget-object v2, p0, Lcom/alipay/android/a/a/a/j;->g:Lcom/alipay/android/a/a/a/g;

    invoke-interface {v2}, Lcom/alipay/android/a/a/a/g;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/a/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/android/a/a/a/j;->a(Lcom/alipay/android/a/a/a/q;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "threadid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/q;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_62
    invoke-direct {p0}, Lcom/alipay/android/a/a/a/j;->b()Lcom/alipay/android/a/a/a/ag;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/a/a/a/ag;->a(Lcom/alipay/android/a/a/a/w;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/a/a/a/x;

    if-nez v0, :cond_8d

    new-instance v0, Lcom/alipay/android/a/a/a/aa;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/a/a/a/aa;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_80} :catch_80
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_62 .. :try_end_80} :catch_92
    .catch Ljava/util/concurrent/CancellationException; {:try_start_62 .. :try_end_80} :catch_c2

    :catch_80
    move-exception v0

    new-instance v1, Lcom/alipay/android/a/a/a/aa;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/android/a/a/a/aa;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8d
    :try_start_8d
    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/x;->b()[B
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_90} :catch_80
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8d .. :try_end_90} :catch_92
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8d .. :try_end_90} :catch_c2

    move-result-object v0

    return-object v0

    :catch_92
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b6

    instance-of v2, v0, Lcom/alipay/android/a/a/a/l;

    if-eqz v2, :cond_b6

    check-cast v0, Lcom/alipay/android/a/a/a/l;

    new-instance v1, Lcom/alipay/android/a/a/a/aa;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/l;->a()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/alipay/android/a/a/a/j;->a(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/android/a/a/a/aa;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :cond_b6
    new-instance v0, Lcom/alipay/android/a/a/a/aa;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/android/a/a/a/aa;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_c2
    move-exception v0

    new-instance v1, Lcom/alipay/android/a/a/a/aa;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v0}, Lcom/alipay/android/a/a/a/aa;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
