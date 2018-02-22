.class public final Lcom/alipay/sdk/j/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10

    const/4 v7, 0x2

    const/4 v0, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x2

    :try_start_8
    new-array v3, v1, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p0, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    move v1, v0

    :goto_11
    if-ge v1, v7, :cond_30

    aget-object v4, v3, v1

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2e} :catch_2f

    goto :goto_1b

    :catch_2f
    move-exception v0

    :cond_30
    return-object v2

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method
