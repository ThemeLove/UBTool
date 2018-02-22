.class public final Lsdk/pay/d/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsdk/pay/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lsdk/pay/d/e;->c:I

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsdk/pay/d/e;->j:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->q:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lsdk/pay/d/e;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lsdk/pay/d/e;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->p:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsdk/pay/d/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsdk/pay/d/e;->j:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lsdk/pay/d/e;->t:Z

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .registers 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_1e

    packed-switch v0, :pswitch_data_20

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_a
    aget-object v2, p1, v0

    iput-object v2, p0, Lsdk/pay/d/e;->d:Ljava/lang/String;

    goto :goto_7

    :pswitch_f
    aget-object v2, p1, v0

    iput-object v2, p0, Lsdk/pay/d/e;->g:Ljava/lang/String;

    goto :goto_7

    :pswitch_14
    aget-object v2, p1, v0

    iput-object v2, p0, Lsdk/pay/d/e;->h:Ljava/lang/String;

    goto :goto_7

    :pswitch_19
    aget-object v2, p1, v0

    iput-object v2, p0, Lsdk/pay/d/e;->f:Ljava/lang/String;

    goto :goto_7

    :cond_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lsdk/pay/d/e;->t:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->r:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lsdk/pay/d/e;->s:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lsdk/pay/d/e;->s:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->q:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/e;->p:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lsdk/pay/d/e;->r:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->o:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->n:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->m:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->l:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d/e;->b:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lsdk/pay/d/e;->c:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/e;->h:Ljava/lang/String;

    return-object v0
.end method
