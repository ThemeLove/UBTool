.class public final Lcom/alipay/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/a/a/i;
.implements Lcom/alipay/a/a/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 3

    return-object p1
.end method

.method public final a(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/alipay/a/b/a;->a(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
