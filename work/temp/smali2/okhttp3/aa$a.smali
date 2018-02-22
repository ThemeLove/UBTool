.class public Lokhttp3/aa$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/y;

.field private b:Lokhttp3/w;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lokhttp3/q;

.field private f:Lokhttp3/r$a;

.field private g:Lokhttp3/ab;

.field private h:Lokhttp3/aa;

.field private i:Lokhttp3/aa;

.field private j:Lokhttp3/aa;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/aa$a;->c:I

    new-instance v0, Lokhttp3/r$a;

    invoke-direct {v0}, Lokhttp3/r$a;-><init>()V

    iput-object v0, p0, Lokhttp3/aa$a;->f:Lokhttp3/r$a;

    return-void
.end method

.method private constructor <init>(Lokhttp3/aa;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/aa$a;->c:I

    invoke-static {p1}, Lokhttp3/aa;->a(Lokhttp3/aa;)Lokhttp3/y;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/y;

    invoke-static {p1}, Lokhttp3/aa;->b(Lokhttp3/aa;)Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->b:Lokhttp3/w;

    invoke-static {p1}, Lokhttp3/aa;->c(Lokhttp3/aa;)I

    move-result v0

    iput v0, p0, Lokhttp3/aa$a;->c:I

    invoke-static {p1}, Lokhttp3/aa;->d(Lokhttp3/aa;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/aa;->e(Lokhttp3/aa;)Lokhttp3/q;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->e:Lokhttp3/q;

    invoke-static {p1}, Lokhttp3/aa;->f(Lokhttp3/aa;)Lokhttp3/r;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/r;->b()Lokhttp3/r$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->f:Lokhttp3/r$a;

    invoke-static {p1}, Lokhttp3/aa;->g(Lokhttp3/aa;)Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->g:Lokhttp3/ab;

    invoke-static {p1}, Lokhttp3/aa;->h(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->h:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa;->i(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->i:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa;->j(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->j:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa;->k(Lokhttp3/aa;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/aa$a;->k:J

    invoke-static {p1}, Lokhttp3/aa;->l(Lokhttp3/aa;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/aa$a;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/aa;Lokhttp3/aa$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/aa$a;-><init>(Lokhttp3/aa;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/aa$a;)Lokhttp3/y;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/y;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lokhttp3/aa;)V
    .registers 6

    invoke-static {p2}, Lokhttp3/aa;->g(Lokhttp3/aa;)Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {p2}, Lokhttp3/aa;->h(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-static {p2}, Lokhttp3/aa;->i(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    invoke-static {p2}, Lokhttp3/aa;->j(Lokhttp3/aa;)Lokhttp3/aa;

    move-result-object v0

    if-eqz v0, :cond_7c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    return-void
.end method

.method static synthetic b(Lokhttp3/aa$a;)Lokhttp3/w;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->b:Lokhttp3/w;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/aa$a;)I
    .registers 2

    iget v0, p0, Lokhttp3/aa$a;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/aa$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lokhttp3/aa;)V
    .registers 4

    invoke-static {p1}, Lokhttp3/aa;->g(Lokhttp3/aa;)Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method static synthetic e(Lokhttp3/aa$a;)Lokhttp3/q;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->e:Lokhttp3/q;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/aa$a;)Lokhttp3/r$a;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->f:Lokhttp3/r$a;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/aa$a;)Lokhttp3/ab;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->g:Lokhttp3/ab;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/aa$a;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->h:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/aa$a;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->i:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/aa$a;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa$a;->j:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/aa$a;)J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa$a;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/aa$a;)J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa$a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Lokhttp3/aa$a;
    .registers 2

    iput p1, p0, Lokhttp3/aa$a;->c:I

    return-object p0
.end method

.method public a(J)Lokhttp3/aa$a;
    .registers 3

    iput-wide p1, p0, Lokhttp3/aa$a;->k:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lokhttp3/aa$a;
    .registers 2

    iput-object p1, p0, Lokhttp3/aa$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/aa$a;
    .registers 4

    iget-object v0, p0, Lokhttp3/aa$a;->f:Lokhttp3/r$a;

    invoke-virtual {v0, p1, p2}, Lokhttp3/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/r$a;

    return-object p0
.end method

.method public a(Lokhttp3/aa;)Lokhttp3/aa$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/aa;)V

    :cond_7
    iput-object p1, p0, Lokhttp3/aa$a;->h:Lokhttp3/aa;

    return-object p0
.end method

.method public a(Lokhttp3/ab;)Lokhttp3/aa$a;
    .registers 2

    iput-object p1, p0, Lokhttp3/aa$a;->g:Lokhttp3/ab;

    return-object p0
.end method

.method public a(Lokhttp3/q;)Lokhttp3/aa$a;
    .registers 2

    iput-object p1, p0, Lokhttp3/aa$a;->e:Lokhttp3/q;

    return-object p0
.end method

.method public a(Lokhttp3/r;)Lokhttp3/aa$a;
    .registers 3

    invoke-virtual {p1}, Lokhttp3/r;->b()Lokhttp3/r$a;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa$a;->f:Lokhttp3/r$a;

    return-object p0
.end method

.method public a(Lokhttp3/w;)Lokhttp3/aa$a;
    .registers 2

    iput-object p1, p0, Lokhttp3/aa$a;->b:Lokhttp3/w;

    return-object p0
.end method

.method public a(Lokhttp3/y;)Lokhttp3/aa$a;
    .registers 2

    iput-object p1, p0, Lokhttp3/aa$a;->a:Lokhttp3/y;

    return-object p0
.end method

.method public a()Lokhttp3/aa;
    .registers 4

    iget-object v0, p0, Lokhttp3/aa$a;->a:Lokhttp3/y;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lokhttp3/aa$a;->b:Lokhttp3/w;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget v0, p0, Lokhttp3/aa$a;->c:I

    if-gez v0, :cond_37

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lokhttp3/aa$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Lokhttp3/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/aa;-><init>(Lokhttp3/aa$a;Lokhttp3/aa$1;)V

    return-object v0
.end method

.method public b(J)Lokhttp3/aa$a;
    .registers 3

    iput-wide p1, p0, Lokhttp3/aa$a;->l:J

    return-object p0
.end method

.method public b(Lokhttp3/aa;)Lokhttp3/aa$a;
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lokhttp3/aa$a;->a(Ljava/lang/String;Lokhttp3/aa;)V

    :cond_7
    iput-object p1, p0, Lokhttp3/aa$a;->i:Lokhttp3/aa;

    return-object p0
.end method

.method public c(Lokhttp3/aa;)Lokhttp3/aa$a;
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lokhttp3/aa$a;->d(Lokhttp3/aa;)V

    :cond_5
    iput-object p1, p0, Lokhttp3/aa$a;->j:Lokhttp3/aa;

    return-object p0
.end method
