.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field accessCount:J

.field after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field final creationTime:J

.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field lastAccessedTime:J

.field modifyListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V
    .registers 11
    .param p2, "hash"    # I
    .param p5, "accessCount"    # J
    .param p7, "creationTime"    # J
    .param p9, "lastAccessedTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;TV;JJJ)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    .line 239
    iput p2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    .line 240
    iput-object p3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 241
    iput-object p4, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 242
    iput-wide p5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    .line 243
    iput-wide p7, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->creationTime:J

    .line 244
    iput-wide p9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    .line 245
    return-void
.end method

.method private checkForCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-ltz v0, :cond_a

    .line 359
    const/4 v0, 0x1

    .line 362
    :goto_9
    return v0

    .line 361
    :cond_a
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 362
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private checkForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    if-gtz v0, :cond_f

    .line 336
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->modifyListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 337
    const/4 v0, 0x1

    .line 340
    :goto_e
    return v0

    .line 339
    :cond_f
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 340
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private grandModifyAndCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->modifyListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 347
    return-void
.end method

.method private grandModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 368
    return-void
.end method

.method static final newArray(I)[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .registers 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    new-array v0, p0, [Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method

.method private waitForCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->checkForCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 355
    return-void

    .line 352
    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :try_start_a
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_0

    .line 353
    :catch_e
    move-exception v0

    goto :goto_0
.end method

.method private waitForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_0
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->checkForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    return-void

    .line 329
    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :try_start_a
    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_0

    .line 330
    :catch_e
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "existingEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 265
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 266
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object p0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 267
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object p0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 268
    return-void
.end method

.method public clone(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "next":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .local p2, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->waitForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 303
    iget-object v11, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 304
    .local v11, "nextEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->remove()V

    .line 305
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    iget-object v4, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    iget-wide v7, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->creationTime:J

    iget-wide v9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V

    .line 306
    .local v0, "theClone":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {v0, v11}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 307
    invoke-direct {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyAndCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 308
    return-object v0
.end method

.method public cloneAll(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->waitForCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 313
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v4, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    iget-wide v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    iget-wide v7, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->creationTime:J

    iget-wide v9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    invoke-direct/range {v0 .. v10}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V

    .line 314
    .local v0, "rootClone":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iput-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 316
    iget-object v12, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 317
    .local v12, "pointer":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_1c
    if-ne v12, p1, :cond_22

    .line 322
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 323
    return-object v0

    .line 318
    :cond_22
    new-instance v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v2, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v3, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    iget-object v4, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v5, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    iget-wide v6, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    iget-wide v8, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->creationTime:J

    iget-wide v10, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    invoke-direct/range {v1 .. v11}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V

    .line 319
    .local v1, "nextClone":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {v1, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 320
    iget-object v12, v12, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_1c
.end method

.method public getAccessCount()J
    .registers 3

    .prologue
    .line 393
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    return-wide v0
.end method

.method public getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method

.method public getBefore()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 397
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->creationTime:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastAccessTime()J
    .registers 3

    .prologue
    .line 401
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/EvictionPolicy;)V
    .registers 7
    .param p2, "evictionPolicy"    # Lcom/javacodegeeks/concurrent/EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;",
            "Lcom/javacodegeeks/concurrent/EvictionPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->waitForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 278
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->remove()V

    .line 279
    invoke-interface {p2, p1, p0}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    check-cast v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 280
    iget-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->accessCount:J

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->lastAccessedTime:J

    .line 282
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyAndCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 283
    return-void
.end method

.method recordInsertion(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/EvictionPolicy;)V
    .registers 4
    .param p2, "evictionPolicy"    # Lcom/javacodegeeks/concurrent/EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;",
            "Lcom/javacodegeeks/concurrent/EvictionPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->waitForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 291
    invoke-interface {p2, p1, p0}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->recordInsertion(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    check-cast v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyAndCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 293
    return-void
.end method

.method recordRemoval(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->waitForModifyPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 297
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->remove()V

    .line 298
    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->grandModifyAndCloneAllPermition(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 299
    return-void
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 256
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 257
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 258
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.HashEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 380
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 381
    return-object v0
.end method
