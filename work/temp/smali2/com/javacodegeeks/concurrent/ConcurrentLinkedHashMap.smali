.class public Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntryIterator;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashIterator;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$ValueIterator;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;,
        Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$WriteThroughEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field static final UNLIMITED_SIZE:I = 0x7fffffff

.field private static final serialVersionUID:J = -0x5fafd0f369b174d4L


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

.field transient header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final maxSize:I

.field transient modifyListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 882
    const/high16 v2, 0x3f400000

    const v4, 0x7fffffff

    new-instance v5, Lcom/javacodegeeks/concurrent/FIFOPolicy;

    invoke-direct {v5}, Lcom/javacodegeeks/concurrent/FIFOPolicy;-><init>()V

    move-object v0, p0

    move v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;-><init>(IFIILcom/javacodegeeks/concurrent/EvictionPolicy;)V

    .line 883
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8
    .param p1, "initialCapacity"    # I

    .prologue
    .line 874
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/high16 v2, 0x3f400000

    const/16 v3, 0x10

    const v4, 0x7fffffff

    new-instance v5, Lcom/javacodegeeks/concurrent/FIFOPolicy;

    invoke-direct {v5}, Lcom/javacodegeeks/concurrent/FIFOPolicy;-><init>()V

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;-><init>(IFIILcom/javacodegeeks/concurrent/EvictionPolicy;)V

    .line 875
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 9
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .line 861
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/16 v3, 0x10

    const v4, 0x7fffffff

    new-instance v5, Lcom/javacodegeeks/concurrent/FIFOPolicy;

    invoke-direct {v5}, Lcom/javacodegeeks/concurrent/FIFOPolicy;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;-><init>(IFIILcom/javacodegeeks/concurrent/EvictionPolicy;)V

    .line 862
    return-void
.end method

.method public constructor <init>(IFIILcom/javacodegeeks/concurrent/EvictionPolicy;)V
    .registers 24
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I
    .param p4, "maxSize"    # I
    .param p5, "evictionPolicy"    # Lcom/javacodegeeks/concurrent/EvictionPolicy;

    .prologue
    .line 806
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 808
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_c

    if-ltz p1, :cond_c

    if-gtz p3, :cond_12

    .line 809
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 811
    :cond_12
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->maxSize:I

    .line 812
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    .line 814
    const/high16 v2, 0x10000

    move/from16 v0, p3

    if-le v0, v2, :cond_26

    .line 815
    const/high16 p3, 0x10000

    .line 818
    :cond_26
    const/16 v16, 0x0

    .line 819
    .local v16, "sshift":I
    const/16 v17, 0x1

    .line 820
    .local v17, "ssize":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, p3

    if-lt v0, v1, :cond_9b

    .line 824
    rsub-int/lit8 v2, v16, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentShift:I

    .line 825
    add-int/lit8 v2, v17, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentMask:I

    .line 826
    invoke-static/range {v17 .. v17}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->newArray(I)[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    .line 828
    const/high16 v2, 0x40000000

    move/from16 v0, p1

    if-le v0, v2, :cond_4c

    .line 829
    const/high16 p1, 0x40000000

    .line 830
    :cond_4c
    div-int v13, p1, v17

    .line 831
    .local v13, "c":I
    mul-int v2, v13, v17

    move/from16 v0, p1

    if-ge v2, v0, :cond_56

    .line 832
    add-int/lit8 v13, v13, 0x1

    .line 833
    :cond_56
    const/4 v14, 0x1

    .line 834
    .local v14, "cap":I
    :goto_57
    if-lt v14, v13, :cond_a0

    .line 837
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    array-length v2, v2

    if-lt v15, v2, :cond_a3

    .line 840
    new-instance v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    invoke-direct/range {v2 .. v12}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v4, v3, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v4, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->modifyListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->cloneAllFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 844
    return-void

    .line 821
    .end local v13    # "c":I
    .end local v14    # "cap":I
    .end local v15    # "i":I
    :cond_9b
    add-int/lit8 v16, v16, 0x1

    .line 822
    shl-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 835
    .restart local v13    # "c":I
    .restart local v14    # "cap":I
    :cond_a0
    shl-int/lit8 v14, v14, 0x1

    goto :goto_57

    .line 838
    .restart local v15    # "i":I
    :cond_a3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    new-instance v3, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {v3, v14, v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;-><init>(IFLcom/javacodegeeks/concurrent/EvictionPolicy;)V

    aput-object v3, v2, v15

    .line 837
    add-int/lit8 v15, v15, 0x1

    goto :goto_5a
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/16 v3, 0x10

    const/high16 v2, 0x3f400000

    .line 894
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 896
    const v4, 0x7fffffff

    new-instance v5, Lcom/javacodegeeks/concurrent/FIFOPolicy;

    invoke-direct {v5}, Lcom/javacodegeeks/concurrent/FIFOPolicy;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;-><init>(IFIILcom/javacodegeeks/concurrent/EvictionPolicy;)V

    .line 897
    invoke-virtual {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 898
    return-void
.end method

.method private static hash(I)I
    .registers 3
    .param p0, "h"    # I

    .prologue
    .line 193
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 194
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 195
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 196
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 197
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 198
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1540
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    array-length v3, v3

    if-lt v0, v3, :cond_14

    .line 1549
    :goto_9
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1550
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1551
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_21

    .line 1555
    return-void

    .line 1544
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_14
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v3, v4}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->setTable([Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1553
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_21
    invoke-virtual {p0, v1, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 9
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v6, 0x0

    .line 1512
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1514
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    array-length v5, v5

    if-lt v2, v5, :cond_11

    .line 1529
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1530
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1531
    return-void

    .line 1515
    :cond_11
    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    aget-object v3, v5, v2

    .line 1516
    .local v3, "seg":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 1518
    :try_start_18
    iget-object v4, v3, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1519
    .local v4, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v5, v4
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_38

    if-lt v1, v5, :cond_24

    .line 1526
    invoke-virtual {v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 1514
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1520
    :cond_24
    :try_start_24
    aget-object v0, v4, v1

    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_26
    if-nez v0, :cond_2b

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 1521
    :cond_2b
    iget-object v5, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1522
    iget-object v5, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1520
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_38

    goto :goto_26

    .line 1525
    .end local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v1    # "i":I
    .end local v4    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :catchall_38
    move-exception v5

    .line 1526
    invoke-virtual {v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 1527
    throw v5
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 1205
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    array-length v1, v1

    if-lt v0, v1, :cond_11

    .line 1207
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v3, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->after:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    iput-object v3, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->before:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1208
    return-void

    .line 1206
    :cond_11
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v1, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->clear(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1090
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1012
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1013
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1028
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    if-nez p1, :cond_8

    .line 1029
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1033
    :cond_8
    iget-object v6, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    .line 1034
    .local v6, "segments":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    array-length v7, v6

    new-array v4, v7, [I

    .line 1037
    .local v4, "mc":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_e
    const/4 v7, 0x2

    if-lt v3, v7, :cond_1f

    .line 1057
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    array-length v7, v6

    if-lt v2, v7, :cond_53

    .line 1059
    const/4 v1, 0x0

    .line 1061
    .local v1, "found":Z
    const/4 v2, 0x0

    :goto_17
    :try_start_17
    array-length v7, v6
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_68

    if-lt v2, v7, :cond_5b

    .line 1068
    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    array-length v7, v6

    if-lt v2, v7, :cond_76

    .line 1071
    .end local v1    # "found":Z
    :goto_1e
    return v1

    .line 1038
    .end local v2    # "i":I
    :cond_1f
    const/4 v5, 0x0

    .line 1039
    .local v5, "mcsum":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_21
    array-length v7, v6

    if-lt v2, v7, :cond_2f

    .line 1044
    const/4 v0, 0x1

    .line 1045
    .local v0, "cleanSweep":Z
    if-eqz v5, :cond_2b

    .line 1046
    const/4 v2, 0x0

    :goto_28
    array-length v7, v6

    if-lt v2, v7, :cond_43

    .line 1053
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_50

    .line 1054
    const/4 v1, 0x0

    goto :goto_1e

    .line 1040
    .end local v0    # "cleanSweep":Z
    :cond_2f
    aget-object v7, v6, v2

    iget v7, v7, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    aput v7, v4, v2

    add-int/2addr v5, v7

    .line 1041
    aget-object v7, v6, v2

    invoke-virtual {v7, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 1042
    const/4 v1, 0x1

    goto :goto_1e

    .line 1039
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1047
    .restart local v0    # "cleanSweep":Z
    :cond_43
    aget v7, v4, v2

    aget-object v8, v6, v2

    iget v8, v8, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    if-eq v7, v8, :cond_4d

    .line 1048
    const/4 v0, 0x0

    .line 1049
    goto :goto_2b

    .line 1046
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1037
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1058
    .end local v0    # "cleanSweep":Z
    .end local v5    # "mcsum":I
    :cond_53
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 1057
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1062
    .restart local v1    # "found":Z
    :cond_5b
    :try_start_5b
    aget-object v7, v6, v2

    invoke-virtual {v7, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_68

    move-result v7

    if-eqz v7, :cond_65

    .line 1063
    const/4 v1, 0x1

    .line 1064
    goto :goto_1a

    .line 1061
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1067
    :catchall_68
    move-exception v7

    .line 1068
    const/4 v2, 0x0

    :goto_6a
    array-length v8, v6

    if-lt v2, v8, :cond_6e

    .line 1070
    throw v7

    .line 1069
    :cond_6e
    aget-object v8, v6, v2

    invoke-virtual {v8}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 1069
    :cond_76
    aget-object v7, v6, v2

    invoke-virtual {v7}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 1068
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1335
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$ValueIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1314
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    .line 1315
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_5

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_4
    return-object v0

    .restart local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_5
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;

    .end local v0    # "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$EntrySet;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 999
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v1, p1, v0, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->get(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 8

    .prologue
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 906
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    .line 916
    .local v3, "segments":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    array-length v5, v3

    new-array v1, v5, [I

    .line 917
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 918
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v5, v3

    if-lt v0, v5, :cond_13

    .line 927
    if-eqz v2, :cond_11

    .line 928
    const/4 v0, 0x0

    :goto_e
    array-length v5, v3

    if-lt v0, v5, :cond_23

    .line 934
    :cond_11
    const/4 v4, 0x1

    :cond_12
    return v4

    .line 919
    :cond_13
    aget-object v5, v3, v0

    iget v5, v5, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-nez v5, :cond_12

    .line 922
    aget-object v5, v3, v0

    iget v5, v5, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 929
    :cond_23
    aget-object v5, v3, v0

    iget v5, v5, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-nez v5, :cond_12

    .line 930
    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_12

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1272
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    .line 1273
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_5

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :goto_4
    return-object v0

    .restart local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_5
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;

    .end local v0    # "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeySet;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$KeyIterator;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_8

    .line 1108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1110
    :cond_8
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-interface {v0, v1}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->evictElement(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v6

    check-cast v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1111
    .local v6, "evictEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v6, :cond_2d

    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->maxSize:I

    if-lt v0, v1, :cond_2d

    .line 1112
    iget v0, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v0

    iget-object v1, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v3, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    iget-object v4, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    .line 1114
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v2

    .line 1115
    .local v2, "hash":I
    invoke-virtual {p0, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;ZLcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1147
    return-void

    .line 1145
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1146
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1126
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_8

    .line 1127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1129
    :cond_8
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-interface {v0, v1}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->evictElement(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Entry;

    move-result-object v6

    check-cast v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 1130
    .local v6, "evictEntry":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v6, :cond_2d

    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->maxSize:I

    if-lt v0, v1, :cond_2d

    .line 1131
    iget v0, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v0

    iget-object v1, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    iget v3, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    iget-object v4, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    .line 1133
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v2

    .line 1134
    .local v2, "hash":I
    invoke-virtual {p0, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;ZLcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1159
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1160
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 1169
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1170
    .local v0, "hash":I
    if-nez p2, :cond_c

    .line 1172
    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v2

    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->header:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    invoke-virtual {v2, p1, v0, p2, v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    goto :goto_b
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1252
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p2, :cond_8

    .line 1196
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1197
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1198
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1181
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p2, :cond_4

    if-nez p3, :cond_a

    .line 1182
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1183
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->hash(I)I

    move-result v0

    .line 1184
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    iget v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 12

    .prologue
    .line 945
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v6, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->segments:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    .line 946
    .local v6, "segments":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    const-wide/16 v7, 0x0

    .line 947
    .local v7, "sum":J
    const-wide/16 v0, 0x0

    .line 948
    .local v0, "check":J
    array-length v9, v6

    new-array v4, v9, [I

    .line 951
    .local v4, "mc":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_a
    const/4 v9, 0x2

    if-lt v3, v9, :cond_2a

    .line 971
    :cond_d
    cmp-long v9, v0, v7

    if-eqz v9, :cond_1f

    .line 972
    const-wide/16 v7, 0x0

    .line 973
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v9, v6

    if-lt v2, v9, :cond_64

    .line 975
    const/4 v2, 0x0

    :goto_18
    array-length v9, v6

    if-lt v2, v9, :cond_6c

    .line 977
    const/4 v2, 0x0

    :goto_1c
    array-length v9, v6

    if-lt v2, v9, :cond_75

    .line 980
    .end local v2    # "i":I
    :cond_1f
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-lez v9, :cond_7d

    .line 981
    const v9, 0x7fffffff

    .line 983
    :goto_29
    return v9

    .line 952
    :cond_2a
    const-wide/16 v0, 0x0

    .line 953
    const-wide/16 v7, 0x0

    .line 954
    const/4 v5, 0x0

    .line 955
    .local v5, "mcsum":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30
    array-length v9, v6

    if-lt v2, v9, :cond_40

    .line 959
    if-eqz v5, :cond_39

    .line 960
    const/4 v2, 0x0

    :goto_36
    array-length v9, v6

    if-lt v2, v9, :cond_50

    .line 968
    :cond_39
    :goto_39
    cmp-long v9, v0, v7

    if-eqz v9, :cond_d

    .line 951
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 956
    :cond_40
    aget-object v9, v6, v2

    iget v9, v9, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 957
    aget-object v9, v6, v2

    iget v9, v9, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    aput v9, v4, v2

    add-int/2addr v5, v9

    .line 955
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 961
    :cond_50
    aget-object v9, v6, v2

    iget v9, v9, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    .line 962
    aget v9, v4, v2

    aget-object v10, v6, v2

    iget v10, v10, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_61

    .line 963
    const-wide/16 v0, -0x1

    .line 964
    goto :goto_39

    .line 960
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 974
    .end local v5    # "mcsum":I
    :cond_64
    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 973
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 976
    :cond_6c
    aget-object v9, v6, v2

    iget v9, v9, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 978
    :cond_75
    aget-object v9, v6, v2

    invoke-virtual {v9}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 977
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 983
    .end local v2    # "i":I
    :cond_7d
    long-to-int v9, v7

    goto :goto_29
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1293
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->values:Ljava/util/Collection;

    .line 1294
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_5

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :goto_4
    return-object v0

    .restart local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_5
    new-instance v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;

    .end local v0    # "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Values;-><init>(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method
