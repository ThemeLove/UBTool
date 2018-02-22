.class public final Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final diskKey:Ljava/lang/String;

.field private final ins:[Ljava/io/FileInputStream;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .registers 7

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    iput-object p5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    iput-object p6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/lidroid/xutils/cache/LruDiskCache$Snapshot;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v2, :cond_7

    return-void

    :cond_7
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public edit()Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$5(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;J)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/FileInputStream;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    # invokes: Lcom/lidroid/xutils/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
