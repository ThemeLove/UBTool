.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ConcurrentLinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V
    .registers 2

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->clear()V

    .line 1451
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1435
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-virtual {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->size()I

    move-result v0

    return v0
.end method
