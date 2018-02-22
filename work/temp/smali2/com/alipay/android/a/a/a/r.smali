.class public Lcom/alipay/android/a/a/a/r;
.super Lcom/alipay/android/a/a/a/x;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/android/a/a/a/p;


# direct methods
.method public constructor <init>(Lcom/alipay/android/a/a/a/p;ILjava/lang/String;[B)V
    .registers 5

    invoke-direct {p0}, Lcom/alipay/android/a/a/a/x;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/a/a/a/r;->h:Lcom/alipay/android/a/a/a/p;

    iput p2, p0, Lcom/alipay/android/a/a/a/r;->c:I

    iput-object p3, p0, Lcom/alipay/android/a/a/a/r;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/a/a/a/r;->a:[B

    return-void
.end method


# virtual methods
.method public a()Lcom/alipay/android/a/a/a/p;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/a/a/a/r;->h:Lcom/alipay/android/a/a/a/p;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alipay/android/a/a/a/r;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alipay/android/a/a/a/r;->g:Ljava/lang/String;

    return-void
.end method

.method public b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/alipay/android/a/a/a/r;->f:J

    return-void
.end method
