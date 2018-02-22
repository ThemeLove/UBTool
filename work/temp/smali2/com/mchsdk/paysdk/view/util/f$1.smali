.class Lcom/mchsdk/paysdk/view/util/f$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/view/util/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/view/util/f;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/view/util/f;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/f;->b(Lcom/mchsdk/paysdk/view/util/f;)Lcom/mchsdk/paysdk/g/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-static {v2}, Lcom/mchsdk/paysdk/view/util/f;->a(Lcom/mchsdk/paysdk/view/util/f;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/g/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/f;->a(Lcom/mchsdk/paysdk/view/util/f;)I

    move-result v0

    if-gtz v0, :cond_2f

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/util/f;->d()V

    :cond_2f
    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/f$1;->a:Lcom/mchsdk/paysdk/view/util/f;

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/f;->c(Lcom/mchsdk/paysdk/view/util/f;)I

    return-void
.end method
