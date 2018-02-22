.class final Lokhttp3/internal/framed/Hpack$Writer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/framed/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# static fields
.field private static final SETTINGS_HEADER_TABLE_SIZE:I = 0x1000

.field private static final SETTINGS_HEADER_TABLE_SIZE_LIMIT:I = 0x4000


# instance fields
.field dynamicTable:[Lokhttp3/internal/framed/Header;

.field dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field headerCount:I

.field headerTableSizeSetting:I

.field maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I


# direct methods
.method constructor <init>(ILokio/Buffer;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/Header;

    iput-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iput-object p2, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lokio/Buffer;)V
    .registers 3

    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/framed/Hpack$Writer;-><init>(ILokio/Buffer;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .registers 3

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_d

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_e

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    goto :goto_d
.end method

.method private clearDynamicTable()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    return-void
.end method

.method private evictToRecoverBytes(I)I
    .registers 8

    const/4 v1, 0x0

    if-lez p1, :cond_51

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    if-lt v0, v2, :cond_2b

    if-lez p1, :cond_2b

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr p1, v2

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/framed/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    :cond_51
    return v1
.end method

.method private insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V
    .registers 8

    iget v0, p1, Lokhttp3/internal/framed/Header;->hpackSize:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_a

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->clearDynamicTable()V

    :goto_9
    return-void

    :cond_a
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lokhttp3/internal/framed/Hpack$Writer;->evictToRecoverBytes(I)I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    if-le v1, v2, :cond_38

    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/framed/Header;

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iput-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    :cond_38
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    aput-object p1, v2, v1

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerCount:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTableByteCount:I

    goto :goto_9
.end method


# virtual methods
.method setHeaderTableSizeSetting(I)V
    .registers 4

    iput p1, p0, Lokhttp3/internal/framed/Hpack$Writer;->headerTableSizeSetting:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_19

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    :cond_19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-direct {p0}, Lokhttp3/internal/framed/Hpack$Writer;->adjustDynamicTableByteCount()V

    goto :goto_c
.end method

.method writeByteString(Lokio/ByteString;)V
    .registers 5

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    const/16 v4, 0x20

    const/16 v2, 0x1f

    const/4 v3, 0x0

    iget-boolean v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    if-eqz v0, :cond_20

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_14

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {p0, v0, v2, v4}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    :cond_14
    iput-boolean v3, p0, Lokhttp3/internal/framed/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {p0, v0, v2, v4}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    :cond_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_25
    if-ge v2, v4, :cond_7f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Header;

    iget-object v1, v0, Lokhttp3/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->d()Lokio/ByteString;

    move-result-object v5

    iget-object v6, v0, Lokhttp3/internal/framed/Header;->value:Lokio/ByteString;

    # getter for: Lokhttp3/internal/framed/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$200()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1, v3}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    invoke-virtual {p0, v6}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    :goto_4f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    :cond_53
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/framed/Header;

    invoke-static {v1, v0}, Lokhttp3/internal/Util;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_6e

    iget v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->nextHeaderIndex:I

    sub-int v0, v1, v0

    # getter for: Lokhttp3/internal/framed/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/framed/Header;
    invoke-static {}, Lokhttp3/internal/framed/Hpack;->access$000()[Lokhttp3/internal/framed/Header;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x7f

    const/16 v5, 0x80

    invoke-virtual {p0, v0, v1, v5}, Lokhttp3/internal/framed/Hpack$Writer;->writeInt(III)V

    goto :goto_4f

    :cond_6e
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lokio/Buffer;->b(I)Lokio/Buffer;

    invoke-virtual {p0, v5}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    invoke-virtual {p0, v6}, Lokhttp3/internal/framed/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/framed/Header;)V

    goto :goto_4f

    :cond_7f
    return-void
.end method

.method writeInt(III)V
    .registers 7

    if-ge p1, p2, :cond_a

    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    sub-int v0, p1, p2

    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    and-int/lit8 v1, v0, 0x7f

    iget-object v2, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    ushr-int/lit8 v0, v0, 0x7

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lokhttp3/internal/framed/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_9
.end method
