.class Lcom/mchsdk/paysdk/a/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$5;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ChoosePayModel"

    const-string v1, "start pay"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$5;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->b(Lcom/mchsdk/paysdk/a/e;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    :cond_13
    return-void
.end method
