.class public Lcom/vas/vassdk/util/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"


# instance fields
.field protected final a:[B

.field protected b:B

.field protected final c:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    .line 22
    iput-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    .line 25
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    .line 30
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    .line 42
    invoke-virtual {p0}, Lcom/vas/vassdk/util/Base64Encoder;->a()V

    .line 43
    return-void

    .line 10
    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
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
        0x2bt
        0x2ft
    .end array-data
.end method

.method private a(Ljava/io/OutputStream;CCCC)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    if-ne p4, v0, :cond_16

    .line 257
    iget-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 258
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 260
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 262
    const/4 v0, 0x1

    .line 286
    :goto_15
    return v0

    .line 264
    :cond_16
    iget-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    if-ne p5, v0, :cond_38

    .line 266
    iget-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 267
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 268
    iget-object v2, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v2, v2, p4

    .line 270
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 271
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 273
    const/4 v0, 0x2

    goto :goto_15

    .line 277
    :cond_38
    iget-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v0, v0, p2

    .line 278
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v1, v1, p3

    .line 279
    iget-object v2, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v2, v2, p4

    .line 280
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    aget-byte v3, v3, p5

    .line 282
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 283
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 284
    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 286
    const/4 v0, 0x3

    goto :goto_15
.end method

.method private a(Ljava/lang/String;II)I
    .registers 5

    .prologue
    .line 292
    :goto_0
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/vas/vassdk/util/Base64Encoder;->a(C)Z

    move-result v0

    if-nez v0, :cond_d

    .line 296
    :cond_c
    return p2

    .line 294
    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private a([BII)I
    .registers 5

    .prologue
    .line 182
    :goto_0
    if-ge p2, p3, :cond_b

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/vas/vassdk/util/Base64Encoder;->a(C)Z

    move-result v0

    if-nez v0, :cond_c

    .line 186
    :cond_b
    return p2

    .line 184
    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private a(C)Z
    .registers 3

    .prologue
    .line 114
    const/16 v0, 0xa

    if-eq p1, v0, :cond_12

    const/16 v0, 0xd

    if-eq p1, v0, :cond_12

    const/16 v0, 0x9

    if-eq p1, v0, :cond_12

    const/16 v0, 0x20

    if-eq p1, v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method protected a()V
    .registers 5

    .prologue
    .line 34
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_7

    .line 38
    return-void

    .line 36
    :cond_7
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    iget-object v2, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 201
    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    .line 205
    :goto_6
    if-gtz v5, :cond_31

    .line 216
    :cond_8
    add-int/lit8 v2, v5, -0x4

    .line 218
    invoke-direct {p0, p1, v1, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v0

    move v6, v1

    .line 220
    :goto_f
    if-lt v0, v2, :cond_41

    .line 245
    add-int/lit8 v0, v5, -0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v5, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v0, v6

    .line 247
    return v0

    .line 207
    :cond_31
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/vas/vassdk/util/Base64Encoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 212
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_6

    .line 222
    :cond_41
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v1, v0

    .line 224
    invoke-direct {p0, p1, v3, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v1

    .line 226
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v1, v3, v1

    .line 228
    invoke-direct {p0, p1, v4, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v3

    .line 230
    iget-object v4, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v4, v3

    .line 232
    invoke-direct {p0, p1, v7, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v4

    .line 234
    iget-object v7, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v7, v4

    .line 236
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 237
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 238
    shl-int/lit8 v0, v3, 0x6

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 240
    add-int/lit8 v1, v6, 0x3

    .line 242
    invoke-direct {p0, p1, v8, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/lang/String;II)I

    move-result v0

    move v6, v1

    goto/16 :goto_f
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    add-int v0, p2, p3

    move v5, v0

    .line 135
    :goto_4
    if-gt v5, p2, :cond_2b

    .line 146
    :cond_6
    add-int/lit8 v2, v5, -0x4

    .line 148
    invoke-direct {p0, p1, p2, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a([BII)I

    move-result v0

    move v6, v1

    .line 150
    :goto_d
    if-lt v0, v2, :cond_3a

    .line 175
    add-int/lit8 v0, v5, -0x4

    aget-byte v0, p1, v0

    int-to-char v2, v0

    add-int/lit8 v0, v5, -0x3

    aget-byte v0, p1, v0

    int-to-char v3, v0

    add-int/lit8 v0, v5, -0x2

    aget-byte v0, p1, v0

    int-to-char v4, v0

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    int-to-char v5, v0

    move-object v0, p0

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/vas/vassdk/util/Base64Encoder;->a(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v0, v6

    .line 177
    return v0

    .line 137
    :cond_2b
    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/vas/vassdk/util/Base64Encoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_4

    .line 152
    :cond_3a
    iget-object v1, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v1, v0

    .line 154
    invoke-direct {p0, p1, v3, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a([BII)I

    move-result v1

    .line 156
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v1, v3, v1

    .line 158
    invoke-direct {p0, p1, v4, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a([BII)I

    move-result v3

    .line 160
    iget-object v4, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v4, v3

    .line 162
    invoke-direct {p0, p1, v7, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a([BII)I

    move-result v4

    .line 164
    iget-object v7, p0, Lcom/vas/vassdk/util/Base64Encoder;->c:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v4, v7, v4

    .line 166
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v0, v7

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 167
    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v3, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 168
    shl-int/lit8 v0, v3, 0x6

    or-int/2addr v0, v4

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 170
    add-int/lit8 v1, v6, 0x3

    .line 172
    invoke-direct {p0, p1, v8, v2}, Lcom/vas/vassdk/util/Base64Encoder;->a([BII)I

    move-result v0

    move v6, v1

    goto :goto_d
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    rem-int/lit8 v1, p3, 0x3

    .line 58
    sub-int v2, p3, v1

    move v0, p2

    .line 61
    :goto_5
    add-int v3, p2, v2

    if-lt v0, v3, :cond_15

    .line 79
    packed-switch v1, :pswitch_data_bc

    .line 108
    :goto_c
    :pswitch_c
    div-int/lit8 v0, v2, 0x3

    mul-int/lit8 v2, v0, 0x4

    if-nez v1, :cond_b8

    const/4 v0, 0x0

    :goto_13
    add-int/2addr v0, v2

    return v0

    .line 63
    :cond_15
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    .line 64
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 65
    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    .line 67
    iget-object v6, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 68
    iget-object v6, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v6, v5, 0x6

    or-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 70
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    and-int/lit8 v4, v5, 0x3f

    aget-byte v3, v3, v4

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 61
    add-int/lit8 v0, v0, 0x3

    goto :goto_5

    .line 84
    :pswitch_58
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 85
    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 86
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 88
    iget-object v4, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v3, v4, v3

    invoke-virtual {p4, v3}, Ljava/io/OutputStream;->write(I)V

    .line 89
    iget-object v3, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v0, v3, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 90
    iget-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 91
    iget-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_c

    .line 94
    :pswitch_7f
    add-int v0, p2, v2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 95
    add-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 97
    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    .line 98
    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v5, v3, 0x4

    or-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x3f

    .line 99
    shl-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 101
    iget-object v5, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v4, v5, v4

    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 102
    iget-object v4, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v0, v4, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 103
    iget-object v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->a:[B

    aget-byte v0, v0, v3

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 104
    iget-byte v0, p0, Lcom/vas/vassdk/util/Base64Encoder;->b:B

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_c

    .line 108
    :cond_b8
    const/4 v0, 0x4

    goto/16 :goto_13

    .line 79
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_c
        :pswitch_58
        :pswitch_7f
    .end packed-switch
.end method
