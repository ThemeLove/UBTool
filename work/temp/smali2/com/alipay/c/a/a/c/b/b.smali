.class public final Lcom/alipay/c/a/a/c/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/c/a/a/c/b/a;


# static fields
.field private static a:Lcom/alipay/c/a/a/c/b/a;

.field private static b:Lcom/alipay/c/a/a/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/c/a/a/c/b/b;->a:Lcom/alipay/c/a/a/c/b/a;

    sput-object v0, Lcom/alipay/c/a/a/c/b/b;->b:Lcom/alipay/c/a/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/c/a/a/c/b/a;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    sget-object v1, Lcom/alipay/c/a/a/c/b/b;->a:Lcom/alipay/c/a/a/c/b/a;

    if-nez v1, :cond_13

    if-nez p0, :cond_16

    :goto_a
    sput-object v0, Lcom/alipay/c/a/a/c/b/b;->b:Lcom/alipay/c/a/a/c/a;

    new-instance v0, Lcom/alipay/c/a/a/c/b/b;

    invoke-direct {v0}, Lcom/alipay/c/a/a/c/b/b;-><init>()V

    sput-object v0, Lcom/alipay/c/a/a/c/b/b;->a:Lcom/alipay/c/a/a/c/b/a;

    :cond_13
    sget-object v0, Lcom/alipay/c/a/a/c/b/b;->a:Lcom/alipay/c/a/a/c/b/a;

    goto :goto_3

    :cond_16
    invoke-static {p0, p1}, Lcom/alipay/c/a/a/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/c/a/a/c/b;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final a(Lcom/alipay/c/a/a/c/a/d;)Lcom/alipay/c/a/a/c/a/c;
    .registers 6

    new-instance v0, Lcom/alipay/f/a/a/b/a/a/a;

    invoke-direct {v0}, Lcom/alipay/f/a/a/b/a/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->c:Ljava/lang/String;

    const-string v1, "8"

    iput-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->b:Ljava/lang/String;

    const-string v1, "1"

    iput-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->d:Ljava/util/Map;

    iget-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->d:Ljava/util/Map;

    const-string v2, "apdid"

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->d:Ljava/util/Map;

    const-string v2, "apdidToken"

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->d:Ljava/util/Map;

    const-string v2, "umidToken"

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->d:Ljava/util/Map;

    const-string v2, "dynamicKey"

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alipay/c/a/a/c/a/d;->e()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/f/a/a/b/a/a/a;->e:Ljava/util/Map;

    sget-object v1, Lcom/alipay/c/a/a/c/b/b;->b:Lcom/alipay/c/a/a/c/a;

    invoke-interface {v1, v0}, Lcom/alipay/c/a/a/c/a;->a(Lcom/alipay/f/a/a/b/a/a/a;)Lcom/alipay/f/a/a/b/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/c/a/b;->a(Lcom/alipay/f/a/a/b/a/a/b;)Lcom/alipay/c/a/a/c/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/alipay/c/a/a/c/b/b;->b:Lcom/alipay/c/a/a/c/a;

    invoke-interface {v0, p1}, Lcom/alipay/c/a/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
