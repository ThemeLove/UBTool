.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;


# instance fields
.field private final a:I


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/zxing/oned/rss/FinderPattern;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/zxing/oned/rss/FinderPattern;

    iget v1, p0, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    iget v2, p1, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/oned/rss/FinderPattern;->a:I

    return v0
.end method
