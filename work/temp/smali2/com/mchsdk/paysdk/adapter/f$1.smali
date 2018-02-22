.class Lcom/mchsdk/paysdk/adapter/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/adapter/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mchsdk/paysdk/adapter/f;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/adapter/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    iput p2, p0, Lcom/mchsdk/paysdk/adapter/f$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/mchsdk/paysdk/d/a/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/d/a/a;-><init>()V

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->a()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    new-instance v2, Lcom/mchsdk/paysdk/d/a/b;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/d/a/b;-><init>()V

    iput-object v2, v1, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->c()Lcom/mchsdk/paysdk/d/a/b;

    move-result-object v2

    iput-object v2, v1, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/a/a;->b()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    iget-object v0, v0, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/mchsdk/paysdk/adapter/f$1;->a:I

    if-ltz v0, :cond_3b

    iget v0, p0, Lcom/mchsdk/paysdk/adapter/f$1;->a:I

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    iget-object v1, v1, Lcom/mchsdk/paysdk/adapter/f;->b:Lcom/mchsdk/paysdk/d/a/b;

    iget-object v1, v1, Lcom/mchsdk/paysdk/d/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_3b

    iget-object v0, p0, Lcom/mchsdk/paysdk/adapter/f$1;->b:Lcom/mchsdk/paysdk/adapter/f;

    iget v1, p0, Lcom/mchsdk/paysdk/adapter/f$1;->a:I

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/adapter/f;->a(I)V

    :cond_3b
    return-void
.end method
