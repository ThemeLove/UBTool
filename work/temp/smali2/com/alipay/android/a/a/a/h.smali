.class public Lcom/alipay/android/a/a/a/h;
.super Lcom/alipay/android/a/a/a/z;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/z;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/h;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/a/a/a/h;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/alipay/android/a/a/a/ae;)Lcom/alipay/android/a/a/a/g;
    .registers 3

    new-instance v0, Lcom/alipay/android/a/a/a/i;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/a/a/a/i;-><init>(Lcom/alipay/android/a/a/a/h;Lcom/alipay/android/a/a/a/ae;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/alipay/android/a/a/a/ae;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alipay/android/a/a/a/ae;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/a/a/a/ab;

    invoke-direct {p0, p2}, Lcom/alipay/android/a/a/a/h;->a(Lcom/alipay/android/a/a/a/ae;)Lcom/alipay/android/a/a/a/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/a/a/a/ab;-><init>(Lcom/alipay/android/a/a/a/g;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/a/a/a/ab;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
