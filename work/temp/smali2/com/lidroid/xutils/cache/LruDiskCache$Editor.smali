.class public final Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    return-void

    :cond_11
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->valueCount:I
    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$7(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)[Z
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    if-nez v0, :cond_7

    :try_start_4
    invoke-virtual {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    :cond_7
    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public commit()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    const/4 v1, 0x0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$3(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$11(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    :goto_16
    iput-boolean v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->committed:Z

    return-void

    :cond_19
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->completeEdit(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$10(Lcom/lidroid/xutils/cache/LruDiskCache;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Z)V

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1f

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v3, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2d
    .catchall {:try_start_1f .. :try_end_2a} :catchall_12

    :try_start_2a
    monitor-exit v2

    move-object v0, v1

    goto :goto_1e

    :catch_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_12

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 6

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$2(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_11
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$0(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->written:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_21
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    move-result-object v1

    :try_start_27
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_35
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11

    move-object v1, v0

    :goto_2d
    :try_start_2d
    new-instance v0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/lidroid/xutils/cache/LruDiskCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v2

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$8(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_11

    :try_start_3f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_44} :catch_46
    .catchall {:try_start_3f .. :try_end_44} :catchall_11

    move-object v1, v0

    goto :goto_2d

    :catch_46
    move-exception v0

    :try_start_47
    # getter for: Lcom/lidroid/xutils/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$9()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_11

    goto :goto_34
.end method

.method public set(ILjava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_19

    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_13
    move-exception v0

    move-object v1, v2

    :goto_15
    invoke-static {v1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_19
    move-exception v0

    goto :goto_15
.end method

.method public setEntryExpiryTimestamp(J)V
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Editor;->entry:Lcom/lidroid/xutils/cache/LruDiskCache$Entry;

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->access$1(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)V

    return-void
.end method
