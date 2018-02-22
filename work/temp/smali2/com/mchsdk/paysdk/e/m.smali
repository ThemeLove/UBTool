.class public Lcom/mchsdk/paysdk/e/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mchsdk/paysdk/e/m;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/e/m;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/e/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mchsdk/paysdk/e/m;->b:Ljava/util/List;

    return-void
.end method
