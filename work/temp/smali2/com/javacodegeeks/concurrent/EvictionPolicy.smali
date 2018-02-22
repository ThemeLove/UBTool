.class public interface abstract Lcom/javacodegeeks/concurrent/EvictionPolicy;
.super Ljava/lang/Object;
.source "EvictionPolicy.java"


# virtual methods
.method public abstract accessOrder()Z
.end method

.method public abstract evictElement(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<**>;"
        }
    .end annotation
.end method

.method public abstract insertionOrder()Z
.end method

.method public abstract recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
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
.end method

.method public abstract recordInsertion(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
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
.end method
