.class Lsdk/pay/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/c;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lsdk/pay/c$a;

.field final synthetic c:Lsdk/pay/c;


# direct methods
.method constructor <init>(Lsdk/pay/c;Ljava/lang/String;Lsdk/pay/c$a;)V
    .registers 4

    iput-object p1, p0, Lsdk/pay/c$4;->c:Lsdk/pay/c;

    iput-object p2, p0, Lsdk/pay/c$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lsdk/pay/c$4;->b:Lsdk/pay/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/e;Ljava/io/IOException;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsdk/pay/c$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onFailure IOException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/c$4;->b:Lsdk/pay/c$a;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lsdk/pay/c$4;->b:Lsdk/pay/c$a;

    invoke-interface {v0}, Lsdk/pay/c$a;->a()V

    :cond_29
    return-void
.end method

.method public a(Lokhttp3/e;Lokhttp3/aa;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsdk/pay/c$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResponse code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/aa;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/c$4;->b:Lsdk/pay/c$a;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lsdk/pay/c$4;->b:Lsdk/pay/c$a;

    invoke-interface {v0, p1, p2}, Lsdk/pay/c$a;->a(Lokhttp3/e;Lokhttp3/aa;)V

    :cond_29
    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p2}, Lokhttp3/aa;->d()Z

    move-result v0

    if-nez v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsdk/pay/c$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response body = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsdk/pay/c$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResponse failure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    goto :goto_4d
.end method
