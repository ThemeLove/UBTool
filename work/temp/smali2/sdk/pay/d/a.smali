.class public final Lsdk/pay/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lsdk/pay/d/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lsdk/pay/d/a;->a:Ljava/lang/String;

    iput p2, p0, Lsdk/pay/d/a;->b:I

    iput-object p3, p0, Lsdk/pay/d/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lsdk/pay/d/a;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lsdk/pay/d/a;->c:Ljava/lang/String;

    return-object v0
.end method
