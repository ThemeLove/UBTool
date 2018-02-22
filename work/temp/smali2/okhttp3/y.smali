.class public final Lokhttp3/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/y$a;
    }
.end annotation


# instance fields
.field private final a:Lokhttp3/s;

.field private final b:Ljava/lang/String;

.field private final c:Lokhttp3/r;

.field private final d:Lokhttp3/z;

.field private final e:Ljava/lang/Object;

.field private volatile f:Lokhttp3/d;


# direct methods
.method private constructor <init>(Lokhttp3/y$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lokhttp3/y$a;->a(Lokhttp3/y$a;)Lokhttp3/s;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->a:Lokhttp3/s;

    invoke-static {p1}, Lokhttp3/y$a;->b(Lokhttp3/y$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->b:Ljava/lang/String;

    invoke-static {p1}, Lokhttp3/y$a;->c(Lokhttp3/y$a;)Lokhttp3/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/r$a;->a()Lokhttp3/r;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    invoke-static {p1}, Lokhttp3/y$a;->d(Lokhttp3/y$a;)Lokhttp3/z;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->d:Lokhttp3/z;

    invoke-static {p1}, Lokhttp3/y$a;->e(Lokhttp3/y$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-static {p1}, Lokhttp3/y$a;->e(Lokhttp3/y$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_29
    iput-object v0, p0, Lokhttp3/y;->e:Ljava/lang/Object;

    return-void

    :cond_2c
    move-object v0, p0

    goto :goto_29
.end method

.method synthetic constructor <init>(Lokhttp3/y$a;Lokhttp3/y$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lokhttp3/y;-><init>(Lokhttp3/y$a;)V

    return-void
.end method

.method static synthetic a(Lokhttp3/y;)Lokhttp3/s;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->a:Lokhttp3/s;

    return-object v0
.end method

.method static synthetic b(Lokhttp3/y;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lokhttp3/y;)Lokhttp3/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->d:Lokhttp3/z;

    return-object v0
.end method

.method static synthetic d(Lokhttp3/y;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(Lokhttp3/y;)Lokhttp3/r;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lokhttp3/s;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->a:Lokhttp3/s;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    invoke-virtual {v0, p1}, Lokhttp3/r;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lokhttp3/r;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    return-object v0
.end method

.method public d()Lokhttp3/z;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->d:Lokhttp3/z;

    return-object v0
.end method

.method public e()Lokhttp3/y$a;
    .registers 3

    new-instance v0, Lokhttp3/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lokhttp3/y$a;-><init>(Lokhttp3/y;Lokhttp3/y$1;)V

    return-object v0
.end method

.method public f()Lokhttp3/d;
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->f:Lokhttp3/d;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lokhttp3/y;->c:Lokhttp3/r;

    invoke-static {v0}, Lokhttp3/d;->a(Lokhttp3/r;)Lokhttp3/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/y;->f:Lokhttp3/d;

    goto :goto_4
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lokhttp3/y;->a:Lokhttp3/s;

    invoke-virtual {v0}, Lokhttp3/s;->c()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/y;->a:Lokhttp3/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lokhttp3/y;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_38

    iget-object v0, p0, Lokhttp3/y;->e:Ljava/lang/Object;

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_29
.end method
