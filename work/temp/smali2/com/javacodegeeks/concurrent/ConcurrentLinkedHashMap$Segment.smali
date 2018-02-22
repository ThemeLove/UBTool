.class final Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentLinkedHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method constructor <init>(IFLcom/javacodegeeks/concurrent/EvictionPolicy;)V
    .registers 5
    .param p1, "initialCapacity"    # I
    .param p2, "lf"    # F
    .param p3, "ep"    # Lcom/javacodegeeks/concurrent/EvictionPolicy;

    .prologue
    .line 496
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 497
    iput p2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    .line 498
    iput-object p3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    .line 499
    invoke-static {p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->newArray(I)[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->setTable([Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 500
    return-void
.end method

.method static final newArray(I)[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;
    .registers 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 504
    new-array v0, p0, [Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-eqz v2, :cond_19

    .line 767
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 769
    :try_start_7
    iget-object v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 770
    .local v1, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, v1

    if-lt v0, v2, :cond_1a

    .line 774
    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    .line 775
    const/4 v2, 0x0

    iput v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_25

    .line 777
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 780
    .end local v0    # "i":I
    .end local v1    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :cond_19
    return-void

    .line 771
    .restart local v0    # "i":I
    .restart local v1    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :cond_1a
    :try_start_1a
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->recordRemoval(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 772
    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_25

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 776
    .end local v0    # "i":I
    .end local v1    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :catchall_25
    move-exception v2

    .line 777
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 778
    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 562
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-eqz v1, :cond_a

    .line 563
    invoke-virtual {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 564
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-nez v0, :cond_c

    .line 570
    .end local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 565
    .restart local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_c
    iget v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    if-ne v1, p2, :cond_1a

    iget-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 566
    const/4 v1, 0x1

    goto :goto_b

    .line 567
    :cond_1a
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_8
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 574
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget v5, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-eqz v5, :cond_a

    .line 575
    iget-object v3, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 576
    .local v3, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    array-length v2, v3

    .line 577
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-lt v1, v2, :cond_c

    .line 587
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :cond_a
    const/4 v5, 0x0

    :goto_b
    return v5

    .line 578
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :cond_c
    aget-object v0, v3, v1

    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_e
    if-nez v0, :cond_13

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 579
    :cond_13
    iget-object v4, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 580
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_1b

    .line 581
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->readValueUnderLock(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v4

    .line 582
    :cond_1b
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 583
    const/4 v5, 0x1

    goto :goto_b

    .line 578
    :cond_23
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_e
.end method

.method get(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p3, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    if-eqz v2, :cond_a

    .line 544
    invoke-virtual {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 545
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_8
    if-nez v0, :cond_c

    .line 558
    .end local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_b
    return-object v1

    .line 546
    .restart local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_c
    iget v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_2f

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 547
    iget-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 548
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_2a

    .line 549
    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    invoke-interface {v2}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->accessOrder()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 550
    iget-object v2, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    invoke-virtual {v0, p3, v2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->recordAccess(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/EvictionPolicy;)V

    goto :goto_b

    .line 553
    :cond_2a
    invoke-virtual {p0, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->readValueUnderLock(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 555
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_2f
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_8
.end method

.method getFirst(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .registers 4
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 521
    .local v0, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;ZLcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .registers 24
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 628
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p5, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 631
    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    .line 632
    .local v13, "c":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "c":I
    .local v14, "c":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->threshold:I

    if-le v13, v3, :cond_16

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->rehash(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 634
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-object/from16 v17, v0

    .line 635
    .local v17, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int v15, p2, v3

    .line 636
    .local v15, "index":I
    aget-object v5, v17, v15

    .line 637
    .local v5, "first":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v2, v5

    .line 638
    .local v2, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_26
    if-eqz v2, :cond_38

    iget v3, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_48

    iget-object v3, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 642
    :cond_38
    if-eqz v2, :cond_4b

    .line 643
    iget-object v0, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 644
    .local v16, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p4, :cond_44

    .line 645
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_83

    .line 661
    .end local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_44
    :goto_44
    invoke-virtual/range {p0 .. p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 659
    return-object v16

    .line 639
    :cond_48
    :try_start_48
    iget-object v2, v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_26

    .line 648
    :cond_4b
    const/16 v16, 0x0

    .line 649
    .restart local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 651
    .local v9, "now":J
    new-instance v2, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .end local v2    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    const-wide/16 v7, 0x1

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move-wide v11, v9

    invoke-direct/range {v2 .. v12}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;-><init>(Ljava/lang/Object;ILcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Ljava/lang/Object;JJJ)V

    .line 652
    .restart local v2    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    invoke-interface {v3}, Lcom/javacodegeeks/concurrent/EvictionPolicy;->insertionOrder()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->evictionPolicy:Lcom/javacodegeeks/concurrent/EvictionPolicy;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v3}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->recordInsertion(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/EvictionPolicy;)V

    .line 656
    :goto_7c
    aput-object v2, v17, v15

    .line 657
    move-object/from16 v0, p0

    iput v14, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I
    :try_end_82
    .catchall {:try_start_48 .. :try_end_82} :catchall_83

    goto :goto_44

    .line 660
    .end local v2    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "first":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v9    # "now":J
    .end local v14    # "c":I
    .end local v15    # "index":I
    .end local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v17    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :catchall_83
    move-exception v3

    .line 661
    invoke-virtual/range {p0 .. p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 662
    throw v3

    .line 655
    .restart local v2    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v5    # "first":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v9    # "now":J
    .restart local v14    # "c":I
    .restart local v15    # "index":I
    .restart local v16    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v17    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :cond_88
    :try_start_88
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->addBefore(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_83

    goto :goto_7c
.end method

.method readValueUnderLock(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 534
    :try_start_3
    iget-object v0, p1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    .line 536
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 534
    return-object v0

    .line 535
    :catchall_9
    move-exception v0

    .line 536
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 537
    throw v0
.end method

.method rehash(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 667
    .local v12, "oldTable":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    array-length v11, v12

    .line 668
    .local v11, "oldCapacity":I
    const/high16 v15, 0x40000000

    if-lt v11, v15, :cond_a

    .line 726
    :goto_9
    return-void

    .line 685
    :cond_a
    shl-int/lit8 v15, v11, 0x1

    invoke-static {v15}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->newArray(I)[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v9

    .line 686
    .local v9, "newTable":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    array-length v15, v9

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->threshold:I

    .line 687
    array-length v15, v9

    add-int/lit8 v14, v15, -0x1

    .line 688
    .local v14, "sizeMask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    if-lt v2, v11, :cond_2a

    .line 725
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_9

    .line 691
    :cond_2a
    aget-object v1, v12, v2

    .line 693
    .local v1, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    if-eqz v1, :cond_38

    .line 694
    iget-object v10, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 695
    .local v10, "next":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    iget v15, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    and-int v3, v15, v14

    .line 698
    .local v3, "idx":I
    if-nez v10, :cond_3b

    .line 699
    aput-object v1, v9, v3

    .line 688
    .end local v3    # "idx":I
    .end local v10    # "next":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 703
    .restart local v3    # "idx":I
    .restart local v10    # "next":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_3b
    move-object v7, v1

    .line 704
    .local v7, "lastRun":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move v6, v3

    .line 705
    .local v6, "lastIdx":I
    move-object v5, v10

    .line 706
    .local v5, "last":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_3e
    if-nez v5, :cond_56

    .line 714
    aput-object v7, v9, v6

    .line 717
    move-object v13, v1

    .local v13, "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_43
    if-eq v13, v7, :cond_38

    .line 718
    iget v15, v13, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    and-int v4, v15, v14

    .line 719
    .local v4, "k":I
    aget-object v8, v9, v4

    .line 720
    .local v8, "n":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p1

    invoke-virtual {v13, v8, v0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->clone(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v15

    aput-object v15, v9, v4

    .line 717
    iget-object v13, v13, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_43

    .line 708
    .end local v4    # "k":I
    .end local v8    # "n":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v13    # "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :cond_56
    iget v15, v5, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    and-int v4, v15, v14

    .line 709
    .restart local v4    # "k":I
    if-eq v4, v6, :cond_5e

    .line 710
    move v6, v4

    .line 711
    move-object v7, v5

    .line 707
    :cond_5e
    iget-object v5, v5, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_3e
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Ljava/lang/Object;
    .registers 15
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p4, "header":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 734
    :try_start_3
    iget v9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I

    add-int/lit8 v0, v9, -0x1

    .line 735
    .local v0, "c":I
    iget-object v7, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 736
    .local v7, "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    .line 737
    .local v3, "index":I
    aget-object v2, v7, v3

    .line 738
    .local v2, "first":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 739
    .local v1, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_11
    if-eqz v1, :cond_1f

    iget v9, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    if-ne v9, p2, :cond_43

    iget-object v9, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 742
    :cond_1f
    const/4 v5, 0x0

    .line 743
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_3f

    .line 744
    iget-object v8, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 745
    .local v8, "v":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_2c

    invoke-virtual {p3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 746
    :cond_2c
    move-object v5, v8

    .line 747
    invoke-virtual {v1, p4}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->recordRemoval(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V

    .line 751
    iget v9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->modCount:I

    .line 752
    iget-object v4, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 753
    .local v4, "newFirst":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    move-object v6, v2

    .local v6, "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_39
    if-ne v6, v1, :cond_46

    .line 755
    aput-object v4, v7, v3

    .line 756
    iput v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->count:I
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_4d

    .line 761
    .end local v4    # "newFirst":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_3f
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 759
    return-object v5

    .line 740
    :cond_43
    :try_start_43
    iget-object v1, v1, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    goto :goto_11

    .line 754
    .restart local v4    # "newFirst":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .restart local v6    # "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .restart local v8    # "v":Ljava/lang/Object;, "TV;"
    :cond_46
    invoke-virtual {v6, v4, p4}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->clone(Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v4

    .line 753
    iget-object v6, v6, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    goto :goto_39

    .line 760
    .end local v0    # "c":I
    .end local v1    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v2    # "first":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v4    # "newFirst":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v6    # "p":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    .end local v7    # "tab":[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .end local v8    # "v":Ljava/lang/Object;, "TV;"
    :catchall_4d
    move-exception v9

    .line 761
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 762
    throw v9
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 609
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 611
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 612
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_15

    iget v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_20

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 615
    :cond_15
    const/4 v1, 0x0

    .line 616
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1c

    .line 617
    iget-object v1, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 618
    iput-object p3, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_23

    .line 622
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1c
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 620
    return-object v1

    .line 613
    :cond_20
    :try_start_20
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_23

    goto :goto_7

    .line 621
    .end local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_23
    move-exception v2

    .line 622
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 623
    throw v2
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->lock()V

    .line 593
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->getFirst(I)Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    move-result-object v0

    .line 594
    .local v0, "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :goto_7
    if-eqz v0, :cond_15

    iget v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->hash:I

    if-ne v2, p2, :cond_27

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 597
    :cond_15
    const/4 v1, 0x0

    .line 598
    .local v1, "replaced":Z
    if-eqz v0, :cond_23

    iget-object v2, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 599
    const/4 v1, 0x1

    .line 600
    iput-object p4, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2a

    .line 604
    :cond_23
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 602
    return v1

    .line 595
    .end local v1    # "replaced":Z
    :cond_27
    :try_start_27
    iget-object v0, v0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;->next:Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2a

    goto :goto_7

    .line 603
    .end local v0    # "e":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry<TK;TV;>;"
    :catchall_2a
    move-exception v2

    .line 604
    invoke-virtual {p0}, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->unlock()V

    .line 605
    throw v2
.end method

.method setTable([Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;)V
    .registers 4
    .param p1, "newTable"    # [Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p0, "this":Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;, "Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap<TK;TV;>.Segment<TK;TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->threshold:I

    .line 513
    iput-object p1, p0, Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$Segment;->table:[Lcom/javacodegeeks/concurrent/ConcurrentLinkedHashMap$HashEntry;

    .line 514
    return-void
.end method
