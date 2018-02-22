.class public Lcom/javacodegeeks/concurrent/RandomPolicy;
.super Ljava/lang/Object;
.source "RandomPolicy.java"

# interfaces
.implements Lcom/javacodegeeks/concurrent/EvictionPolicy;


# instance fields
.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/RandomPolicy;->random:Ljava/util/Random;

    .line 7
    return-void
.end method


# virtual methods
.method public accessOrder()Z
    .registers 2

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public evictElement(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 6
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
    .line 23
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/RandomPolicy;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 24
    .local v1, "hops":I
    invoke-interface {p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    .line 25
    .local v0, "entryToEvict":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_e

    .line 27
    return-object v0

    .line 26
    :cond_e
    invoke-interface {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public insertionOrder()Z
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
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
    .line 37
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    .local p2, "accessedEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 32
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    .local p2, "insertedEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    const/4 v0, 0x0

    return-object v0
.end method
