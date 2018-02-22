.class public Lcom/mchsdk/paysdk/a/k;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/mchsdk/paysdk/a/k;


# instance fields
.field private a:Lcom/mchsdk/open/PayCallback;

.field private b:Lcom/mchsdk/open/OrderInfo;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/k;->b:Lcom/mchsdk/open/OrderInfo;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/k;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/k;->c:Lcom/mchsdk/paysdk/a/k;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/k;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/k;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/k;->c:Lcom/mchsdk/paysdk/a/k;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/k;->c:Lcom/mchsdk/paysdk/a/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/mchsdk/open/OrderInfo;Lcom/mchsdk/open/PayCallback;)V
    .registers 6

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/d;->g()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "\u6e20\u9053\u4fe1\u606f\u5f02\u5e38"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iput-object p3, p0, Lcom/mchsdk/paysdk/a/k;->a:Lcom/mchsdk/open/PayCallback;

    iput-object p2, p0, Lcom/mchsdk/paysdk/a/k;->b:Lcom/mchsdk/open/OrderInfo;

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "\u7528\u6237\u672a\u767b\u5f55"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_f

    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mchsdk/paysdk/activity/MCChoosePayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_f
.end method

.method public b()Lcom/mchsdk/open/OrderInfo;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/k;->b:Lcom/mchsdk/open/OrderInfo;

    return-object v0
.end method

.method public c()Lcom/mchsdk/open/PayCallback;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/k;->a:Lcom/mchsdk/open/PayCallback;

    return-object v0
.end method
