.class Lcom/mchsdk/paysdk/adapter/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/adapter/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/e/f;

.field final synthetic b:Lcom/mchsdk/paysdk/adapter/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/adapter/e;Lcom/mchsdk/paysdk/e/f;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/adapter/e$1;->b:Lcom/mchsdk/paysdk/adapter/e;

    iput-object p2, p0, Lcom/mchsdk/paysdk/adapter/e$1;->a:Lcom/mchsdk/paysdk/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/f/c/o;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/o;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e$1;->a:Lcom/mchsdk/paysdk/e/f;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/f;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/o;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e$1;->a:Lcom/mchsdk/paysdk/e/f;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/e/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/o;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/adapter/e$1;->b:Lcom/mchsdk/paysdk/adapter/e;

    iget-object v1, v1, Lcom/mchsdk/paysdk/adapter/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/o;->a(Landroid/os/Handler;)V

    return-void
.end method
