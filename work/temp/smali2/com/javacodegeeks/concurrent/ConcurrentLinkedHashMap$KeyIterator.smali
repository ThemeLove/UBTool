.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;
.super Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/Enumeration;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;",
        "Ljava/util/Enumeration",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;


# direct methods
.method constructor <init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V
    .registers 2

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;->this$0:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;

    invoke-direct {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1381
    invoke-super {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1382
    invoke-super {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;->nextEntry()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method
