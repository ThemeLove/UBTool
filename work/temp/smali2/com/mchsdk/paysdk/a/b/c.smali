.class public Lcom/mchsdk/paysdk/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Lcom/mchsdk/paysdk/a/b/b;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/b/c$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/b/c$1;-><init>(Lcom/mchsdk/paysdk/a/b/c;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/b/c;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/a/b/c;->a:Z

    if-eqz p1, :cond_11

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/b/c;->b:Landroid/app/Activity;

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/b/c;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/b/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c;->b:Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "ZfbPay"

    const-string v1, "\u652f\u4ed8\u9875\u9762\u5df2\u9500\u6bc1"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    check-cast p1, Lcom/mchsdk/paysdk/e/u;

    if-nez p1, :cond_18

    const-string v0, "ZfbPay"

    const-string v1, "\u652f\u4ed8\u5b9d\u652f\u4ed8\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v0, "\u9a8c\u8bc1\u8ba2\u5355\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    :cond_2e
    const-string v1, "ZfbPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_47
    invoke-virtual {p1}, Lcom/mchsdk/paysdk/e/u;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mchsdk/paysdk/a/b/c$2;

    invoke-direct {v2, p0, v0}, Lcom/mchsdk/paysdk/a/b/c$2;-><init>(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_b
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/a/b/c;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/a/b/c;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/a/b/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 7

    const/4 v1, 0x1

    new-instance v2, Lcom/mchsdk/paysdk/e/n;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Lcom/mchsdk/paysdk/e/n;-><init>(Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/e/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/e/n;->a()Ljava/lang/String;

    move-result-object v0

    :cond_18
    const-string v2, "ZfbPay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fun#handlerZfbSDKResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "9000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v0, "0"

    :cond_3a
    :goto_3a
    iget-boolean v2, p0, Lcom/mchsdk/paysdk/a/b/c;->a:Z

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/b/c;->c:Lcom/mchsdk/paysdk/a/b/b;

    if-eqz v2, :cond_58

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_52
    move v0, v1

    :goto_53
    iget-object v2, p0, Lcom/mchsdk/paysdk/a/b/c;->c:Lcom/mchsdk/paysdk/a/b/b;

    invoke-interface {v2, v0}, Lcom/mchsdk/paysdk/a/b/b;->a(Z)V

    :cond_58
    :goto_58
    sput-boolean v1, Lcom/mchsdk/paysdk/a/h;->a:Z

    return-void

    :cond_5b
    const-string v2, "8000"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "4001"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_6b
    const-string v0, "1"

    goto :goto_3a

    :cond_6e
    const-string v2, "6004"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v0, "2"

    goto :goto_3a

    :cond_79
    const/4 v0, 0x0

    goto :goto_53

    :cond_7b
    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/k;->c()Lcom/mchsdk/open/PayCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mchsdk/open/PayCallback;->callback(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_96
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b/c;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_58
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/ae;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ae;-><init>()V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getGoodsPriceYuan()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->d(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->order()Lcom/mchsdk/open/OrderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/OrderInfo;->getExtendInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mchsdk/paysdk/a/b/b;)V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/a/b/c;->a:Z

    if-eqz p4, :cond_7

    iput-object p4, p0, Lcom/mchsdk/paysdk/a/b/c;->c:Lcom/mchsdk/paysdk/a/b/b;

    :cond_7
    new-instance v0, Lcom/mchsdk/paysdk/f/c/ae;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ae;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/f/c/ae;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/f/c/ae;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mchsdk/paysdk/f/c/ae;->d(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->e(Ljava/lang/String;)V

    const-string v1, "\u5e73\u53f0\u5e01\u5145\u503c"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ae;->a(Landroid/os/Handler;)V

    return-void
.end method
