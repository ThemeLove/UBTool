.class public Lcom/alipay/android/a/a/a/v;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/alipay/android/a/a/a/v;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v1, :cond_1c

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :cond_1c
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_10

    :goto_f
    return v1

    :cond_10
    array-length v3, v2

    move v0, v1

    :goto_12
    if-ge v0, v3, :cond_2a

    aget-object v4, v2, v0

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v0, 0x1

    :goto_25
    move v1, v0

    goto :goto_f

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2a
    move v0, v1

    goto :goto_25
.end method
