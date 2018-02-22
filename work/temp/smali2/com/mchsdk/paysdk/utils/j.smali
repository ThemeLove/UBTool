.class public Lcom/mchsdk/paysdk/utils/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/utils/j$a;,
        Lcom/mchsdk/paysdk/utils/j$b;
    }
.end annotation


# static fields
.field public static a:J


# instance fields
.field final b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/mchsdk/paysdk/e/c;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:Lcom/mchsdk/paysdk/utils/j$b;

.field private l:Lcom/mchsdk/paysdk/utils/j$b;

.field private m:I

.field private n:Lcom/mchsdk/paysdk/utils/j$a;

.field private o:J

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mchsdk/paysdk/e/c;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/utils/j$1;-><init>(Lcom/mchsdk/paysdk/utils/j;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/j;->b()V

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->o:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->d:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/j;->a(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->h:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->a()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->b()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->j:J

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/c;->k()I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->e:Ljava/lang/String;

    iget v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_79
    const-string v0, "MyTimeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hours: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;)D
    .registers 6

    const-wide/high16 v2, 0x404e000000000000L

    invoke-static {p1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/j;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    return v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/j;I)I
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    return p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/j;J)J
    .registers 3

    iput-wide p1, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    return-object p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/utils/j;J)J
    .registers 3

    iput-wide p1, p0, Lcom/mchsdk/paysdk/utils/j;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$b;)Lcom/mchsdk/paysdk/utils/j$b;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/j;->k:Lcom/mchsdk/paysdk/utils/j$b;

    return-object p1
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/utils/j;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mchsdk/paysdk/utils/j$a;-><init>(Lcom/mchsdk/paysdk/utils/j;Lcom/mchsdk/paysdk/utils/j$1;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->n:Lcom/mchsdk/paysdk/utils/j$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "StopTiming"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/j;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/j;->n:Lcom/mchsdk/paysdk/utils/j$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/utils/j;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    return-object v0
.end method

.method static synthetic e(Lcom/mchsdk/paysdk/utils/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/mchsdk/paysdk/utils/j;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    return v0
.end method

.method static synthetic g(Lcom/mchsdk/paysdk/utils/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    return-wide v0
.end method

.method static synthetic h(Lcom/mchsdk/paysdk/utils/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    return-wide v0
.end method

.method static synthetic i(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/e/c;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->f:Lcom/mchsdk/paysdk/e/c;

    return-object v0
.end method

.method static synthetic j(Lcom/mchsdk/paysdk/utils/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->h:J

    return-wide v0
.end method

.method static synthetic k(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j$b;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->k:Lcom/mchsdk/paysdk/utils/j$b;

    return-object v0
.end method

.method static synthetic l(Lcom/mchsdk/paysdk/utils/j;)J
    .registers 3

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->d:J

    return-wide v0
.end method


# virtual methods
.method public a()Lcom/mchsdk/open/AnnounceTimeCallBack;
    .registers 2

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getAnnounceTimeCallBack()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getAnnounceTimeCallBack()Lcom/mchsdk/open/AnnounceTimeCallBack;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public a(Lcom/mchsdk/paysdk/e/c;)V
    .registers 11

    const/4 v8, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    if-nez p1, :cond_e

    const-string v0, "MyTimeUtil"

    const-string v1, "antiAddictions is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/c;->k()I

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    const-string v0, "MyTimeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "age_status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    if-nez v0, :cond_49

    sput-boolean v6, Lcom/mchsdk/paysdk/a/h;->c:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    if-nez v0, :cond_44

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    iget-wide v1, p0, Lcom/mchsdk/paysdk/utils/j;->o:J

    mul-long v2, v1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    :cond_44
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    :cond_49
    iget v0, p0, Lcom/mchsdk/paysdk/utils/j;->p:I

    if-ne v0, v8, :cond_d

    sput-boolean v6, Lcom/mchsdk/paysdk/a/h;->c:Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->l:Lcom/mchsdk/paysdk/utils/j$b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->cancel()V

    :cond_58
    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->j:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7c

    iput v6, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->k:Lcom/mchsdk/paysdk/utils/j$b;

    if-nez v0, :cond_76

    new-instance v0, Lcom/mchsdk/paysdk/utils/j$b;

    sget-wide v1, Lcom/mchsdk/paysdk/utils/j;->a:J

    mul-long v2, v1, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mchsdk/paysdk/utils/j$b;-><init>(Lcom/mchsdk/paysdk/utils/j;JJ)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->k:Lcom/mchsdk/paysdk/utils/j$b;

    :cond_76
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/j;->k:Lcom/mchsdk/paysdk/utils/j$b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/utils/j$b;->start()Landroid/os/CountDownTimer;

    goto :goto_d

    :cond_7c
    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_8e

    iput v6, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    goto :goto_66

    :cond_8e
    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    iget-wide v6, p0, Lcom/mchsdk/paysdk/utils/j;->h:J

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b8

    const/4 v0, 0x2

    iput v0, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->g:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->h:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->i:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    sget-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    iput v8, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->d:J

    iget-wide v2, p0, Lcom/mchsdk/paysdk/utils/j;->j:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    goto :goto_66

    :cond_b8
    iput v8, p0, Lcom/mchsdk/paysdk/utils/j;->m:I

    iget-wide v0, p0, Lcom/mchsdk/paysdk/utils/j;->d:J

    sput-wide v0, Lcom/mchsdk/paysdk/utils/j;->a:J

    goto :goto_66
.end method
