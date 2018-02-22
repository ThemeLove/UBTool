.class Lsdk/pay/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/d;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsdk/pay/d;


# direct methods
.method constructor <init>(Lsdk/pay/d;)V
    .registers 2

    iput-object p1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->d:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->e()V

    return-void
.end method

.method public a(Lokhttp3/e;Lokhttp3/aa;)V
    .registers 7

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_134

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ab;->string()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToken onResponse result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/aa;->d()Z

    move-result v1

    if-eqz v1, :cond_122

    :try_start_2a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "flag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    const-string v2, "getToken"

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lsdk/pay/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    :goto_51
    return-void

    :cond_52
    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-virtual {v1, v0}, Lsdk/pay/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bf

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    const-string v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lsdk/pay/d;->a(Lsdk/pay/d;Ljava/lang/String;)V

    const-string v0, "getToken onResponse onPayDataResult"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-static {v0}, Lsdk/pay/d;->a(Lsdk/pay/d;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_74} :catch_75

    goto :goto_51

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToken onResponse exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->k:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-virtual {v1}, Lsdk/pay/d;->e()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToken onResponse exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_51

    :cond_bf
    :try_start_bf
    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->r:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    new-instance v2, Lsdk/pay/d$3$1;

    invoke-direct {v2, p0, v0}, Lsdk/pay/d$3$1;-><init>(Lsdk/pay/d$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_51

    :cond_d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getToken onResponse failure flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u975e\u6cd5\u4ea4\u6613"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_115

    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->r:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    new-instance v2, Lsdk/pay/d$3$2;

    invoke-direct {v2, p0, v0}, Lsdk/pay/d$3$2;-><init>(Lsdk/pay/d$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_51

    :cond_115
    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->d:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_120} :catch_75

    goto/16 :goto_51

    :cond_122
    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->l:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->e()V

    goto/16 :goto_51

    :cond_134
    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->l:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$3;->a:Lsdk/pay/d;

    invoke-virtual {v0}, Lsdk/pay/d;->e()V

    goto/16 :goto_51
.end method
