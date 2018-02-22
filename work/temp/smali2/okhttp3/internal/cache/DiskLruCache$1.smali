.class Lokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache;->access$000(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v3

    if-nez v3, :cond_18

    :goto_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$100(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_1a

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_34

    :goto_17
    return-void

    :cond_18
    move v0, v1

    goto :goto_d

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$200(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_37
    .catchall {:try_start_1a .. :try_end_1f} :catchall_34

    :goto_1f
    :try_start_1f
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$400(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$500(Lokhttp3/internal/cache/DiskLruCache;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$602(Lokhttp3/internal/cache/DiskLruCache;I)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_32} :catch_3f
    .catchall {:try_start_1f .. :try_end_32} :catchall_34

    :cond_32
    :goto_32
    :try_start_32
    monitor-exit v2

    goto :goto_17

    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_34

    throw v0

    :catch_37
    move-exception v0

    :try_start_38
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$302(Lokhttp3/internal/cache/DiskLruCache;Z)Z

    goto :goto_1f

    :catch_3f
    move-exception v0

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x1

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$702(Lokhttp3/internal/cache/DiskLruCache;Z)Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$1;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;
    invoke-static {}, Lokhttp3/internal/cache/DiskLruCache;->access$900()Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v1

    # setter for: Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$802(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_34

    goto :goto_32
.end method
