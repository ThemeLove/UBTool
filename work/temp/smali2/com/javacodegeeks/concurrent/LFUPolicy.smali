.class public Lcom/javacodegeeks/concurrent/LFUPolicy;
.super Ljava/lang/Object;
.source "LFUPolicy.java"

# interfaces
.implements Lcom/javacodegeeks/concurrent/EvictionPolicy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accessOrder()Z
    .registers 2

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public evictElement(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    invoke-interface {p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public insertionOrder()Z
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    .local p2, "accessedEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    invoke-interface {p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    .line 31
    .local v0, "lfuEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    :goto_4
    if-eq v0, p1, :cond_12

    invoke-interface {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAccessCount()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAccessCount()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 33
    :cond_12
    return-object v0

    .line 32
    :cond_13
    invoke-interface {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    goto :goto_4
.end method

.method public recordInsertion(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    .local p2, "insertedEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    const/4 v0, 0x0

    return-object v0
.end method
