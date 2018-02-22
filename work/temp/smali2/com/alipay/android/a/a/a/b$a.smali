.class Lcom/alipay/android/a/a/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/a/a/a/b;


# direct methods
.method private constructor <init>(Lcom/alipay/android/a/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/a/a/a/b$a;->a:Lcom/alipay/android/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/a/a/a/b;Lcom/alipay/android/a/a/a/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alipay/android/a/a/a/b$a;-><init>(Lcom/alipay/android/a/a/a/b;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5

    iget-object v0, p0, Lcom/alipay/android/a/a/a/b$a;->a:Lcom/alipay/android/a/a/a/b;

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b;->a(Lcom/alipay/android/a/a/a/b;)Lcom/alipay/android/a/a/a/b$b;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/alipay/android/a/a/a/b$b;->a(Lcom/alipay/android/a/a/a/b$b;)Z

    move-result v1

    if-eqz v1, :cond_1c

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1c

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/alipay/android/a/a/a/b;->a(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/a/a/a/b$b;->a(Lcom/alipay/android/a/a/a/b$b;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
