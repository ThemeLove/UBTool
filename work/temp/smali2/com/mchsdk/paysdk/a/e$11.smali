.class Lcom/mchsdk/paysdk/a/e$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/a/e;->i()V
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$11;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    const-string v0, "ChoosePayModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLogin res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$11;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->u(Lcom/mchsdk/paysdk/a/e;)V

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$11;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "\u8bf7\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_1f
.end method
