.class Lcom/lidroid/xutils/DbUtils$FindTempCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/DbUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindTempCache"
.end annotation


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private seq:J

.field final synthetic this$0:Lcom/lidroid/xutils/DbUtils;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/DbUtils;)V
    .registers 4

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->this$0:Lcom/lidroid/xutils/DbUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/DbUtils;Lcom/lidroid/xutils/DbUtils$FindTempCache;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;-><init>(Lcom/lidroid/xutils/DbUtils;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void
.end method

.method public setSeq(J)V
    .registers 5

    iget-wide v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-wide p1, p0, Lcom/lidroid/xutils/DbUtils$FindTempCache;->seq:J

    :cond_d
    return-void
.end method
