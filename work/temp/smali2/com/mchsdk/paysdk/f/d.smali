.class public Lcom/mchsdk/paysdk/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    sget v0, Lcom/mchsdk/paysdk/f/d;->a:I

    return v0
.end method

.method public a(ILjava/lang/String;Ljava/util/Map;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput p1, Lcom/mchsdk/paysdk/f/d;->a:I

    invoke-static {p3}, Lcom/mchsdk/paysdk/f/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lidroid/xutils/http/RequestParams;

    invoke-direct {v1}, Lcom/lidroid/xutils/http/RequestParams;-><init>()V

    :try_start_b
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/http/RequestParams;->setBodyEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_13} :catch_49

    :goto_13
    const-string v0, "Post"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mchsdk/paysdk/f/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Post"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mchsdk/paysdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v1, p4}, Lcom/mchsdk/paysdk/f/b;->a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V

    return-void

    :catch_49
    move-exception v0

    goto :goto_13
.end method
