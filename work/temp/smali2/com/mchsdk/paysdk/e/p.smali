.class public Lcom/mchsdk/paysdk/e/p;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/mchsdk/paysdk/e/p;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/mchsdk/paysdk/e/p;->b:I

    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/e/p;->a:F

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/e/p;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mchsdk/paysdk/e/p;->a:F

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/mchsdk/paysdk/e/p;->b:I

    return v0
.end method
