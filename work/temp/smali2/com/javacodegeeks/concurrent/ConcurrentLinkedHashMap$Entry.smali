.class public interface abstract Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
.super Ljava/lang/Object;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract getAccessCount()J
.end method

.method public abstract getAfter()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getBefore()Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract getCreationTime()J
.end method

.method public abstract getLastAccessTime()J
.end method
