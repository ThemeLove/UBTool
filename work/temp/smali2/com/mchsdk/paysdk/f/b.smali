.class Lcom/mchsdk/paysdk/f/b;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/lidroid/xutils/HttpUtils;


# direct methods
.method public static a(Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/http/RequestParams;",
            "Lcom/lidroid/xutils/http/callback/RequestCallBack",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;->POST:Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;

    new-instance v1, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v1}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    sput-object v1, Lcom/mchsdk/paysdk/f/b;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v1, Lcom/mchsdk/paysdk/utils/r;->a:Lorg/apache/http/client/CookieStore;

    if-eqz v1, :cond_21

    sget-object v1, Lcom/mchsdk/paysdk/f/b;->a:Lcom/lidroid/xutils/HttpUtils;

    sget-object v2, Lcom/mchsdk/paysdk/utils/r;->a:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/HttpUtils;->configCookieStore(Lorg/apache/http/client/CookieStore;)Lcom/lidroid/xutils/HttpUtils;

    const-string v1, "1"

    const-string v2, "fun#post cookieStore not null"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    sget-object v1, Lcom/mchsdk/paysdk/f/b;->a:Lcom/lidroid/xutils/HttpUtils;

    invoke-virtual {v1, v0, p0, p1, p2}, Lcom/lidroid/xutils/HttpUtils;->send(Lcom/lidroid/xutils/http/client/HttpRequest$HttpMethod;Ljava/lang/String;Lcom/lidroid/xutils/http/RequestParams;Lcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    return-void

    :cond_21
    const-string v1, "2"

    const-string v2, "fun#post cookieStore is null"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
