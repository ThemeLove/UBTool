.class public final Lokhttp3/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lokhttp3/o;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/w;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/l;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lokhttp3/n;

.field i:Lokhttp3/c;

.field j:Lokhttp3/internal/cache/InternalCache;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lokhttp3/internal/tls/CertificateChainCleaner;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lokhttp3/g;

.field p:Lokhttp3/b;

.field q:Lokhttp3/b;

.field r:Lokhttp3/k;

.field s:Lokhttp3/p;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/v$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/v$a;->f:Ljava/util/List;

    new-instance v0, Lokhttp3/o;

    invoke-direct {v0}, Lokhttp3/o;-><init>()V

    iput-object v0, p0, Lokhttp3/v$a;->a:Lokhttp3/o;

    invoke-static {}, Lokhttp3/v;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v$a;->c:Ljava/util/List;

    invoke-static {}, Lokhttp3/v;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v$a;->d:Ljava/util/List;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v$a;->g:Ljava/net/ProxySelector;

    sget-object v0, Lokhttp3/n;->a:Lokhttp3/n;

    iput-object v0, p0, Lokhttp3/v$a;->h:Lokhttp3/n;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/v$a;->k:Ljavax/net/SocketFactory;

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/v$a;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lokhttp3/g;->a:Lokhttp3/g;

    iput-object v0, p0, Lokhttp3/v$a;->o:Lokhttp3/g;

    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/v$a;->p:Lokhttp3/b;

    sget-object v0, Lokhttp3/b;->a:Lokhttp3/b;

    iput-object v0, p0, Lokhttp3/v$a;->q:Lokhttp3/b;

    new-instance v0, Lokhttp3/k;

    invoke-direct {v0}, Lokhttp3/k;-><init>()V

    iput-object v0, p0, Lokhttp3/v$a;->r:Lokhttp3/k;

    sget-object v0, Lokhttp3/p;->a:Lokhttp3/p;

    iput-object v0, p0, Lokhttp3/v$a;->s:Lokhttp3/p;

    iput-boolean v1, p0, Lokhttp3/v$a;->t:Z

    iput-boolean v1, p0, Lokhttp3/v$a;->u:Z

    iput-boolean v1, p0, Lokhttp3/v$a;->v:Z

    iput v2, p0, Lokhttp3/v$a;->w:I

    iput v2, p0, Lokhttp3/v$a;->x:I

    iput v2, p0, Lokhttp3/v$a;->y:I

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/v$a;
    .registers 10

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, v0, v4

    if-nez v2, :cond_3b

    cmp-long v2, p1, v4

    if-lez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/v$a;->w:I

    return-object p0
.end method

.method public a()Lokhttp3/v;
    .registers 3

    new-instance v0, Lokhttp3/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/v;-><init>(Lokhttp3/v$a;Lokhttp3/v$1;)V

    return-object v0
.end method

.method a(Lokhttp3/internal/cache/InternalCache;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/v$a;->j:Lokhttp3/internal/cache/InternalCache;

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/v$a;->i:Lokhttp3/c;

    return-void
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/v$a;
    .registers 10

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    cmp-long v2, v0, v4

    if-nez v2, :cond_3b

    cmp-long v2, p1, v4

    if-lez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too small."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    long-to-int v0, v0

    iput v0, p0, Lokhttp3/v$a;->x:I

    return-object p0
.end method
