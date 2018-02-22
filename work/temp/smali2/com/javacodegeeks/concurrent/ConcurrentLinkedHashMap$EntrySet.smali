.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
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
    .line 1472
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->clear()V

    .line 1497
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1477
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_6

    .line 1481
    :cond_5
    :goto_5
    return v2

    :cond_6
    move-object v0, p1

    .line 1479
    check-cast v0, Ljava/util/Map$Entry;

    .line 1480
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1481
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1474
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1484
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    .line 1485
    const/4 v1, 0x0

    .line 1487
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 1486
    check-cast v0, Ljava/util/Map$Entry;

    .line 1487
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
