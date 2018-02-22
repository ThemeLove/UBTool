.class Lcom/alipay/android/a/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/a/a/a/g;


# instance fields
.field final synthetic a:Lcom/alipay/android/a/a/a/ae;

.field final synthetic b:Lcom/alipay/android/a/a/a/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/a/a/a/h;Lcom/alipay/android/a/a/a/ae;)V
    .registers 3

    iput-object p1, p0, Lcom/alipay/android/a/a/a/i;->b:Lcom/alipay/android/a/a/a/h;

    iput-object p2, p0, Lcom/alipay/android/a/a/a/i;->a:Lcom/alipay/android/a/a/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/i;->a:Lcom/alipay/android/a/a/a/ae;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/alipay/android/a/a/a/ag;
    .registers 2

    invoke-virtual {p0}, Lcom/alipay/android/a/a/a/i;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/a/a/a/m;->a(Landroid/content/Context;)Lcom/alipay/android/a/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/alipay/android/a/a/a/ae;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/i;->a:Lcom/alipay/android/a/a/a/ae;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/i;->a:Lcom/alipay/android/a/a/a/ae;

    invoke-virtual {v0}, Lcom/alipay/android/a/a/a/ae;->c()Z

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/i;->b:Lcom/alipay/android/a/a/a/h;

    invoke-static {v0}, Lcom/alipay/android/a/a/a/h;->a(Lcom/alipay/android/a/a/a/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
