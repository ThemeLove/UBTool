.class public Lcom/mchsdk/paysdk/f/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/m;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/c/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/c/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/c/a;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/mchsdk/paysdk/f/c/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .registers 8

    if-nez p1, :cond_a

    const-string v0, "AntiAddictionProgress"

    const-string v1, "fun#post handler is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "account"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/a;->a:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_id"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/a;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "promote_id"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/a;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/a;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "AntiAddictionProgress"

    const-string v1, "fun#post param is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_3d
    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const-string v3, "AntiAddictionProgress"

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

    invoke-static {v3, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_5e
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/RequestParams;->setBodyEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_6a} :catch_7d

    :goto_6a
    if-eqz v0, :cond_99

    new-instance v1, Lcom/mchsdk/paysdk/f/d/a;

    invoke-direct {v1, p1}, Lcom/mchsdk/paysdk/f/d/a;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/c/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/a;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V

    goto :goto_9

    :catch_7d
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "AntiAddictionProgress"

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

    goto :goto_6a

    :cond_99
    const-string v0, "AntiAddictionProgress"

    const-string v1, "fun#post RequestParams is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method
