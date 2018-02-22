.class public Lcom/mchsdk/paysdk/g/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mchsdk/paysdk/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/g/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/mchsdk/paysdk/g/b;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/g/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mchsdk/paysdk/g/b;

    invoke-interface {v0, p1}, Lcom/mchsdk/paysdk/g/b;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public b(Lcom/mchsdk/paysdk/g/b;)V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/g/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
