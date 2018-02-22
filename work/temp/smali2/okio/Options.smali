.class public final Lokio/Options;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final a:[Lokio/ByteString;


# virtual methods
.method public a(I)Lokio/ByteString;
    .registers 3

    iget-object v0, p0, Lokio/Options;->a:[Lokio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Options;->a(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lokio/Options;->a:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
