.class public Lcom/mchsdk/open/Transparency;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Transparency"

.field private static instance:Lcom/mchsdk/open/Transparency;


# instance fields
.field private loginActivity:Lcom/mchsdk/paysdk/activity/a;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrans()Lcom/mchsdk/open/Transparency;
    .registers 1

    sget-object v0, Lcom/mchsdk/open/Transparency;->instance:Lcom/mchsdk/open/Transparency;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/open/Transparency;

    invoke-direct {v0}, Lcom/mchsdk/open/Transparency;-><init>()V

    sput-object v0, Lcom/mchsdk/open/Transparency;->instance:Lcom/mchsdk/open/Transparency;

    :cond_b
    sget-object v0, Lcom/mchsdk/open/Transparency;->instance:Lcom/mchsdk/open/Transparency;

    return-object v0
.end method


# virtual methods
.method public startlogin(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "Transparency"

    const-string v1, "fun#startlogin context is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    if-eqz p2, :cond_e

    iput-object p2, p0, Lcom/mchsdk/open/Transparency;->mHandler:Landroid/os/Handler;

    :cond_e
    invoke-static {}, Lcom/mchsdk/paysdk/a/j;->a()Lcom/mchsdk/paysdk/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/open/Transparency;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/j;->a(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mchsdk/open/Transparency;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/mchsdk/open/Transparency;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    if-nez v0, :cond_33

    const-string v0, "Transparency"

    const-string v1, "first start"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    new-instance v0, Lcom/mchsdk/paysdk/activity/a;

    iget-object v1, p0, Lcom/mchsdk/open/Transparency;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/mchsdk/paysdk/activity/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mchsdk/open/Transparency;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    iget-object v0, p0, Lcom/mchsdk/open/Transparency;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/a;->a()V

    goto :goto_9

    :cond_33
    iget-object v0, p0, Lcom/mchsdk/open/Transparency;->loginActivity:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/a;->b()V

    goto :goto_24
.end method
