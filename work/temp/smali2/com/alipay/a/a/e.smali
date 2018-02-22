.class public final Lcom/alipay/a/a/e;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/a/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/l;

    invoke-direct {v1}, Lcom/alipay/a/a/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/d;

    invoke-direct {v1}, Lcom/alipay/a/a/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/c;

    invoke-direct {v1}, Lcom/alipay/a/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/h;

    invoke-direct {v1}, Lcom/alipay/a/a/h;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/k;

    invoke-direct {v1}, Lcom/alipay/a/a/k;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/b;

    invoke-direct {v1}, Lcom/alipay/a/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/a;

    invoke-direct {v1}, Lcom/alipay/a/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    new-instance v1, Lcom/alipay/a/a/g;

    invoke-direct {v1}, Lcom/alipay/a/a/g;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/a/a/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/a/a/i;

    invoke-static {p1}, Lcom/alipay/a/b/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/a/a/i;->a(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0, p0, p1}, Lcom/alipay/a/a/i;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lorg/json/a/b;

    invoke-direct {v1, v0}, Lorg/json/a/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alipay/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_28
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v1, Lorg/json/a/c;

    invoke-direct {v1, v0}, Lorg/json/a/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/alipay/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9

    :cond_42
    invoke-static {v0, p1}, Lcom/alipay/a/a/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method
