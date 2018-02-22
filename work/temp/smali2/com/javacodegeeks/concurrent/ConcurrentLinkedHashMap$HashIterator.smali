.class abstract Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1353
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1342
    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1344
    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1347
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    iget-object v1, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v2, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-interface {v0, v1, v2}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1348
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAll(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1352
    :goto_22
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    return-void

    .line 1350
    :cond_29
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_22
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method nextEntry()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->snapshotHeader:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    if-ne v1, v2, :cond_c

    .line 1361
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1362
    :cond_c
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1363
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1365
    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    if-nez v0, :cond_a

    .line 1370
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1371
    :cond_a
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v1, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->lastReturned:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1373
    return-void
.end method
