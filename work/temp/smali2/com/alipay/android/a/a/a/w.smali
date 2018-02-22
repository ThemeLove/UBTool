.class public abstract Lcom/alipay/android/a/a/a/w;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/android/a/a/a/ah;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/a/a/a/w;->b:Z

    return-void
.end method


# virtual methods
.method public f()Lcom/alipay/android/a/a/a/ah;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/w;->a:Lcom/alipay/android/a/a/a/ah;

    return-object v0
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/a/a/a/w;->b:Z

    return-void
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alipay/android/a/a/a/w;->b:Z

    return v0
.end method
