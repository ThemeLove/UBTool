.class public Lcom/mchsdk/paysdk/a/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/a/o$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/mchsdk/paysdk/a/o$a;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/o$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/o$1;-><init>(Lcom/mchsdk/paysdk/a/o;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/o;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/o;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/a/o;)Lcom/mchsdk/paysdk/a/o$a;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/o;->b:Lcom/mchsdk/paysdk/a/o$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mchsdk/paysdk/a/o$a;)V
    .registers 5

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/o;->b:Lcom/mchsdk/paysdk/a/o$a;

    new-instance v0, Lcom/mchsdk/paysdk/f/c/k;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/k;-><init>()V

    const-string v1, "account"

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/o;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/k;->a(Ljava/lang/String;)V

    const-string v1, "password"

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/o;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/k;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/o;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/k;->a(Landroid/os/Handler;)V

    return-void
.end method
