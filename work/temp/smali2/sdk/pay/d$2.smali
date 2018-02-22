.class Lsdk/pay/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/d;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lsdk/pay/d;


# direct methods
.method constructor <init>(Lsdk/pay/d;Z)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iput-boolean p2, p0, Lsdk/pay/d$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v1, p0, Lsdk/pay/d$2;->a:Z

    invoke-virtual {v0, v1}, Lsdk/pay/d;->b(Z)V

    return-void
.end method

.method public a(Lokhttp3/e;Lokhttp3/aa;)V
    .registers 7

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_d9

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ab;->string()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServices onResponse result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/aa;->d()Z

    move-result v1

    if-eqz v1, :cond_d1

    :try_start_2a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "flag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "getServices onResponse Success"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-object v2, v2, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PaySdkMsg"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "PaySdkNonce"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v1, p0, Lsdk/pay/d$2;->a:Z

    invoke-static {v0, v1}, Lsdk/pay/d;->a(Lsdk/pay/d;Z)V

    :goto_6a
    return-void

    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServices onResponse result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v1, p0, Lsdk/pay/d$2;->a:Z

    invoke-virtual {v0, v1}, Lsdk/pay/d;->b(Z)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_8c} :catch_8d

    goto :goto_6a

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServices onResponse Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v2, p0, Lsdk/pay/d$2;->a:Z

    invoke-virtual {v1, v2}, Lsdk/pay/d;->b(Z)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServices onResponse Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_6a

    :cond_d1
    iget-object v0, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v1, p0, Lsdk/pay/d$2;->a:Z

    invoke-virtual {v0, v1}, Lsdk/pay/d;->b(Z)V

    goto :goto_6a

    :cond_d9
    iget-object v0, p0, Lsdk/pay/d$2;->b:Lsdk/pay/d;

    iget-boolean v1, p0, Lsdk/pay/d$2;->a:Z

    invoke-virtual {v0, v1}, Lsdk/pay/d;->b(Z)V

    goto :goto_6a
.end method
