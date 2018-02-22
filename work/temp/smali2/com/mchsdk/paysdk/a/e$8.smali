.class Lcom/mchsdk/paysdk/a/e$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/a;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$8;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ChoosePayModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun # jbyPayCallback code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$8;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-virtual {v0, p1}, Lcom/mchsdk/paysdk/a/e;->b(Ljava/lang/String;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$8;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Ljava/lang/String;)V

    goto :goto_2f
.end method
