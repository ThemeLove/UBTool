.class public Lcom/mchsdk/paysdk/e/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->a:Z

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->b:Z

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->c:Z

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->d:Z

    iput-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->e:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/e/g;->a:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->a:Z

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/e/g;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->b:Z

    return v0
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/e/g;->c:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->c:Z

    return v0
.end method

.method public d(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/e/g;->d:Z

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->d:Z

    return v0
.end method

.method public e(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/mchsdk/paysdk/e/g;->e:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/mchsdk/paysdk/e/g;->e:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GamePayTypeEntity{isHaveZFB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/e/g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHaveWX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/e/g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHaveJBY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/e/g;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHaveHFB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/e/g;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHaveJFT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mchsdk/paysdk/e/g;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
