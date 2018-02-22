.class public Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;
.super Ljava/util/AbstractQueue;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5fcfb35fbf1a7e0aL


# instance fields
.field private final capacity:I

.field private final count:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient head:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private transient last:Lcom/lidroid/xutils/task/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private final putLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final takeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    if-gtz p1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_30
    iput p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    new-instance v0, Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;-><init>(I)V

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    :try_start_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_2e

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_20
    :try_start_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_33
    :try_start_33
    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v4, :cond_3f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v4, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v4, v0}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_2e

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method

.method private _dequeue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method private _enqueue(Lcom/lidroid/xutils/task/Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :goto_3
    iget-object v2, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v2, :cond_11

    move v0, v1

    :goto_8
    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object p1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object p1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :cond_10
    return-void

    :cond_11
    iget-object v2, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Lcom/lidroid/xutils/task/Node;->getPriority()Lcom/lidroid/xutils/task/Priority;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lidroid/xutils/task/Priority;->ordinal()I

    move-result v4

    if-le v3, v4, :cond_2b

    iput-object p1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v2, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    const/4 v0, 0x1

    goto :goto_8

    :cond_2b
    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    goto :goto_3
.end method

.method private declared-synchronized opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_9

    :try_start_3
    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_dequeue()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    move-result-object v0

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->_enqueue(Lcom/lidroid/xutils/task/Node;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    const/4 v0, 0x0

    goto :goto_7

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    new-instance v0, Lcom/lidroid/xutils/task/Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :goto_13
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private signalNotEmpty()V
    .registers 3

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private signalNotFull()V
    .registers 3

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    :goto_a
    if-nez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1e

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :cond_14
    :try_start_14
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1e

    goto :goto_a

    :catchall_1e
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    :goto_5
    iget-object v1, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    if-nez v1, :cond_21

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_29

    :cond_1d
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-void

    :cond_21
    :try_start_21
    iput-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_29

    move-object v0, v1

    goto :goto_5

    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_7
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_23

    :goto_b
    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_3

    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_23

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_20
    :try_start_20
    iget-object v1, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_23

    goto :goto_b

    :catchall_23
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_a
    if-ne p1, p0, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_12
    if-gtz p2, :cond_15

    :goto_14
    return v1

    :cond_15
    iget-object v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1a
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    move-object v4, v3

    move v3, v1

    :goto_28
    if-lt v3, v2, :cond_43

    if-lez v3, :cond_7c

    iput-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v3

    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_78

    if-ne v3, v4, :cond_56

    :goto_39
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_41

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_41
    move v1, v2

    goto :goto_14

    :cond_43
    :try_start_43
    iget-object v5, v4, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    invoke-virtual {v5}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    iput-object v4, v4, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_58

    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_28

    :cond_56
    move v0, v1

    goto :goto_39

    :catchall_58
    move-exception v2

    if-lez v3, :cond_7a

    :try_start_5b
    iput-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v3

    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_78

    if-ne v3, v4, :cond_76

    :goto_68
    :try_start_68
    throw v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_6d
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_75

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_75
    throw v0

    :cond_76
    move v0, v1

    goto :goto_68

    :catchall_78
    move-exception v0

    goto :goto_6d

    :cond_7a
    move v0, v1

    goto :goto_68

    :cond_7c
    move v0, v1

    goto :goto_39
.end method

.method fullyLock()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method fullyUnlock()V
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue$Itr;-><init>(Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_9

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_9
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    new-instance v3, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v3, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_20
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget v6, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v5, v6, :cond_3a

    invoke-direct {p0, v3}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v2, v3, :cond_3a

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_46

    :cond_3a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_42

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_42
    if-ltz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_14

    :catchall_46
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_4b
    move v0, v1

    goto :goto_14
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_13
    :try_start_13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v4, v5, :cond_3c

    new-instance v0, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v1, v3, :cond_32

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_4e

    :cond_32
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_3a
    const/4 v0, 0x1

    :goto_3b
    return v0

    :cond_3c
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_47

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_3b

    :cond_47
    :try_start_47
    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4e

    move-result-wide v0

    goto :goto_13

    :catchall_4e
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_f
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v2, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_21

    if-nez v2, :cond_19

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9

    :cond_19
    :try_start_19
    invoke-virtual {v2}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_9

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-object v1

    :cond_a
    const/4 v0, -0x1

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_27

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_27

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_32

    :cond_27
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v2, :cond_9

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    goto :goto_9

    :catchall_32
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_c
    :try_start_c
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_23

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_3f

    :cond_23
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v1, v2, :cond_2d

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_2d
    :goto_2d
    return-object v0

    :cond_2e
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gtz v5, :cond_38

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2d

    :cond_38
    :try_start_38
    iget-object v5, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v5, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3f

    move-result-wide v1

    goto :goto_c

    :catchall_3f
    move-exception v0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Lcom/lidroid/xutils/task/Node;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/task/Node;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->putLock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-eq v3, v4, :cond_37

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ge v2, v3, :cond_2e

    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_3d

    :cond_2e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotEmpty()V

    :cond_36
    return-void

    :cond_37
    :try_start_37
    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_14

    :catchall_3d
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .registers 3

    iget v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_7
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v1, v2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_29

    :goto_b
    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    goto :goto_3

    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {p0, v1, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_29

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_23
    :try_start_23
    iget-object v2, v1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_29

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_b

    :catchall_29
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->takeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->opQueue(Lcom/lidroid/xutils/task/Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1e

    iget-object v3, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    :cond_1e
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->signalNotFull()V

    :cond_28
    return-object v2

    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2f

    goto :goto_7

    :catchall_2f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    :goto_10
    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object v3

    :cond_16
    add-int/lit8 v2, v1, 0x1

    :try_start_18
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    move v1, v2

    goto :goto_10

    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyLock()V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_1b
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->head:Lcom/lidroid/xutils/task/Node;

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    :goto_20
    if-nez v0, :cond_2c

    array-length v0, p1

    if-le v0, v1, :cond_28

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_38

    :cond_28
    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    return-object p1

    :cond_2c
    add-int/lit8 v2, v1, 0x1

    :try_start_2e
    invoke-virtual {v0}, Lcom/lidroid/xutils/task/Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object v0, v0, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_38

    move v1, v2

    goto :goto_20

    :catchall_38
    move-exception v0

    invoke-virtual {p0}, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method unlink(Lcom/lidroid/xutils/task/Node;Lcom/lidroid/xutils/task/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;",
            "Lcom/lidroid/xutils/task/Node",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/task/Node;->setValue(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iput-object v0, p2, Lcom/lidroid/xutils/task/Node;->next:Lcom/lidroid/xutils/task/Node;

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    if-ne v0, p1, :cond_e

    iput-object p2, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->last:Lcom/lidroid/xutils/task/Node;

    :cond_e
    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    iget v1, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->capacity:I

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/lidroid/xutils/task/PriorityObjectBlockingQueue;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1d
    return-void
.end method
