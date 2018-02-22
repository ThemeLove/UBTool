.class public Lcom/alipay/android/a/a/a/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/android/a/a/a/g;

.field private b:Lcom/alipay/android/a/a/a/ad;


# direct methods
.method public constructor <init>(Lcom/alipay/android/a/a/a/g;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/ab;->a:Lcom/alipay/android/a/a/a/g;

    new-instance v0, Lcom/alipay/android/a/a/a/ad;

    invoke-direct {v0, p0}, Lcom/alipay/android/a/a/a/ad;-><init>(Lcom/alipay/android/a/a/a/ab;)V

    iput-object v0, p0, Lcom/alipay/android/a/a/a/ab;->b:Lcom/alipay/android/a/a/a/ad;

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/a/a/a/g;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/ab;->a:Lcom/alipay/android/a/a/a/g;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/android/a/a/a/ac;

    iget-object v3, p0, Lcom/alipay/android/a/a/a/ab;->a:Lcom/alipay/android/a/a/a/g;

    iget-object v4, p0, Lcom/alipay/android/a/a/a/ab;->b:Lcom/alipay/android/a/a/a/ad;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/android/a/a/a/ac;-><init>(Lcom/alipay/android/a/a/a/g;Ljava/lang/Class;Lcom/alipay/android/a/a/a/ad;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
