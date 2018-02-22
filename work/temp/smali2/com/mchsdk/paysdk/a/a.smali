.class public Lcom/mchsdk/paysdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/utils/j;

.field private static b:Lcom/mchsdk/paysdk/a/a;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/a$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/a$1;-><init>(Lcom/mchsdk/paysdk/a/a;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/a;->c:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/a;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/a;->b:Lcom/mchsdk/paysdk/a/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/a;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/a;->b:Lcom/mchsdk/paysdk/a/a;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/a;->b:Lcom/mchsdk/paysdk/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/utils/j;)Lcom/mchsdk/paysdk/utils/j;
    .registers 1

    sput-object p0, Lcom/mchsdk/paysdk/a/a;->a:Lcom/mchsdk/paysdk/utils/j;

    return-object p0
.end method

.method static synthetic c()Lcom/mchsdk/paysdk/utils/j;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/a;->a:Lcom/mchsdk/paysdk/utils/j;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/a;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/a;->a(Landroid/os/Handler;)V

    return-void
.end method
