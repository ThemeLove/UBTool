.class public Lcom/mchsdk/paysdk/a/l;
.super Ljava/lang/Object;


# static fields
.field public static a:J


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mchsdk/paysdk/a/l;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/l$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/l$1;-><init>(Lcom/mchsdk/paysdk/a/l;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/l;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/l;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "StopTiming"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/l;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .registers 3

    new-instance v0, Lcom/mchsdk/paysdk/f/c/l;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/l;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/l;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/l;->a(Landroid/os/Handler;)V

    return-void
.end method
