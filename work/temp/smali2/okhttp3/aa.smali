.class public final Lokhttp3/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/aa$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/y;

.field private final b:Lokhttp3/w;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Lokhttp3/q;

.field private final f:Lokhttp3/r;

.field private final g:Lokhttp3/ab;

.field private final h:Lokhttp3/aa;

.field private final i:Lokhttp3/aa;

.field private final j:Lokhttp3/aa;

.field private final k:J

.field private final l:J

.field private volatile m:Lokhttp3/d;


# direct methods
.method private constructor <init>(Lokhttp3/aa$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lokhttp3/aa$a;->a(Lokhttp3/aa$a;)Lokhttp3/y;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/y;

    invoke-static {p1}, Lokhttp3/aa$a;->b(Lokhttp3/aa$a;)Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->b:Lokhttp3/w;

    invoke-static {p1}, Lokhttp3/aa$a;->c(Lokhttp3/aa$a;)I

    move-result v0

    iput v0, p0, Lokhttp3/aa;->c:I

    invoke-static {p1}, Lokhttp3/aa$a;->d(Lokhttp3/aa$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->d:Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/aa$a;->e(Lokhttp3/aa$a;)Lokhttp3/q;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->e:Lokhttp3/q;

    invoke-static {p1}, Lokhttp3/aa$a;->f(Lokhttp3/aa$a;)Lokhttp3/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/r;

    invoke-static {p1}, Lokhttp3/aa$a;->g(Lokhttp3/aa$a;)Lokhttp3/ab;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->g:Lokhttp3/ab;

    invoke-static {p1}, Lokhttp3/aa$a;->h(Lokhttp3/aa$a;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->h:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa$a;->i(Lokhttp3/aa$a;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->i:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa$a;->j(Lokhttp3/aa$a;)Lokhttp3/aa;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->j:Lokhttp3/aa;

    invoke-static {p1}, Lokhttp3/aa$a;->k(Lokhttp3/aa$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/aa;->k:J

    invoke-static {p1}, Lokhttp3/aa$a;->l(Lokhttp3/aa$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/aa;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/aa$a;Lokhttp3/aa$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/aa;-><init>(Lokhttp3/aa$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/aa;)Lokhttp3/y;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/y;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/aa;)Lokhttp3/w;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->b:Lokhttp3/w;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/aa;)I
    .registers 2

    iget v0, p0, Lokhttp3/aa;->c:I

    return v0
.end method

.method static synthetic d(Lokhttp3/aa;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/aa;)Lokhttp3/q;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->e:Lokhttp3/q;

    return-object v0
.end method

.method static synthetic f(Lokhttp3/aa;)Lokhttp3/r;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/r;

    return-object v0
.end method

.method static synthetic g(Lokhttp3/aa;)Lokhttp3/ab;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->g:Lokhttp3/ab;

    return-object v0
.end method

.method static synthetic h(Lokhttp3/aa;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->h:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic i(Lokhttp3/aa;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->i:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic j(Lokhttp3/aa;)Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->j:Lokhttp3/aa;

    return-object v0
.end method

.method static synthetic k(Lokhttp3/aa;)J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa;->k:J

    return-wide v0
.end method

.method static synthetic l(Lokhttp3/aa;)J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokhttp3/aa;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object p2, v0

    :cond_9
    return-object p2
.end method

.method public a()Lokhttp3/y;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->a:Lokhttp3/y;

    return-object v0
.end method

.method public b()Lokhttp3/w;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->b:Lokhttp3/w;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lokhttp3/aa;->c:I

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->g:Lokhttp3/ab;

    invoke-virtual {v0}, Lokhttp3/ab;->close()V

    return-void
.end method

.method public d()Z
    .registers 3

    iget v0, p0, Lokhttp3/aa;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Lokhttp3/aa;->c:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lokhttp3/q;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->e:Lokhttp3/q;

    return-object v0
.end method

.method public g()Lokhttp3/r;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/r;

    return-object v0
.end method

.method public h()Lokhttp3/ab;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->g:Lokhttp3/ab;

    return-object v0
.end method

.method public i()Lokhttp3/aa$a;
    .registers 3

    new-instance v0, Lokhttp3/aa$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/aa$a;-><init>(Lokhttp3/aa;Lokhttp3/aa$1;)V

    return-object v0
.end method

.method public j()Lokhttp3/aa;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->h:Lokhttp3/aa;

    return-object v0
.end method

.method public k()Lokhttp3/d;
    .registers 2

    iget-object v0, p0, Lokhttp3/aa;->m:Lokhttp3/d;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lokhttp3/aa;->f:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/d;->a(Lokhttp3/r;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/aa;->m:Lokhttp3/d;

    goto :goto_4
.end method

.method public l()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa;->k:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/aa;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/aa;->b:Lokhttp3/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lokhttp3/aa;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/aa;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/aa;->a:Lokhttp3/y;

    invoke-virtual {v1}, Lokhttp3/y;->a()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
