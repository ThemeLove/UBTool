.class public Lcom/lidroid/xutils/task/PriorityExecutor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/task/PriorityExecutor$1;

    invoke-direct {v0}, Lcom/lidroid/xutils/task/PriorityExecutor$1;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;

    invoke-direct {v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x100

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/lidroid/xutils/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPoolSize()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPoolSize(I)V
    .registers 3

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_7
    return-void
.end method
