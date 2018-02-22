.class Lcom/alipay/android/a/a/a/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/alipay/android/a/a/a/b$b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/alipay/android/a/a/a/b$b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget v0, p0, Lcom/alipay/android/a/a/a/b$b;->b:I

    iget-object v1, p0, Lcom/alipay/android/a/a/a/b$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/alipay/android/a/a/a/b$b;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/android/a/a/a/b$b;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/a/a/a/b$b;)Z
    .registers 2

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/b$b;->a()Z

    move-result v0

    return v0
.end method
