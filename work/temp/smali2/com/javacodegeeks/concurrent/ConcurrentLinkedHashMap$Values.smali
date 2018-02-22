.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V
    .registers 2

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->clear()V

    .line 1469
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1456
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$ValueIterator;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$ValueIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
