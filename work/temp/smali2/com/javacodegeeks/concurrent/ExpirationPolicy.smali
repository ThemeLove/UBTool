.class public Lcom/javacodegeeks/concurrent/ExpirationPolicy;
.super Ljava/lang/Object;
.source "ExpirationPolicy.java"

# interfaces
.implements Lcom/javacodegeeks/concurrent/EvictionPolicy;


# instance fields
.field ageThresholdMillis:J

.field idleTimeThresholdMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "ageThresholdMillis"    # J
    .param p3, "idleTimeThresholdMillis"    # J

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/javacodegeeks/concurrent/ExpirationPolicy;->ageThresholdMillis:J

    .line 12
    iput-wide p3, p0, Lcom/javacodegeeks/concurrent/ExpirationPolicy;->idleTimeThresholdMillis:J

    .line 13
    return-void
.end method


# virtual methods
.method public accessOrder()Z
    .registers 2

    .prologue
    .line 17
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
    .line 27
    .local p1, "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    invoke-interface {p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public insertionOrder()Z
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .registers 11
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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 38
    .local v4, "now":J
    invoke-interface {p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getCreationTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 39
    .local v0, "accessedEntryAge":J
    invoke-interface {p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getLastAccessTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 40
    .local v2, "accessedEntryIdleTime":J
    iget-wide v6, p0, Lcom/javacodegeeks/concurrent/ExpirationPolicy;->idleTimeThresholdMillis:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_1d

    iget-wide v6, p0, Lcom/javacodegeeks/concurrent/ExpirationPolicy;->ageThresholdMillis:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_1d

    .line 43
    .end local p1    # "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    :goto_1c
    return-object p1

    .restart local p1    # "head":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry<**>;"
    :cond_1d
    invoke-interface {p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;->getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object p1

    goto :goto_1c
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
