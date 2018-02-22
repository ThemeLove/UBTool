.class public final Lokio/Buffer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokio/BufferedSink;
.implements Lokio/BufferedSource;


# static fields
.field private static final c:[B


# instance fields
.field a:Lokio/Segment;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->c:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v1, :cond_d

    const/4 v0, -0x1

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v0, v1, Lokio/Segment;->c:I

    iget v2, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, Lokio/Segment;->a:[B

    iget v3, v1, Lokio/Segment;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, Lokio/Segment;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->b:I

    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->b:J

    iget v2, v1, Lokio/Segment;->b:I

    iget v3, v1, Lokio/Segment;->c:I

    if-ne v2, v3, :cond_c

    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_c
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lokio/Buffer;->b:J

    return-wide v0
.end method

.method public a(B)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .registers 13

    const-wide/16 v0, 0x0

    const-wide/16 v5, -0x1

    cmp-long v2, p2, v0

    if-gez v2, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v2, :cond_16

    move-wide v0, v5

    :goto_15
    return-wide v0

    :cond_16
    iget-wide v3, p0, Lokio/Buffer;->b:J

    sub-long/2addr v3, p2

    cmp-long v3, v3, p2

    if-gez v3, :cond_2e

    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-object v4, v2

    :goto_20
    cmp-long v2, v0, p2

    if-lez v2, :cond_49

    iget-object v4, v4, Lokio/Segment;->g:Lokio/Segment;

    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_20

    :cond_2e
    move-object v4, v2

    :goto_2f
    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v7, v2, p2

    if-gez v7, :cond_49

    iget-object v0, v4, Lokio/Segment;->f:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    goto :goto_2f

    :cond_3f
    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v4, v4, Lokio/Segment;->f:Lokio/Segment;

    move-wide p2, v0

    :cond_49
    iget-wide v2, p0, Lokio/Buffer;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_68

    iget-object v3, v4, Lokio/Segment;->a:[B

    iget v2, v4, Lokio/Segment;->b:I

    int-to-long v7, v2

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int v2, v7

    iget v7, v4, Lokio/Segment;->c:I

    :goto_59
    if-ge v2, v7, :cond_3f

    aget-byte v8, v3, v2

    if-ne v8, p1, :cond_65

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_15

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_68
    move-wide v0, v5

    goto :goto_15
.end method

.method public a(Lokio/Source;)J
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-wide/16 v0, 0x0

    :goto_c
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1a

    add-long/2addr v0, v2

    goto :goto_c

    :cond_1a
    return-wide v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    if-nez p3, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    cmp-long v0, p1, v2

    if-nez v0, :cond_39

    const-string v0, ""

    :cond_38
    :goto_38
    return-object v0

    :cond_39
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v1, Lokio/Segment;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_50

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_38

    :cond_50
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->a:[B

    iget v3, v1, Lokio/Segment;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, Lokio/Segment;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->b:I

    iget-wide v2, p0, Lokio/Buffer;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->b:J

    iget v2, v1, Lokio/Segment;->b:I

    iget v3, v1, Lokio/Segment;->c:I

    if-ne v2, v3, :cond_38

    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_38
.end method

.method public a(I)Lokio/Buffer;
    .registers 5

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    :goto_7
    return-object p0

    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5e

    const v0, 0xd800

    if-lt p1, v0, :cond_46

    const v0, 0xdfff

    if-gt p1, v0, :cond_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    :cond_5e
    const v0, 0x10ffff

    if-gt p1, v0, :cond_84

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    :cond_84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Lokio/Buffer;
    .registers 13

    const v8, 0xdfff

    const/16 v7, 0x80

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gez p2, :cond_2a

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-ge p3, p2, :cond_4f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_90

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    const v2, 0xdbff

    if-gt v1, v2, :cond_89

    const v2, 0xdc00

    if-lt v0, v2, :cond_89

    if-le v0, v8, :cond_115

    :cond_89
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x1

    :cond_90
    :goto_90
    if-ge p2, p3, :cond_146

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_d3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v2

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v0, v2, Lokio/Segment;->c:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_b0
    if-ge v0, v5, :cond_b8

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_cb

    :cond_b8
    add-int v1, v0, v4

    iget v3, v2, Lokio/Segment;->c:I

    sub-int/2addr v1, v3

    iget v3, v2, Lokio/Segment;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->c:I

    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v1

    add-long v1, v2, v4

    iput-wide v1, p0, Lokio/Buffer;->b:J

    :goto_c9
    move p2, v0

    goto :goto_90

    :cond_cb
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b0

    :cond_d3
    const/16 v0, 0x800

    if-ge v1, v0, :cond_e8

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c9

    :cond_e8
    const v0, 0xd800

    if-lt v1, v0, :cond_ef

    if-le v1, v8, :cond_109

    :cond_ef
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x1

    goto :goto_c9

    :cond_109
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_7c

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_7d

    :cond_115
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    add-int/lit8 v0, p2, 0x2

    goto :goto_c9

    :cond_146
    return-object p0
.end method

.method public a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 8

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-gez p2, :cond_25

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-ge p3, p2, :cond_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_77

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    if-nez p4, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    sget-object v0, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-virtual {p0, p1}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    :goto_8d
    return-object v0

    :cond_8e
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    move-result-object v0

    goto :goto_8d
.end method

.method public a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lokio/Buffer;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public a(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    const-wide/16 v6, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_18

    :cond_17
    return-object p0

    :cond_18
    iget-wide v0, p1, Lokio/Buffer;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->b:J

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    :goto_1f
    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_33

    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_1f

    :cond_33
    :goto_33
    cmp-long v1, p4, v6

    if-lez v1, :cond_17

    new-instance v1, Lokio/Segment;

    invoke-direct {v1, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    iget v2, v1, Lokio/Segment;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->b:I

    iget v2, v1, Lokio/Segment;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->c:I

    iget-object v2, p1, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v2, :cond_65

    iput-object v1, v1, Lokio/Segment;->g:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->f:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    :goto_59
    iget v2, v1, Lokio/Segment;->c:I

    iget v1, v1, Lokio/Segment;->b:I

    sub-int v1, v2, v1

    int-to-long v1, v1

    sub-long/2addr p4, v1

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    move-wide p2, v6

    goto :goto_33

    :cond_65
    iget-object v2, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    goto :goto_59
.end method

.method public a(Lokio/ByteString;)Lokio/Buffer;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1, p0}, Lokio/ByteString;->a(Lokio/Buffer;)V

    return-object p0
.end method

.method public a(J)V
    .registers 5

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_13
    add-int/2addr v0, v1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public b(J)B
    .registers 9

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    :goto_a
    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v0, v0, Lokio/Segment;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_1d
    int-to-long v1, v1

    sub-long/2addr p1, v1

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_a
.end method

.method public b()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public b(I)Lokio/Buffer;
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v2, v0, Lokio/Segment;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    return-object p0
.end method

.method public b([B)Lokio/Buffer;
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)Lokio/Buffer;
    .registers 10

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    add-int v0, p2, p3

    :goto_13
    if-ge p2, v0, :cond_32

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, Lokio/Segment;->a:[B

    iget v4, v1, Lokio/Segment;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, Lokio/Segment;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->c:I

    goto :goto_13

    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public c(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v2, v0, Lokio/Segment;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lokio/Segment;->c:I

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    return-object p0
.end method

.method public synthetic c([B)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Lokio/ByteString;
    .registers 5

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->r()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public d(J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v0

    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v2, v0, Lokio/Segment;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, Lokio/Segment;->c:I

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    return-object p0
.end method

.method public d()Z
    .registers 5

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public e()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method e(J)Ljava/lang/String;
    .registers 7

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->d(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->g(J)V

    :goto_1d
    return-object v0

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->g(J)V

    goto :goto_1d
.end method

.method public e(I)Lokio/Buffer;
    .registers 3

    invoke-static {p1}, Lokio/Util;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->d(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_8

    move v0, v6

    :goto_7
    return v0

    :cond_8
    instance-of v2, p1, Lokio/Buffer;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    :cond_e
    check-cast p1, Lokio/Buffer;

    iget-wide v2, p0, Lokio/Buffer;->b:J

    iget-wide v4, p1, Lokio/Buffer;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    :cond_1a
    iget-wide v2, p0, Lokio/Buffer;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    :cond_22
    iget-object v5, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v4, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v3, v5, Lokio/Segment;->b:I

    iget v2, v4, Lokio/Segment;->b:I

    :goto_2a
    iget-wide v8, p0, Lokio/Buffer;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    iget v8, v5, Lokio/Segment;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, Lokio/Segment;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    iget-object v12, v5, Lokio/Segment;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/Segment;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    :cond_57
    iget v8, v5, Lokio/Segment;->c:I

    if-ne v3, v8, :cond_5f

    iget-object v5, v5, Lokio/Segment;->f:Lokio/Segment;

    iget v3, v5, Lokio/Segment;->b:I

    :cond_5f
    iget v8, v4, Lokio/Segment;->c:I

    if-ne v2, v8, :cond_67

    iget-object v4, v4, Lokio/Segment;->f:Lokio/Segment;

    iget v2, v4, Lokio/Segment;->b:I

    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    goto :goto_7
.end method

.method public f()J
    .registers 6

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    :cond_9
    :goto_9
    return-wide v0

    :cond_a
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    iget v3, v2, Lokio/Segment;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lokio/Segment;->e:Z

    if-eqz v3, :cond_9

    iget v3, v2, Lokio/Segment;->c:I

    iget v2, v2, Lokio/Segment;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method f(I)Lokio/Segment;
    .registers 5

    const/16 v2, 0x2000

    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v0, :cond_22

    invoke-static {}, Lokio/SegmentPool;->a()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v0, v2, Lokio/Segment;->g:Lokio/Segment;

    iput-object v0, v1, Lokio/Segment;->f:Lokio/Segment;

    :cond_21
    :goto_21
    return-object v0

    :cond_22
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->g:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lokio/Segment;->e:Z

    if-nez v1, :cond_21

    :cond_2f
    invoke-static {}, Lokio/SegmentPool;->a()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_21
.end method

.method public f(J)[B
    .registers 9

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lokio/Buffer;->a([B)V

    return-object v0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public g()B
    .registers 10

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->b:I

    iget v2, v0, Lokio/Segment;->c:I

    iget-object v3, v0, Lokio/Segment;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v5, p0, Lokio/Buffer;->b:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->b:J

    if-ne v4, v2, :cond_2f

    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    :goto_2e
    return v1

    :cond_2f
    iput v4, v0, Lokio/Segment;->b:I

    goto :goto_2e
.end method

.method public g(I)Lokio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    sget-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_4
.end method

.method public g(J)V
    .registers 8

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->c:I

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v1, p0, Lokio/Buffer;->b:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->b:J

    int-to-long v1, v0

    sub-long/2addr p1, v1

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->b:I

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->b:I

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_0

    :cond_44
    return-void
.end method

.method public h(J)Lokio/Buffer;
    .registers 16

    const/4 v0, 0x1

    const-wide/16 v11, 0xa

    const-wide/16 v9, 0x0

    cmp-long v1, p1, v9

    if-nez v1, :cond_10

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object p0

    :goto_f
    return-object p0

    :cond_10
    const/4 v1, 0x0

    cmp-long v2, p1, v9

    if-gez v2, :cond_117

    neg-long v2, p1

    cmp-long v1, v2, v9

    if-gez v1, :cond_21

    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_f

    :cond_21
    move v4, v0

    :goto_22
    const-wide/32 v5, 0x5f5e100

    cmp-long v1, v2, v5

    if-gez v1, :cond_81

    const-wide/16 v5, 0x2710

    cmp-long v1, v2, v5

    if-gez v1, :cond_63

    const-wide/16 v5, 0x64

    cmp-long v1, v2, v5

    if-gez v1, :cond_59

    cmp-long v1, v2, v11

    if-gez v1, :cond_57

    :goto_39
    if-eqz v4, :cond_3d

    add-int/lit8 v0, v0, 0x1

    :cond_3d
    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v5

    iget-object v6, v5, Lokio/Segment;->a:[B

    iget v1, v5, Lokio/Segment;->c:I

    add-int/2addr v1, v0

    :goto_46
    cmp-long v7, v2, v9

    if-eqz v7, :cond_101

    rem-long v7, v2, v11

    long-to-int v7, v7

    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    div-long/2addr v2, v11

    goto :goto_46

    :cond_57
    const/4 v0, 0x2

    goto :goto_39

    :cond_59
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_61

    const/4 v0, 0x3

    goto :goto_39

    :cond_61
    const/4 v0, 0x4

    goto :goto_39

    :cond_63
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_75

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_73

    const/4 v0, 0x5

    goto :goto_39

    :cond_73
    const/4 v0, 0x6

    goto :goto_39

    :cond_75
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_7e

    const/4 v0, 0x7

    goto :goto_39

    :cond_7e
    const/16 v0, 0x8

    goto :goto_39

    :cond_81
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_af

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_a0

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_9d

    const/16 v0, 0x9

    goto :goto_39

    :cond_9d
    const/16 v0, 0xa

    goto :goto_39

    :cond_a0
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ac

    const/16 v0, 0xb

    goto :goto_39

    :cond_ac
    const/16 v0, 0xc

    goto :goto_39

    :cond_af
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d6

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c5

    const/16 v0, 0xd

    goto/16 :goto_39

    :cond_c5
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d2

    const/16 v0, 0xe

    goto/16 :goto_39

    :cond_d2
    const/16 v0, 0xf

    goto/16 :goto_39

    :cond_d6
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f0

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ec

    const/16 v0, 0x10

    goto/16 :goto_39

    :cond_ec
    const/16 v0, 0x11

    goto/16 :goto_39

    :cond_f0
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fd

    const/16 v0, 0x12

    goto/16 :goto_39

    :cond_fd
    const/16 v0, 0x13

    goto/16 :goto_39

    :cond_101
    if-eqz v4, :cond_109

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    :cond_109
    iget v1, v5, Lokio/Segment;->c:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->c:I

    iget-wide v1, p0, Lokio/Buffer;->b:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lokio/Buffer;->b:J

    goto/16 :goto_f

    :cond_117
    move v4, v1

    move-wide v2, p1

    goto/16 :goto_22
.end method

.method public synthetic h(I)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->e(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public h()S
    .registers 9

    const-wide/16 v6, 0x2

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->b:I

    iget v2, v0, Lokio/Segment;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3f

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_3e
    return v0

    :cond_3f
    iget-object v3, v0, Lokio/Segment;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v3, p0, Lokio/Buffer;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lokio/Buffer;->b:J

    if-ne v5, v2, :cond_62

    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    :goto_60
    int-to-short v0, v1

    goto :goto_3e

    :cond_62
    iput v5, v0, Lokio/Segment;->b:I

    goto :goto_60
.end method

.method public hashCode()I
    .registers 6

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget v2, v1, Lokio/Segment;->b:I

    iget v4, v1, Lokio/Segment;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/Segment;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    :cond_19
    iget-object v1, v1, Lokio/Segment;->f:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public i()I
    .registers 9

    const-wide/16 v6, 0x4

    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v1, Lokio/Segment;->b:I

    iget v2, v1, Lokio/Segment;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_50

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lokio/Buffer;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_4f
    return v0

    :cond_50
    iget-object v3, v1, Lokio/Segment;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v3, p0, Lokio/Buffer;->b:J

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lokio/Buffer;->b:J

    if-ne v5, v2, :cond_84

    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_4f

    :cond_84
    iput v5, v1, Lokio/Segment;->b:I

    goto :goto_4f
.end method

.method public i(J)Lokio/Buffer;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object p0

    :goto_c
    return-object p0

    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->f(I)Lokio/Segment;

    move-result-object v2

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v0, v2, Lokio/Segment;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->c:I

    :goto_26
    if-lt v0, v4, :cond_37

    sget-object v5, Lokio/Buffer;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_37
    iget v0, v2, Lokio/Segment;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->c:I

    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    goto :goto_c
.end method

.method public synthetic i(I)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->d(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j(I)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->c(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic j(J)Lokio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->i(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public j()S
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->h()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->a(S)S

    move-result v0

    return v0
.end method

.method public k()I
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->i()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic k(I)Lokio/BufferedSink;
    .registers 3

    invoke-virtual {p0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k(J)Lokio/BufferedSink;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->h(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .registers 16

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    iget-wide v1, p0, Lokio/Buffer;->b:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move v1, v0

    move-wide v2, v4

    :cond_13
    iget-object v10, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v11, v10, Lokio/Segment;->a:[B

    iget v6, v10, Lokio/Segment;->b:I

    iget v12, v10, Lokio/Segment;->c:I

    move v7, v6

    :goto_1c
    if-ge v7, v12, :cond_95

    aget-byte v8, v11, v7

    const/16 v6, 0x30

    if-lt v8, v6, :cond_5b

    const/16 v6, 0x39

    if-gt v8, v6, :cond_5b

    add-int/lit8 v6, v8, -0x30

    :goto_2a
    const-wide/high16 v13, -0x1000000000000000L

    and-long/2addr v13, v2

    cmp-long v9, v13, v4

    if-eqz v9, :cond_ae

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->i(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object v0

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Buffer;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5b
    const/16 v6, 0x61

    if-lt v8, v6, :cond_68

    const/16 v6, 0x66

    if-gt v8, v6, :cond_68

    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_2a

    :cond_68
    const/16 v6, 0x41

    if-lt v8, v6, :cond_75

    const/16 v6, 0x46

    if-gt v8, v6, :cond_75

    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_2a

    :cond_75
    if-nez v1, :cond_94

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    const/4 v0, 0x1

    :cond_95
    if-ne v7, v12, :cond_ba

    invoke-virtual {v10}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v6

    iput-object v6, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-static {v10}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    :goto_a0
    if-nez v0, :cond_a6

    iget-object v6, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v6, :cond_13

    :cond_a6
    iget-wide v4, p0, Lokio/Buffer;->b:J

    int-to-long v0, v1

    sub-long v0, v4, v0

    iput-wide v0, p0, Lokio/Buffer;->b:J

    return-wide v2

    :cond_ae
    const/4 v8, 0x4

    shl-long/2addr v2, v8

    int-to-long v8, v6

    or-long/2addr v8, v2

    add-int/lit8 v2, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    move v7, v2

    move-wide v2, v8

    goto/16 :goto_1c

    :cond_ba
    iput v7, v10, Lokio/Segment;->b:I

    goto :goto_a0
.end method

.method public m()Lokio/ByteString;
    .registers 3

    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->p()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    sget-object v2, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public o()Ljava/lang/String;
    .registers 9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_54

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lokio/Buffer;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lokio/Buffer;->m()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->f(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public q()V
    .registers 3

    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->g(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public r()Lokio/Buffer;
    .registers 7

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    iget-wide v2, p0, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-direct {v0, v2}, Lokio/Segment;-><init>(Lokio/Segment;)V

    iput-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v3, v1, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->g:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->f:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    :goto_26
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-eq v0, v2, :cond_39

    iget-object v2, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    new-instance v3, Lokio/Segment;

    invoke-direct {v3, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    invoke-virtual {v2, v3}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_26

    :cond_39
    iget-wide v2, p0, Lokio/Buffer;->b:J

    iput-wide v2, v1, Lokio/Buffer;->b:J

    move-object v0, v1

    goto :goto_e
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    cmp-long v0, p2, v2

    if-gez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_32

    const-wide/16 p2, -0x1

    :goto_31
    return-wide p2

    :cond_32
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3a

    iget-wide p2, p0, Lokio/Buffer;->b:J

    :cond_3a
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_31
.end method

.method public s()Lokio/ByteString;
    .registers 5

    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget-wide v0, p0, Lokio/Buffer;->b:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->g(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public synthetic t()Lokio/BufferedSink;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->c()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lokio/Buffer;->s()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12

    const-wide/16 v2, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-ne p1, p0, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    :goto_1c
    cmp-long v0, p2, v2

    if-lez v0, :cond_5e

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->c:I

    iget-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6e

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->g:Lokio/Segment;

    move-object v1, v0

    :goto_37
    if-eqz v1, :cond_65

    iget-boolean v0, v1, Lokio/Segment;->e:Z

    if-eqz v0, :cond_65

    iget v0, v1, Lokio/Segment;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lokio/Segment;->d:Z

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :goto_46
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_65

    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->a(Lokio/Segment;I)V

    iget-wide v0, p1, Lokio/Buffer;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->b:J

    iget-wide v0, p0, Lokio/Buffer;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    :cond_5e
    return-void

    :cond_5f
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_37

    :cond_62
    iget v0, v1, Lokio/Segment;->b:I

    goto :goto_46

    :cond_65
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->a(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    :cond_6e
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v1, :cond_98

    iput-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v6, p0, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v6, v1, Lokio/Segment;->g:Lokio/Segment;

    iput-object v6, v0, Lokio/Segment;->f:Lokio/Segment;

    :goto_8c
    iget-wide v0, p1, Lokio/Buffer;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->b:J

    iget-wide v0, p0, Lokio/Buffer;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->b:J

    sub-long/2addr p2, v4

    goto :goto_1c

    :cond_98
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->g:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    invoke-virtual {v0}, Lokio/Segment;->b()V

    goto :goto_8c
.end method
