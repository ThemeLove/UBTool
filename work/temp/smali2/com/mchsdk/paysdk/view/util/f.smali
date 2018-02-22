.class public Lcom/mchsdk/paysdk/view/util/f;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/mchsdk/paysdk/view/util/f;


# instance fields
.field private a:Lcom/mchsdk/paysdk/g/a;

.field private c:I

.field private d:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x3c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    iput v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    new-instance v0, Lcom/mchsdk/paysdk/g/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/g/a;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->a:Lcom/mchsdk/paysdk/g/a;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/view/util/f;)I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    return v0
.end method

.method private a()V
    .registers 7

    const-wide/16 v2, 0x3e8

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    new-instance v1, Lcom/mchsdk/paysdk/view/util/f$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/view/util/f$1;-><init>(Lcom/mchsdk/paysdk/view/util/f;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/view/util/f;)Lcom/mchsdk/paysdk/g/a;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->a:Lcom/mchsdk/paysdk/g/a;

    return-object v0
.end method

.method public static b()Lcom/mchsdk/paysdk/view/util/f;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/view/util/f;->b:Lcom/mchsdk/paysdk/view/util/f;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/view/util/f;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/view/util/f;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/view/util/f;->b:Lcom/mchsdk/paysdk/view/util/f;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/view/util/f;->b:Lcom/mchsdk/paysdk/view/util/f;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/view/util/f;)I
    .registers 3

    iget v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    return v0
.end method


# virtual methods
.method public c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    :cond_c
    const/16 v0, 0x3c

    iput v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/util/f;->a()V
    :try_end_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1a
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->a:Lcom/mchsdk/paysdk/g/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mchsdk/paysdk/view/util/f;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->d:Ljava/util/Timer;

    :cond_29
    return-void
.end method

.method public e()Lcom/mchsdk/paysdk/g/a;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f;->a:Lcom/mchsdk/paysdk/g/a;

    return-object v0
.end method
