.class Lcom/alipay/android/a/a/a/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/a/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alipay/android/a/a/a/k$a;->a:I

    iput p2, p0, Lcom/alipay/android/a/a/a/k$a;->b:I

    iput p3, p0, Lcom/alipay/android/a/a/a/k$a;->c:I

    return-void
.end method
