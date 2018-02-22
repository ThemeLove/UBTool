.class public final Lcom/lidroid/xutils/cache/LruDiskCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Entry;,
        Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;,
        Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:C = 'C'

.field private static final DELETE:C = 'D'

.field private static final EXPIRY_PREFIX:C = 't'

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:C = 'R'

.field private static final UPDATE:C = 'U'

.field static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/cache/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$2;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$1;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/cache/LruDiskCache$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    new-instance v0, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/MD5FileNameGenerator;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    iput p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    iput p3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    iput-wide p4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache;)Z
    .registers 2

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/lidroid/xutils/cache/LruDiskCache;I)V
    .registers 2

    iput p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 13

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    move-result-object v2

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    if-eqz p2, :cond_22

    :try_start_17
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_22

    move v1, v0

    :goto_1e
    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v3, :cond_9d

    :cond_22
    :goto_22
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v0, v1, :cond_cf

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_101

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "C "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x74

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_81

    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v2, v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_94

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_94
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_9b
    .catchall {:try_start_17 .. :try_end_9b} :catchall_12

    :cond_9b
    :goto_9b
    monitor-exit p0

    return-void

    :cond_9d
    :try_start_9d
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_bd

    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    invoke-virtual {v2, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_cb

    invoke-virtual {p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V

    goto :goto_9b

    :cond_cb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1e

    :cond_cf
    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_fd

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_f9

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    :cond_f9
    :goto_f9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    :cond_fd
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_f9

    :cond_101
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "D "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_9d .. :try_end_128} :catchall_12

    goto/16 :goto_81
.end method

.method private static deleteContents(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1d
    if-lt v0, v2, :cond_20

    return-void

    :cond_20
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-static {v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    :cond_2b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4c

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_12
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_20

    if-eqz v0, :cond_1d

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_57

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_20

    :cond_1d
    move-object v0, v1

    :goto_1e
    monitor-exit p0

    return-object v0

    :cond_20
    if-nez v0, :cond_5a

    :try_start_22
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_2e
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v1, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "U "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_56
    .catchall {:try_start_22 .. :try_end_56} :catchall_57

    goto :goto_1e

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5a
    :try_start_5a
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_57

    move-result-object v2

    if-eqz v2, :cond_62

    move-object v0, v1

    goto :goto_1e

    :cond_62
    move-object v1, v0

    goto :goto_2e
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .registers 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    move-object v2, v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_86

    if-nez v2, :cond_15

    move-object v1, v3

    :goto_13
    monitor-exit p0

    return-object v1

    :cond_15
    :try_start_15
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1d

    move-object v1, v3

    goto :goto_13

    :cond_1d
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_9f

    :goto_29
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v4, v1, :cond_61

    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_5f
    move-object v1, v3

    goto :goto_13

    :cond_61
    invoke-virtual {v2, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_89

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_86
    .catchall {:try_start_15 .. :try_end_86} :catchall_86

    :catchall_86
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_89
    :try_start_89
    iget-wide v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v1

    aget-wide v7, v1, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v1

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_9f
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    new-array v6, v1, [Ljava/io/FileInputStream;
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_86

    move v1, v4

    :goto_a4
    :try_start_a4
    iget v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    :try_end_a6
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a6} :catch_f5
    .catchall {:try_start_a4 .. :try_end_a6} :catchall_86

    if-lt v1, v5, :cond_e7

    :try_start_a8
    iget v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "R "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_d5

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_d5
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    :try_end_e5
    .catchall {:try_start_a8 .. :try_end_e5} :catchall_86

    goto/16 :goto_13

    :cond_e7
    :try_start_e7
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v6, v1
    :try_end_f2
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_f2} :catch_f5
    .catchall {:try_start_e7 .. :try_end_f2} :catchall_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :catch_f5
    move-exception v1

    move v1, v4

    :goto_f7
    :try_start_f7
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_fe

    :cond_fb
    move-object v1, v3

    goto/16 :goto_13

    :cond_fe
    aget-object v2, v6, v1

    if-eqz v2, :cond_fb

    aget-object v2, v6, v1

    invoke-static {v2}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_107
    .catchall {:try_start_f7 .. :try_end_107} :catchall_86

    add-int/lit8 v1, v1, 0x1

    goto :goto_f7
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .registers 3

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/lidroid/xutils/cache/LruDiskCache;
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-gtz p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_35
    :goto_35
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_92

    :try_start_46
    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournal()V

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->processJournal()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_62} :catch_68

    :cond_62
    :goto_62
    return-object v0

    :cond_63
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_35

    :catch_68
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->delete()V

    :cond_92
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_62

    :cond_9e
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/lidroid/xutils/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->rebuildJournal()V

    goto :goto_62
.end method

.method private processJournal()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-nez v1, :cond_36

    move v1, v2

    :goto_24
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-ge v1, v4, :cond_10

    iget-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_36
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    move v1, v2

    :goto_3b
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_43
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_29

    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [C

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_21

    move-result-object v0

    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1c
    const/4 v3, 0x0

    :try_start_1d
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_a

    :catchall_21
    move-exception v0

    :goto_22
    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_29
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method private readJournal()V
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_a8

    :try_start_d
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8f

    :cond_51
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8a
    .catchall {:try_start_d .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v0

    :goto_8b
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_8f
    const/4 v0, 0x0

    :goto_90
    :try_start_90
    invoke-virtual {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/EOFException; {:try_start_90 .. :try_end_97} :catch_9a
    .catchall {:try_start_90 .. :try_end_97} :catchall_8a

    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :catch_9a
    move-exception v2

    :try_start_9b
    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_8a

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_a8
    move-exception v0

    move-object v1, v2

    goto :goto_8b
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 9

    const/16 v3, 0x20

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v5, :cond_26

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v1, -0x1

    if-ne v3, v1, :cond_3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x44

    if-ne v2, v1, :cond_d3

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    :goto_25
    :sswitch_25
    return-void

    :cond_26
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_40
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    if-nez v0, :cond_54

    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    sparse-switch v2, :sswitch_data_d6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6c
    invoke-static {v0, v5}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)V

    invoke-static {v0, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_25

    const/4 v2, 0x0

    :try_start_82
    aget-object v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x74

    if-ne v2, v3, :cond_bb

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    const/4 v2, 0x1

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_a4} :catch_a5

    goto :goto_25

    :catch_a5
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bb
    const-wide v2, 0x7fffffffffffffffL

    :try_start_c0
    invoke-static {v0, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    const/4 v2, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c7} :catch_a5

    goto/16 :goto_25

    :sswitch_c9
    new-instance v1, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$6(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V

    goto/16 :goto_25

    :cond_d3
    move-object v1, v0

    goto/16 :goto_40

    :sswitch_data_d6
    .sparse-switch
        0x43 -> :sswitch_6c
        0x52 -> :sswitch_25
        0x55 -> :sswitch_c9
    .end sparse-switch
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c9

    :cond_a
    const/4 v2, 0x0

    :try_start_b
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v0, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_106

    :try_start_1e
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_60
    .catchall {:try_start_1e .. :try_end_60} :catchall_c4

    move-result v0

    if-nez v0, :cond_9b

    :try_start_63
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_76
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_99
    .catchall {:try_start_63 .. :try_end_99} :catchall_c9

    monitor-exit p0

    return-void

    :cond_9b
    :try_start_9b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_cc

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "U "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_9b .. :try_end_c3} :catchall_c4

    goto :goto_5d

    :catchall_c4
    move-exception v0

    :goto_c5
    :try_start_c5
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_c9
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_cc
    :try_start_cc
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "C "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x74

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_cc .. :try_end_104} :catchall_c4

    goto/16 :goto_5d

    :catchall_106
    move-exception v0

    move-object v1, v2

    goto :goto_c5
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    if-eqz v0, :cond_15

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_3d

    move-result-object v2

    if-eqz v2, :cond_55

    :cond_15
    move v0, v1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    :try_start_18
    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_40

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed to delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_55
    iget v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_18

    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->redundantOpCount:I

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "D "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8b
    .catchall {:try_start_40 .. :try_end_8b} :catchall_3d

    :cond_8b
    const/4 v0, 0x1

    goto :goto_16
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_11
    return-void
.end method

.method private trimToSize()V
    .registers 5

    :goto_0
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    :try_start_2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_28

    goto :goto_16
.end method

.method public delete()V
    .registers 2

    invoke-static {p0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->trimToSize()V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 7

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    :goto_2a
    return-object v0

    :cond_2b
    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_30

    :goto_2e
    const/4 v0, 0x0

    goto :goto_2a

    :catch_30
    move-exception v0

    goto :goto_2e
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache;->checkNotClosed()V

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    if-nez v0, :cond_18

    const-wide/16 v0, 0x0

    :goto_16
    monitor-exit p0

    return-wide v0

    :cond_18
    :try_start_18
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$9(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    move-result-wide v0

    goto :goto_16

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFileNameGenerator()Lcom/lidroid/xutils/cache/FileNameGenerator;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/lidroid/xutils/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFileNameGenerator(Lcom/lidroid/xutils/cache/FileNameGenerator;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->fileNameGenerator:Lcom/lidroid/xutils/cache/FileNameGenerator;

    :cond_4
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->maxSize:J

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
