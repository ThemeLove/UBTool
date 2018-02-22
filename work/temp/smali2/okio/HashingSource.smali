.class public final Lokio/HashingSource;
.super Lokio/ForwardingSource;


# instance fields
.field private final a:Ljava/security/MessageDigest;


# virtual methods
.method public read(Lokio/Buffer;J)J
    .registers 13

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide v5

    const-wide/16 v0, -0x1

    cmp-long v0, v5, v0

    if-eqz v0, :cond_42

    iget-wide v0, p1, Lokio/Buffer;->b:J

    sub-long v3, v0, v5

    iget-wide v1, p1, Lokio/Buffer;->b:J

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    :goto_12
    iget-wide v7, p1, Lokio/Buffer;->b:J

    sub-long/2addr v7, v5

    cmp-long v7, v1, v7

    if-lez v7, :cond_23

    iget-object v0, v0, Lokio/Segment;->g:Lokio/Segment;

    iget v7, v0, Lokio/Segment;->c:I

    iget v8, v0, Lokio/Segment;->b:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v1, v7

    goto :goto_12

    :cond_23
    :goto_23
    iget-wide v7, p1, Lokio/Buffer;->b:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_42

    iget v7, v0, Lokio/Segment;->b:I

    int-to-long v7, v7

    add-long/2addr v3, v7

    sub-long/2addr v3, v1

    long-to-int v3, v3

    iget-object v4, p0, Lokio/HashingSource;->a:Ljava/security/MessageDigest;

    iget-object v7, v0, Lokio/Segment;->a:[B

    iget v8, v0, Lokio/Segment;->c:I

    sub-int/2addr v8, v3

    invoke-virtual {v4, v7, v3, v8}, Ljava/security/MessageDigest;->update([BII)V

    iget v3, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    move-wide v3, v1

    goto :goto_23

    :cond_42
    return-wide v5
.end method
