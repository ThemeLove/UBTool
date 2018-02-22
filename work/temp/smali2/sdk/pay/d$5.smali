.class Lsdk/pay/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsdk/pay/d;->f(Ljava/lang/String;)V
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

    iput-object p1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->e:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lokhttp3/e;Lokhttp3/aa;)V
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    if-eqz v0, :cond_1fb

    invoke-virtual {p2}, Lokhttp3/aa;->h()Lokhttp3/ab;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ab;->string()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPayTypes onResponse result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/aa;->d()Z

    move-result v2

    if-eqz v2, :cond_1ee

    :try_start_2b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "flag"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    const-string v4, "getPayTypes"

    const-string v5, "msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lsdk/pay/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    :goto_57
    return-void

    :cond_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPayTypes decrypt info = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    invoke-virtual {v2, v0}, Lsdk/pay/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_187

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    :goto_7c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_102

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_85} :catch_136

    move-result-object v5

    :try_start_86
    const-string v0, "typeid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_8f} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8f} :catch_136

    move-result v0

    :goto_90
    :try_start_90
    const-string v6, "IsPilotRun"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lsdk/pay/d/a;

    const-string v8, "typename"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "remark"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v0, v5}, Lsdk/pay/d/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    if-ne v0, v5, :cond_c0

    const-string v5, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    sget-object v5, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lsdk/pay/d/e;->b(Z)V

    iget-object v5, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    invoke-virtual {v5, v0}, Lsdk/pay/d;->c(I)V

    :cond_c0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7c

    :catch_c4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPayTypes onResponse NumberFormatException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPayTypes onResponse NumberFormatException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_90

    :cond_102
    sget-object v0, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v0, v3}, Lsdk/pay/d/e;->a(Ljava/util/List;)V

    sget-object v0, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->b()Z

    move-result v0

    if-eqz v0, :cond_17f

    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    const/16 v1, 0x8

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lsdk/pay/d;->a(IJ)V

    :goto_118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPayTypes onResponse mIsPilotRun = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lsdk/pay/c;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_134} :catch_136

    goto/16 :goto_57

    :catch_136
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPayTypes onResponse exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->k:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPayTypes onResponse exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_17f
    :try_start_17f
    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lsdk/pay/d;->a(I)V

    goto :goto_118

    :cond_187
    iget-object v1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->r:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    new-instance v2, Lsdk/pay/d$5$1;

    invoke-direct {v2, p0, v0}, Lsdk/pay/d$5$1;-><init>(Lsdk/pay/d$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_57

    :cond_1a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPayTypes onResponse response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->d(Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u975e\u6cd5\u4ea4\u6613"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    iget-object v1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v2, Lsdk/pay/b/a;->r:Lsdk/pay/b/a;

    invoke-virtual {v2}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    iget-object v1, v1, Lsdk/pay/d;->e:Landroid/app/Activity;

    new-instance v2, Lsdk/pay/d$5$2;

    invoke-direct {v2, p0, v0}, Lsdk/pay/d$5$2;-><init>(Lsdk/pay/d$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_57

    :cond_1e1
    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->e:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_1ec} :catch_136

    goto/16 :goto_57

    :cond_1ee
    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->l:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_1fb
    iget-object v0, p0, Lsdk/pay/d$5;->a:Lsdk/pay/d;

    sget-object v1, Lsdk/pay/b/a;->l:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto/16 :goto_57
.end method
