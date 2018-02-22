.class public Lcom/mchsdk/paysdk/f/c/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .registers 8

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdk_version"

    const-string v2, "0"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/ae;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "price"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/ae;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "body"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/ae;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_name"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_appid"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/ae;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "account"

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extend"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/ae;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_uc"

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const-string v3, "ZfbOrderInfoProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fun#post postSign:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a2
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/RequestParams;->setBodyEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_ae
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a2 .. :try_end_ae} :catch_c3

    :goto_ae
    if-eqz p1, :cond_df

    if-eqz v0, :cond_df

    new-instance v1, Lcom/mchsdk/paysdk/f/d/ae;

    invoke-direct {v1, p1}, Lcom/mchsdk/paysdk/f/d/ae;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/c/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/ae;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V

    :goto_c2
    return-void

    :catch_c3
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ZfbOrderInfoProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fun#post UnsupportedEncodingException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_ae

    :cond_df
    const-string v0, "ZfbOrderInfoProcess"

    const-string v1, "fun#post handler is null or url is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c2
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/ae;->e:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/ae;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/ae;->b:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/ae;->c:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/ae;->d:Ljava/lang/String;

    return-void
.end method
