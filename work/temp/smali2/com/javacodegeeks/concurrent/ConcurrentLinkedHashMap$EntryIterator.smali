.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;
.super Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V
    .registers 2

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1428
    invoke-super {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 1429
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    new-instance v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$WriteThroughEntry;

    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    iget-object v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget-object v4, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$WriteThroughEntry;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
