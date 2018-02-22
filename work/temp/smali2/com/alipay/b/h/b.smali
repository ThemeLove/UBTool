.class public final Lcom/alipay/b/h/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/b/h/b;


# instance fields
.field private b:Ljava/lang/Thread;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/b/h/b;

    invoke-direct {v0}, Lcom/alipay/b/h/b;-><init>()V

    sput-object v0, Lcom/alipay/b/h/b;->a:Lcom/alipay/b/h/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/b/h/b;->b:Ljava/lang/Thread;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/b/h/b;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public static a()Lcom/alipay/b/h/b;
    .registers 1

    sget-object v0, Lcom/alipay/b/h/b;->a:Lcom/alipay/b/h/b;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/b/h/b;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/alipay/b/h/b;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/b/h/b;)Ljava/lang/Thread;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/b/h/b;->b:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/b/h/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/b/h/b;->b:Ljava/lang/Thread;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/b/h/c;

    invoke-direct {v1, p0}, Lcom/alipay/b/h/c;-><init>(Lcom/alipay/b/h/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/b/h/b;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/b/h/b;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
