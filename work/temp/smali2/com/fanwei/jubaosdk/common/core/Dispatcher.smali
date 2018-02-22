.class public final Lcom/fanwei/jubaosdk/common/core/Dispatcher;
.super Ljava/lang/Object;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxCount:I

.field private readyAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fanwei/jubaosdk/common/core/Call;",
            ">;"
        }
    .end annotation
.end field

.field private runningAsyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fanwei/jubaosdk/common/core/Call;",
            ">;"
        }
    .end annotation
.end field

.field private runningSyncCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/fanwei/jubaosdk/common/core/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    iput-object p1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private promoteCalls()V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    if-lt v0, v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/jubaosdk/common/core/Call;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v2, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    if-lt v0, v2, :cond_19

    goto :goto_a
.end method


# virtual methods
.method public declared-synchronized cancelAll()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/jubaosdk/common/core/Call;

    invoke-interface {v0}, Lcom/fanwei/jubaosdk/common/core/Call;->cancel()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/jubaosdk/common/core/Call;

    invoke-interface {v0}, Lcom/fanwei/jubaosdk/common/core/Call;->cancel()V

    goto :goto_20

    :cond_30
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/jubaosdk/common/core/Call;

    invoke-interface {v0}, Lcom/fanwei/jubaosdk/common/core/Call;->cancel()V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_17

    goto :goto_36

    :cond_46
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enqueue(Lcom/fanwei/jubaosdk/common/core/Call;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1f

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_17

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized executed(Lcom/fanwei/jubaosdk/common/core/Call;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized executorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "Jubaosdk Dispatcher"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/fanwei/jubaosdk/common/util/FunctionUtil;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_20
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized finishedAsync(Lcom/fanwei/jubaosdk/common/core/Call;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Async Call wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->promoteCalls()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized finishedSync(Lcom/fanwei/jubaosdk/common/core/Call;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Sync Call wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_14
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getMaxCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queuedCalls()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/core/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queuedCallsCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->readyAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runningCalls()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fanwei/jubaosdk/common/core/Call;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized runningCallsCount()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningAsyncCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->runningSyncCalls:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_10

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxCount(I)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_20

    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxCount < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    :try_start_20
    iput p1, p0, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->maxCount:I

    invoke-direct {p0}, Lcom/fanwei/jubaosdk/common/core/Dispatcher;->promoteCalls()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    monitor-exit p0

    return-void
.end method
