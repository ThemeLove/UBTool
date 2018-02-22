.class public Lcom/mchsdk/paysdk/f/c/d;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/mchsdk/paysdk/f/c/d;->a:I

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .registers 8

    if-nez p1, :cond_a

    const-string v0, "ChangePlayerLevelProcess"

    const-string v1, "fun#post handler is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "user_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "game_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mchsdk/paysdk/f/c/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "role_level"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/d;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "ChangePlayerLevelProcess"

    const-string v1, "fun#post param is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_5c
    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    const-string v3, "ChangePlayerLevelProcess"

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

    :try_start_7d
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/RequestParams;->setBodyEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7d .. :try_end_89} :catch_9f

    :goto_89
    if-eqz v0, :cond_bb

    new-instance v1, Lcom/mchsdk/paysdk/f/d/d;

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/c/d;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/mchsdk/paysdk/f/d/d;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/f/d/d;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V

    goto/16 :goto_9

    :catch_9f
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ChangePlayerLevelProcess"

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

    goto :goto_89

    :cond_bb
    const-string v0, "ChangePlayerLevelProcess"

    const-string v1, "fun#post RequestParams is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/f/c/d;->b:Ljava/lang/String;

    return-void
.end method
