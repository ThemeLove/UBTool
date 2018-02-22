.class public Lcom/alipay/android/a/a/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected a:Lcom/alipay/android/a/a/a/g;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/alipay/android/a/a/a/ad;


# direct methods
.method public constructor <init>(Lcom/alipay/android/a/a/a/g;Ljava/lang/Class;Lcom/alipay/android/a/a/a/ad;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/a/a/a/g;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alipay/android/a/a/a/ad;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/ac;->a:Lcom/alipay/android/a/a/a/g;

    iput-object p2, p0, Lcom/alipay/android/a/a/a/ac;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alipay/android/a/a/a/ac;->c:Lcom/alipay/android/a/a/a/ad;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/alipay/android/a/a/a/ac;->c:Lcom/alipay/android/a/a/a/ad;

    iget-object v1, p0, Lcom/alipay/android/a/a/a/ac;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alipay/android/a/a/a/ad;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
