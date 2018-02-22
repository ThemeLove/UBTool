.class public final Lokhttp3/internal/framed/FramedConnection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/framed/FramedConnection$Listener;,
        Lokhttp3/internal/framed/FramedConnection$Reader;,
        Lokhttp3/internal/framed/FramedConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lokhttp3/internal/framed/FrameWriter;

.field private final hostname:Ljava/lang/String;

.field private lastGoodStreamId:I

.field private final listener:Lokhttp3/internal/framed/FramedConnection$Listener;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lokhttp3/internal/framed/Settings;

.field final peerSettings:Lokhttp3/internal/framed/Settings;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/Ping;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lokhttp3/w;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lokhttp3/internal/framed/PushObserver;

.field final readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/framed/FramedStream;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lokhttp3/internal/framed/Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v7, 0x1

    const/4 v1, 0x0

    const-class v0, Lokhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v7

    :goto_b
    sput-boolean v0, Lokhttp3/internal/framed/FramedConnection;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v8, "OkHttp FramedConnection"

    invoke-static {v8, v7}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_27
    move v0, v1

    goto :goto_b
.end method

.method private constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V
    .registers 14

    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lokhttp3/internal/framed/FramedConnection;->unacknowledgedBytesRead:J

    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    new-instance v0, Lokhttp3/internal/framed/Settings;

    invoke-direct {v0}, Lokhttp3/internal/framed/Settings;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    iput-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->protocol:Lokhttp3/w;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$000(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lokhttp3/internal/framed/PushObserver;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$100(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/PushObserver;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$300(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_e9

    move v0, v2

    :goto_49
    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    sget-object v4, Lokhttp3/w;->d:Lokhttp3/w;

    if-ne v0, v4, :cond_5d

    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    :cond_5d
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_64

    move v3, v2

    :cond_64
    iput v3, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->client:Z
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$200(Lokhttp3/internal/framed/FramedConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v10, v1, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    :cond_73
    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$400(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    sget-object v3, Lokhttp3/w;->d:Lokhttp3/w;

    if-ne v0, v3, :cond_ec

    new-instance v0, Lokhttp3/internal/framed/Http2;

    invoke-direct {v0}, Lokhttp3/internal/framed/Http2;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v7, "OkHttp %s Push Observer"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v2, 0xffff

    invoke-virtual {v0, v10, v1, v2}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/4 v2, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v2, v1, v3}, Lokhttp3/internal/framed/Settings;->set(III)Lokhttp3/internal/framed/Settings;

    :goto_b6
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$500(Lokhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->sink:Lokio/BufferedSink;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$600(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSink;

    move-result-object v1

    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lokhttp3/internal/framed/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    # getter for: Lokhttp3/internal/framed/FramedConnection$Builder;->source:Lokio/BufferedSource;
    invoke-static {p1}, Lokhttp3/internal/framed/FramedConnection$Builder;->access$700(Lokhttp3/internal/framed/FramedConnection$Builder;)Lokio/BufferedSource;

    move-result-object v2

    iget-boolean v3, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lokhttp3/internal/framed/FrameReader;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lokhttp3/internal/framed/FramedConnection$Reader;-><init>(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/FrameReader;Lokhttp3/internal/framed/FramedConnection$1;)V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    return-void

    :cond_e9
    move v0, v3

    goto/16 :goto_49

    :cond_ec
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    sget-object v1, Lokhttp3/w;->c:Lokhttp3/w;

    if-ne v0, v1, :cond_fc

    new-instance v0, Lokhttp3/internal/framed/Spdy3;

    invoke-direct {v0}, Lokhttp3/internal/framed/Spdy3;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->variant:Lokhttp3/internal/framed/Variant;

    iput-object v11, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_b6

    :cond_fc
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lokhttp3/internal/framed/FramedConnection$Builder;Lokhttp3/internal/framed/FramedConnection$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;-><init>(Lokhttp3/internal/framed/FramedConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1100(Lokhttp3/internal/framed/FramedConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lokhttp3/internal/framed/FramedConnection;Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lokhttp3/internal/framed/FramedConnection;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lokhttp3/internal/framed/FramedConnection;ILokio/BufferedSource;IZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->pushDataLater(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1602(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2

    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1702(Lokhttp3/internal/framed/FramedConnection;I)I
    .registers 2

    iput p1, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lokhttp3/internal/framed/FramedConnection;)I
    .registers 2

    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1900(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/FramedConnection$Listener;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->listener:Lokhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lokhttp3/internal/framed/FramedConnection;ILokhttp3/internal/framed/ErrorCode;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/internal/framed/FramedConnection;)Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2302(Lokhttp3/internal/framed/FramedConnection;Z)Z
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/framed/FramedConnection;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lokhttp3/internal/framed/FramedConnection;I)Lokhttp3/internal/framed/Ping;
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->removePing(I)Lokhttp3/internal/framed/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePingLater(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method static synthetic access$2600(Lokhttp3/internal/framed/FramedConnection;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/framed/FramedConnection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lokhttp3/internal/framed/FramedConnection;)Lokhttp3/internal/framed/PushObserver;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pushObserver:Lokhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$2800(Lokhttp3/internal/framed/FramedConnection;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lokhttp3/internal/framed/FramedConnection;ZIILokhttp3/internal/framed/Ping;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-void
.end method

.method private close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lokhttp3/internal/framed/FramedConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1}, Lokhttp3/internal/framed/FramedConnection;->shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_66

    move-object v1, v2

    :goto_16
    monitor-enter p0

    :try_start_17
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lokhttp3/internal/framed/FramedStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/FramedStream;

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    :goto_39
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/framed/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/framed/Ping;

    const/4 v2, 0x0

    iput-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    move-object v4, v0

    :goto_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_17 .. :try_end_56} :catchall_69

    if-eqz v5, :cond_72

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_5b
    if-ge v2, v6, :cond_71

    aget-object v1, v5, v2

    :try_start_5f
    invoke-virtual {v1, p2}, Lokhttp3/internal/framed/FramedStream;->close(Lokhttp3/internal/framed/ErrorCode;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6c

    :cond_62
    :goto_62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5b

    :catch_66
    move-exception v0

    move-object v1, v0

    goto :goto_16

    :catchall_69
    move-exception v0

    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v0

    :catch_6c
    move-exception v1

    if-eqz v0, :cond_62

    move-object v0, v1

    goto :goto_62

    :cond_71
    move-object v1, v0

    :cond_72
    if-eqz v4, :cond_80

    array-length v2, v4

    move v0, v3

    :goto_76
    if-ge v0, v2, :cond_80

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lokhttp3/internal/framed/Ping;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    :cond_80
    :try_start_80
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8e

    move-object v0, v1

    :cond_86
    :goto_86
    :try_start_86
    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8b} :catch_94

    :goto_8b
    if-eqz v0, :cond_93

    throw v0

    :catch_8e
    move-exception v0

    if-eqz v1, :cond_86

    move-object v0, v1

    goto :goto_86

    :cond_93
    return-void

    :catch_94
    move-exception v0

    goto :goto_8b

    :cond_96
    move-object v4, v2

    goto :goto_55

    :cond_98
    move-object v5, v2

    goto :goto_39
.end method

.method private newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    if-nez p3, :cond_1c

    const/4 v3, 0x1

    :goto_3
    if-nez p4, :cond_1e

    const/4 v4, 0x1

    :goto_6
    iget-object v9, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v9

    :try_start_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_19

    :try_start_a
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    :try_start_18
    throw v0

    :catchall_19
    move-exception v0

    monitor-exit v9
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    const/4 v3, 0x0

    goto :goto_3

    :cond_1e
    const/4 v4, 0x0

    goto :goto_6

    :cond_20
    :try_start_20
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lokhttp3/internal/framed/FramedConnection;->nextStreamId:I

    new-instance v0, Lokhttp3/internal/framed/FramedStream;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedStream;-><init>(ILokhttp3/internal/framed/FramedConnection;ZZLjava/util/List;)V

    if-eqz p3, :cond_41

    iget-wide v5, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_41

    iget-wide v5, v0, Lokhttp3/internal/framed/FramedStream;->bytesLeftInWriteWindow:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_66

    :cond_41
    const/4 v2, 0x1

    move v8, v2

    :goto_43
    invoke-virtual {v0}, Lokhttp3/internal/framed/FramedStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_16

    if-nez p1, :cond_69

    :try_start_55
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lokhttp3/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    :goto_5d
    monitor-exit v9
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_19

    if-eqz v8, :cond_65

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v1}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    :cond_65
    return-object v0

    :cond_66
    const/4 v2, 0x0

    move v8, v2

    goto :goto_43

    :cond_69
    :try_start_69
    iget-boolean v2, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz v2, :cond_75

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2, p1, v1, p2}, Lokhttp3/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V
    :try_end_7a
    .catchall {:try_start_69 .. :try_end_7a} :catchall_19

    goto :goto_5d
.end method

.method private pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 14

    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lokio/BufferedSource;->read(Lokio/Buffer;J)J

    invoke-virtual {v5}, Lokio/Buffer;->a()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v8, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$6;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    iget-object v7, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/FramedConnection$5;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/framed/FramedConnection;->writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V

    monitor-exit p0

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$4;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_13

    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private pushResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    iget-object v6, p0, Lokhttp3/internal/framed/FramedConnection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$7;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pushedStream(I)Z
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    sget-object v1, Lokhttp3/w;->d:Lokhttp3/w;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private declared-synchronized removePing(I)Lokhttp3/internal/framed/Ping;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILokhttp3/internal/framed/Ping;)V
    .registers 7

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lokhttp3/internal/framed/Ping;->send()V

    :cond_8
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lokhttp3/internal/framed/FrameWriter;->ping(ZII)V

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private writePingLater(ZIILokhttp3/internal/framed/Ping;)V
    .registers 14

    sget-object v8, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/framed/FramedConnection$3;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .registers 5

    iget-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public close()V
    .registers 3

    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->NO_ERROR:Lokhttp3/internal/framed/ErrorCode;

    sget-object v1, Lokhttp3/internal/framed/ErrorCode;->CANCEL:Lokhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/framed/FramedConnection;->close(Lokhttp3/internal/framed/ErrorCode;Lokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method public getProtocol()Lokhttp3/w;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->peerSettings:Lokhttp3/internal/framed/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/framed/Settings;->getMaxConcurrentStreams(I)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;ZZ)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ping()Lokhttp3/internal/framed/Ping;
    .registers 5

    new-instance v0, Lokhttp3/internal/framed/Ping;

    invoke-direct {v0}, Lokhttp3/internal/framed/Ping;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-boolean v1, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v1, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    :cond_15
    :try_start_15
    iget v1, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    iget v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lokhttp3/internal/framed/FramedConnection;->nextPingId:I

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    if-nez v2, :cond_28

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    :cond_28
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->pings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_12

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lokhttp3/internal/framed/FramedConnection;->writePing(ZIILokhttp3/internal/framed/Ping;)V

    return-object v0
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/framed/FramedStream;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;Z)",
            "Lokhttp3/internal/framed/FramedStream;"
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->client:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Client cannot push requests."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->protocol:Lokhttp3/w;

    sget-object v1, Lokhttp3/w;->d:Lokhttp3/w;

    if-eq v0, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol != HTTP_2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lokhttp3/internal/framed/FramedConnection;->newStream(ILjava/util/List;ZZ)Lokhttp3/internal/framed/FramedStream;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lokhttp3/internal/framed/FramedStream;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/FramedStream;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSettings(Lokhttp3/internal/framed/Settings;)V
    .registers 5

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_13

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v2, "shutdown"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    :try_start_12
    throw v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v0, p1}, Lokhttp3/internal/framed/Settings;->merge(Lokhttp3/internal/framed/Settings;)V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_10

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_13

    return-void
.end method

.method public shutdown(Lokhttp3/internal/framed/ErrorCode;)V
    .registers 6

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1a

    :try_start_4
    iget-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    if-eqz v0, :cond_b

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1d

    :try_start_9
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1a

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lokhttp3/internal/framed/FramedConnection;->shutdown:Z

    iget v0, p0, Lokhttp3/internal/framed/FramedConnection;->lastGoodStreamId:I

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1d

    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    sget-object v3, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v2, v0, p1, v3}, Lokhttp3/internal/framed/FrameWriter;->goAway(ILokhttp3/internal/framed/ErrorCode;[B)V

    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1a
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/framed/FramedConnection;->start(Z)V

    return-void
.end method

.method start(Z)V
    .registers 7

    const/high16 v3, 0x10000

    if-eqz p1, :cond_20

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0}, Lokhttp3/internal/framed/FrameWriter;->connectionPreface()V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/FrameWriter;->settings(Lokhttp3/internal/framed/Settings;)V

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->okHttpSettings:Lokhttp3/internal/framed/Settings;

    invoke-virtual {v0, v3}, Lokhttp3/internal/framed/Settings;->getInitialWindowSize(I)I

    move-result v0

    if-eq v0, v3, :cond_20

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lokhttp3/internal/framed/FrameWriter;->windowUpdate(IJ)V

    :cond_20
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lokhttp3/internal/framed/FramedConnection;->readerRunnable:Lokhttp3/internal/framed/FramedConnection$Reader;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 15

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    cmp-long v0, p4, v7

    if-nez v0, :cond_33

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3, v1}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-wide v2, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    iget-object v2, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v2}, Lokhttp3/internal/framed/FrameWriter;->maxDataLength()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v3, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_59

    int-to-long v3, v2

    sub-long/2addr p4, v3

    iget-object v3, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    if-eqz p2, :cond_60

    cmp-long v0, p4, v7

    if-nez v0, :cond_60

    const/4 v0, 0x1

    :goto_30
    invoke-interface {v3, v0, p1, p3, v2}, Lokhttp3/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    :cond_33
    cmp-long v0, p4, v7

    if-lez v0, :cond_c

    monitor-enter p0

    :goto_38
    :try_start_38
    iget-wide v2, p0, Lokhttp3/internal/framed/FramedConnection;->bytesLeftInWriteWindow:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_d

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_52} :catch_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_59

    :catch_52
    move-exception v0

    :try_start_53
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_5f} :catch_52
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_38

    :cond_60
    move v0, v1

    goto :goto_30
.end method

.method writeSynReply(IZLjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lokhttp3/internal/framed/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method writeSynReset(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/framed/FramedConnection;->frameWriter:Lokhttp3/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lokhttp3/internal/framed/FrameWriter;->rstStream(ILokhttp3/internal/framed/ErrorCode;)V

    return-void
.end method

.method writeSynResetLater(ILokhttp3/internal/framed/ErrorCode;)V
    .registers 10

    sget-object v6, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/framed/FramedConnection$1;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .registers 12

    sget-object v7, Lokhttp3/internal/framed/FramedConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lokhttp3/internal/framed/FramedConnection$2;

    const-string v2, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lokhttp3/internal/framed/FramedConnection;->hostname:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/framed/FramedConnection$2;-><init>(Lokhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
