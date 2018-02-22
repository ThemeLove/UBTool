.class Lcom/alipay/android/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/alipay/android/a/a/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/a/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/a/a/a/f;->a:Lcom/alipay/android/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 5

    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method
