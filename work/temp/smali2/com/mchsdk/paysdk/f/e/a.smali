.class public Lcom/mchsdk/paysdk/f/e/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_name"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "game_appid"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promote_id"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promote_account"

    invoke-static {}, Lcom/mchsdk/paysdk/a/d;->a()Lcom/mchsdk/paysdk/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/a/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    packed-switch v1, :pswitch_data_c0

    :cond_4b
    :goto_4b
    const-string v1, "ThirdLoginProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fun#getParamStr params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/n;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6c
    const-string v1, "login_type"

    const-string v2, "wb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "openid"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/e/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :pswitch_7b
    const-string v1, "login_type"

    const-string v2, "qq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "openid"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/e/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :pswitch_8a
    const-string v1, "login_type"

    const-string v2, "wx"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/e/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :pswitch_99
    const-string v1, "login_type"

    const-string v2, "bd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accessToken"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/e/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :pswitch_a8
    const-string v1, "login_type"

    const-string v2, "yk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mchsdk/paysdk/f/e/a;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string v1, "account"

    iget-object v2, p0, Lcom/mchsdk/paysdk/f/e/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_7b
        :pswitch_8a
        :pswitch_99
        :pswitch_a8
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .registers 7

    new-instance v0, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v0}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    :try_start_5
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/f/e/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/http/RequestParams;->setBodyEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_15} :catch_33

    :goto_15
    if-eqz p1, :cond_54

    if-eqz v0, :cond_54

    new-instance v1, Lcom/mchsdk/paysdk/f/e/b;

    invoke-direct {v1, p1}, Lcom/mchsdk/paysdk/f/e/b;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x5

    iget v3, p0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    if-ne v2, v3, :cond_4f

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/f/e/b;->a(Z)V

    :goto_27
    invoke-static {}, Lcom/mchsdk/paysdk/c/a;->a()Lcom/mchsdk/paysdk/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/c/a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mchsdk/paysdk/f/e/b;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;)V

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "ThirdLoginProcess"

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

    goto :goto_15

    :cond_4f
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/f/e/b;->a(Z)V

    goto :goto_27

    :cond_54
    const-string v0, "ThirdLoginProcess"

    const-string v1, "fun#post handler is null or url is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
