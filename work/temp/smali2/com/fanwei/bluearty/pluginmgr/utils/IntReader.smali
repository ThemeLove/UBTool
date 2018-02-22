.class final Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;
.super Ljava/lang/Object;


# instance fields
.field private m_bigEndian:Z

.field private m_position:I

.field private m_stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->reset(Ljava/io/InputStream;Z)V

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_10

    :goto_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->reset(Ljava/io/InputStream;Z)V

    goto :goto_4

    :catch_10
    move-exception v0

    goto :goto_a
.end method

.method public final getPosition()I
    .registers 2

    iget v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    return v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final isBigEndian()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_bigEndian:Z

    return v0
.end method

.method public final readByte()I
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt(I)I

    move-result v0

    return v0
.end method

.method public final readByteArray(I)[B
    .registers 5

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iget v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    if-eq v1, p1, :cond_15

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_15
    return-object v0
.end method

.method public final readInt()I
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt(I)I

    move-result v0

    return v0
.end method

.method public final readInt(I)I
    .registers 8

    const/4 v0, 0x0

    const/4 v5, -0x1

    if-ltz p1, :cond_7

    const/4 v1, 0x4

    if-le p1, v1, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_d
    iget-boolean v1, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_bigEndian:Z

    if-eqz v1, :cond_32

    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x8

    :goto_15
    if-ltz v1, :cond_52

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_25

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_25
    iget v3, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, -0x8

    move v1, v0

    move v0, v2

    goto :goto_15

    :cond_32
    mul-int/lit8 v3, p1, 0x8

    move v1, v0

    :goto_35
    if-eq v1, v3, :cond_52

    iget-object v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v5, :cond_45

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_45
    iget v4, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x8

    move v1, v0

    move v0, v2

    goto :goto_35

    :cond_52
    return v0
.end method

.method public final readIntArray([III)V
    .registers 6

    :goto_0
    if-lez p3, :cond_e

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v1

    aput v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_e
    return-void
.end method

.method public final readIntArray(I)[I
    .registers 4

    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readIntArray([III)V

    return-object v0
.end method

.method public final readShort()I
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt(I)I

    move-result v0

    return v0
.end method

.method public final reset(Ljava/io/InputStream;Z)V
    .registers 4

    iput-object p1, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    iput-boolean p2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_bigEndian:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    return-void
.end method

.method public final setBigEndian(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_bigEndian:Z

    return-void
.end method

.method public final skip(I)V
    .registers 6

    if-gtz p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_stream:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    iget v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->m_position:I

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final skipInt()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->skip(I)V

    return-void
.end method
