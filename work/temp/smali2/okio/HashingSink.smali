.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;


# instance fields
.field private final a:Ljava/security/MessageDigest;


# virtual methods
.method public write(Lokio/Buffer;J)V
    .registers 12

    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    :goto_a
    cmp-long v1, v2, p2

    if-gez v1, :cond_29

    sub-long v4, p2, v2

    iget v1, v0, Lokio/Segment;->c:I

    iget v6, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v6

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, p0, Lokio/HashingSink;->a:Ljava/security/MessageDigest;

    iget-object v5, v0, Lokio/Segment;->a:[B

    iget v6, v0, Lokio/Segment;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_a

    :cond_29
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    return-void
.end method
