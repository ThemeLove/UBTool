.class Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictLineReader"
.end annotation


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V
    .registers 6

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    if-nez p2, :cond_15

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_15
    if-gez p3, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_15
    iput v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 8

    const/16 v6, 0xa

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v3

    :try_start_5
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    :cond_1d
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_1f
    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-ne v2, v0, :cond_69

    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;I)V

    :cond_2f
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_43
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-eq v0, v2, :cond_2f

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_9d

    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v0, v2, :cond_5c

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_5c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    :goto_68
    return-object v0

    :cond_69
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_9a

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v2, v0, :cond_98

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_98

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_80
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    monitor-exit v3
    :try_end_97
    .catchall {:try_start_14 .. :try_end_97} :catchall_11

    goto :goto_68

    :cond_98
    move v1, v2

    goto :goto_80

    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method
