.class final Lsdk/pay/d;
.super Lsdk/pay/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsdk/pay/d$a;
    }
.end annotation


# instance fields
.field private l:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c/d;Z)V
    .registers 11

    invoke-direct {p0, p1, p6, p7}, Lsdk/pay/c;-><init>(Landroid/app/Activity;Lsdk/pay/c/d;Z)V

    new-instance v0, Lsdk/pay/d$1;

    invoke-direct {v0, p0}, Lsdk/pay/d$1;-><init>(Lsdk/pay/d;)V

    iput-object v0, p0, Lsdk/pay/d;->l:Ljava/lang/Runnable;

    const-string v0, "version code = 2.3.2.1"

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsdk/pay/e/f;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lsdk/pay/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsdk/pay/d;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lsdk/pay/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lsdk/pay/d$a;

    iget-object v1, p0, Lsdk/pay/d;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsdk/pay/d$a;-><init>(Lsdk/pay/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lsdk/pay/d;->f:Landroid/os/Handler;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_51
    :goto_51
    return-void

    :cond_52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lsdk/pay/d;->c([Ljava/lang/String;)V

    goto :goto_51
.end method

.method private a(Lorg/json/JSONArray;)V
    .registers 8

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_bb

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "paramcode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "paramvalue"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_bc

    :cond_20
    :goto_20
    packed-switch v2, :pswitch_data_e2

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :sswitch_26
    const-string v5, "img"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v2, v1

    goto :goto_20

    :sswitch_30
    const-string v5, "imgid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    goto :goto_20

    :sswitch_3a
    const-string v5, "isopen"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x2

    goto :goto_20

    :sswitch_44
    const-string v5, "sdkflag"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x3

    goto :goto_20

    :sswitch_4e
    const-string v5, "payToken"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x4

    goto :goto_20

    :sswitch_58
    const-string v5, "wxappid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x5

    goto :goto_20

    :sswitch_62
    const-string v5, "json"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x6

    goto :goto_20

    :sswitch_6c
    const-string v5, "aliurl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x7

    goto :goto_20

    :sswitch_76
    const-string v5, "plugin"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v2, 0x8

    goto :goto_20

    :pswitch_81
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->i(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_87
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->d(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_8d
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->h(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_93
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->g(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_99
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->f(Ljava/lang/String;)V

    goto :goto_23

    :pswitch_9f
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->e(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_a6
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->a(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_ad
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->c(Ljava/lang/String;)V

    goto/16 :goto_23

    :pswitch_b4
    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2, v4}, Lsdk/pay/d/e;->b(Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_bb
    return-void

    :sswitch_data_bc
    .sparse-switch
        -0x545680ef -> :sswitch_6c
        -0x464a718c -> :sswitch_3a
        -0x3ab890cd -> :sswitch_76
        0x197c3 -> :sswitch_26
        0x31ece8 -> :sswitch_62
        0x5fac01e -> :sswitch_30
        0x510e4231 -> :sswitch_4e
        0x695698bb -> :sswitch_58
        0x74250ea6 -> :sswitch_44
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_81
        :pswitch_87
        :pswitch_8d
        :pswitch_93
        :pswitch_99
        :pswitch_9f
        :pswitch_a6
        :pswitch_ad
        :pswitch_b4
    .end packed-switch
.end method

.method static synthetic a(Lsdk/pay/d;)V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/d;->l()V

    return-void
.end method

.method static synthetic a(Lsdk/pay/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lsdk/pay/d;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lsdk/pay/d;Lorg/json/JSONArray;)V
    .registers 2

    invoke-direct {p0, p1}, Lsdk/pay/d;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic a(Lsdk/pay/d;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lsdk/pay/d;->f(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZ)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v2, "PaySdkMsg"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v5, "PaySdkNonce"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_84

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wolegequ"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lsdk/pay/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d9

    invoke-virtual {p0, v1}, Lsdk/pay/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " msgObject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->b(Ljava/lang/String;)V

    const-string v1, "nextSync"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "servers"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v6}, Lsdk/pay/d/e;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_212

    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    :cond_84
    move-object v1, v0

    :goto_85
    if-eqz p2, :cond_14e

    if-eqz v1, :cond_136

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_136

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " servers = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v0, "PaySdkServersSum"

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v5, "PaySdkServersCurrent"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsdk/pay/b/b;->a(Ljava/lang/String;)V

    const-string v0, "PaySdkServersCurrent"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v3

    :goto_d3
    return v4

    :cond_d4
    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    move-object v1, v0

    goto :goto_85

    :cond_d9
    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    if-eqz p2, :cond_84

    sget-object v0, Lsdk/pay/b/a;->k:Lsdk/pay/b/a;

    invoke-virtual {v0}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/d;->c(Ljava/lang/String;)V
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_e7} :catch_e8
    .catch Ljava/text/ParseException; {:try_start_13 .. :try_end_e7} :catch_178

    goto :goto_d3

    :catch_e8
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " JSONParse failure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " JSONParse failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_d3

    :cond_136
    :try_start_136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " servers = null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    move v4, v3

    goto :goto_d3

    :cond_14e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20f

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_1c7

    move v0, v3

    :goto_171
    if-eqz v0, :cond_1c9

    invoke-virtual {p0, p3}, Lsdk/pay/d;->a(Z)V
    :try_end_176
    .catch Lorg/json/JSONException; {:try_start_136 .. :try_end_176} :catch_e8
    .catch Ljava/text/ParseException; {:try_start_136 .. :try_end_176} :catch_178

    goto/16 :goto_d3

    :catch_178
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncParse failure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " syncParse failure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_d3

    :cond_1c7
    move v0, v4

    goto :goto_171

    :cond_1c9
    const/4 v0, 0x0

    :try_start_1ca
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1db

    invoke-virtual {p0, p3}, Lsdk/pay/d;->a(Z)V

    goto/16 :goto_d3

    :cond_1db
    sget-object v0, Lsdk/pay/b/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20c

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v0, "PaySdkServersSum"

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v5, "PaySdkServersCurrent"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsdk/pay/b/b;->a(Ljava/lang/String;)V

    const-string v0, "PaySdkServersCurrent"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_20c
    .catch Lorg/json/JSONException; {:try_start_1ca .. :try_end_20c} :catch_e8
    .catch Ljava/text/ParseException; {:try_start_1ca .. :try_end_20c} :catch_178

    :cond_20c
    move v4, v3

    goto/16 :goto_d3

    :cond_20f
    move v0, v3

    goto/16 :goto_171

    :cond_212
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_85
.end method

.method static synthetic b(Lsdk/pay/d;)V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/d;->m()V

    return-void
.end method

.method static synthetic c(Lsdk/pay/d;)V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/d;->n()V

    return-void
.end method

.method static synthetic d(Lsdk/pay/d;)V
    .registers 1

    invoke-direct {p0}, Lsdk/pay/d;->o()V

    return-void
.end method

.method private d(I)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1b

    iget-object v1, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1}, Lsdk/pay/e/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "getPayParam Find Not WeChat"

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->n:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    :goto_1a
    return v0

    :cond_1b
    const/4 v1, 0x4

    if-ne p1, v1, :cond_43

    iget-object v1, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v1}, Lsdk/pay/e/j;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1, v0}, Lsdk/pay/d/e;->b(Z)V

    goto :goto_1a

    :cond_34
    const-string v1, "getPayParam Find Not AliPay"

    invoke-static {v1}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->o:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto :goto_1a

    :cond_43
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method private f(Z)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    const/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Lsdk/pay/d;->a(II)V

    :goto_8
    return-void

    :cond_9
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v1}, Lsdk/pay/d;->a(II)V

    goto :goto_8
.end method

.method private g(Z)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTokenOrStepParams start params = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lsdk/pay/d;->k()Z

    move-result v0

    if-nez v0, :cond_43

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_40

    const-string v0, "Step"

    :goto_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Params is error!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    const-string v0, "Get Token"

    goto :goto_2e

    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?appid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&info="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lsdk/pay/d;->h(Z)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_6a

    move-object v0, v1

    :goto_69
    return-object v0

    :cond_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a8

    const-string v0, "Step"

    :goto_73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " object = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\/"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_ab

    const-string v0, "stepPay"

    :goto_9c
    invoke-virtual {p0, v0, v3}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ae

    move-object v0, v1

    goto :goto_69

    :cond_a8
    const-string v0, "Get Token"

    goto :goto_73

    :cond_ab
    const-string v0, "getToken"

    goto :goto_9c

    :cond_ae
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "http://123ttd1.jtpay.com/sdk/serverlistNew"

    :goto_e
    return-object v0

    :cond_f
    const-string v1, "yhb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "http://36g43.payhee.com/sdk/serverlistNew"

    goto :goto_e

    :cond_1a
    const-string v1, "yzf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v0, "http://333dddx.payeay.com/sdk/serverlistNew"

    goto :goto_e

    :cond_25
    const-string v1, "wsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "http://8888j.paywap.cn/sdk/serverlistNew"

    goto :goto_e

    :cond_30
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private h(Z)Lorg/json/JSONObject;
    .registers 12

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_2
    sget-object v1, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v1}, Lsdk/pay/d/b;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ext_sdkversion"

    const-string v4, "2.3.2.1"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iget-object v7, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.permission.READ_PHONE_STATE"

    iget-object v9, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_82

    :goto_2b
    const-string v2, ""

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_cb

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :goto_47
    const-string v2, "ext_device"

    const-string v7, "MODEL=%s SDK=%d RELEASE=%s FAC=%s TELEPHONE=%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v3, 0x3

    aput-object v6, v8, v3

    const/4 v3, 0x4

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "packagename"

    iget-object v2, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_80

    const-string v0, "ext_paytype"

    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->p()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_80} :catch_84

    :cond_80
    move-object v0, v1

    :goto_81
    return-object v0

    :cond_82
    move v0, v2

    goto :goto_2b

    :catch_84
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "composeTokenJson JSONException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "composeTokenJson JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_81

    :cond_cb
    move-object v0, v2

    goto/16 :goto_47
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-static {v0}, Lsdk/pay/e/i;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lsdk/pay/d;->f:Landroid/os/Handler;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_f
    return-void

    :cond_10
    const-string v0, "getToken network not available"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v0, Lsdk/pay/b/a;->m:Lsdk/pay/b/a;

    invoke-virtual {v0}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private i(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0, p1}, Lsdk/pay/d/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Lsdk/pay/b/c;->a:Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const-string v1, "yhb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v0, Lsdk/pay/b/c;->b:Ljava/lang/String;

    goto :goto_e

    :cond_1a
    const-string v1, "yzf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v0, Lsdk/pay/b/c;->c:Ljava/lang/String;

    goto :goto_e

    :cond_25
    const-string v1, "wsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lsdk/pay/b/c;->d:Ljava/lang/String;

    goto :goto_e

    :cond_30
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private j()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsdk/pay/d;->g(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method private k()Z
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->f()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->g()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-virtual {v2}, Lsdk/pay/d/b;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lsdk/pay/d;->a([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private m()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lsdk/pay/d;->a(I)V

    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    iget-object v1, p0, Lsdk/pay/d;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .registers 4

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lsdk/pay/d;->k:Z

    if-eqz v0, :cond_23

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsdk/pay/d/e;->a(Z)V

    const-string v0, "initPayStatus start"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsdk/pay/b/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPayStatus url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsdk/pay/d;->g(Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method protected a(Ljava/lang/String;Z)V
    .registers 5

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lsdk/pay/d;->m()V

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGetParams url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    const-string v0, "doGetParams"

    new-instance v1, Lsdk/pay/d$6;

    invoke-direct {v1, p0}, Lsdk/pay/d$6;-><init>(Lsdk/pay/d;)V

    invoke-virtual {p0, v0, p1, v1}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    goto :goto_5
.end method

.method public a(Lsdk/pay/c/b;)V
    .registers 3

    iput-object p1, p0, Lsdk/pay/d;->j:Lsdk/pay/c/b;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lsdk/pay/d;->a(I)V

    return-void
.end method

.method public a(Lsdk/pay/d/b;I)V
    .registers 4

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0, p2}, Lsdk/pay/d/e;->a(I)V

    sput-object p1, Lsdk/pay/d;->c:Lsdk/pay/d/b;

    invoke-direct {p0}, Lsdk/pay/d;->i()V

    return-void
.end method

.method protected a(Z)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "initServicesParams start"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_23
    const-string v0, "SysFlag"

    sget-object v3, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v3}, Lsdk/pay/d/e;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_32} :catch_a0

    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wolegequ"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lsdk/pay/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "info=%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&nonce=%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v3}, Lsdk/pay/d/e;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsdk/pay/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initServicesParams url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lsdk/pay/d;->a(ZLjava/lang/String;)V

    return-void

    :catch_a0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initServicesParams JSONException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v3, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v3}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initServicesParams JSONException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_32
.end method

.method protected a(ZLjava/lang/String;)V
    .registers 5

    const-string v0, "GetServices"

    new-instance v1, Lsdk/pay/d$2;

    invoke-direct {v1, p0, p1}, Lsdk/pay/d$2;-><init>(Lsdk/pay/d;Z)V

    invoke-virtual {p0, v0, p2, v1}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    return-void
.end method

.method protected b(Z)V
    .registers 3

    sget-object v0, Lsdk/pay/b/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lsdk/pay/b/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lsdk/pay/d;->f(Z)V

    return-void
.end method

.method public c(I)V
    .registers 3

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0, p1}, Lsdk/pay/d/e;->a(I)V

    invoke-direct {p0, p1}, Lsdk/pay/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lsdk/pay/d;->a(I)V

    :cond_f
    return-void
.end method

.method protected c(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doGetToken flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    const-string v0, "doGetToken"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lsdk/pay/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lsdk/pay/d;->d()V

    :cond_22
    return-void
.end method

.method public varargs c([Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1}, Lsdk/pay/d;->b([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lsdk/pay/d;->e(Z)V

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0, p1}, Lsdk/pay/d/e;->a([Ljava/lang/String;)V

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPayParam systemName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lsdk/pay/d;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsdk/pay/b/b;->g:Ljava/lang/String;

    goto :goto_6
.end method

.method protected d()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsdk/pay/d;->g(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsdk/pay/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsdk/pay/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToken url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    const-string v1, "getToken"

    new-instance v2, Lsdk/pay/d$3;

    invoke-direct {v2, p0}, Lsdk/pay/d$3;-><init>(Lsdk/pay/d;)V

    invoke-virtual {p0, v1, v0, v2}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    return-void
.end method

.method protected d(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStep flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    const-string v0, "doStep"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lsdk/pay/d;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lsdk/pay/d;->j()V

    :cond_22
    return-void
.end method

.method protected e()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "setNextApi start"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v1, "PaySdkServersSum"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v2, "PaySdkServersCurrent"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_1f

    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v2, "PaySdkMsg"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    const-string v3, "PaySdkNonce"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wolegequ"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lsdk/pay/e/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_da

    invoke-virtual {p0, v0}, Lsdk/pay/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNextApi msgObject = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    const-string v0, "servers"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lsdk/pay/b/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lsdk/pay/d;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "PaySdkServersCurrent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_96} :catch_97

    goto :goto_1e

    :catch_97
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextApi JSONException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNextApi JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto/16 :goto_1e

    :cond_d5
    :try_start_d5
    invoke-virtual {p0}, Lsdk/pay/d;->a()V

    goto/16 :goto_1e

    :cond_da
    invoke-virtual {p0}, Lsdk/pay/d;->a()V
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_dd} :catch_97

    goto/16 :goto_1e
.end method

.method protected e(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/e;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lsdk/pay/d;->d(I)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsdk/pay/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stepPay url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->d()V

    const-string v1, "stepPay"

    new-instance v2, Lsdk/pay/d$4;

    invoke-direct {v2, p0}, Lsdk/pay/d$4;-><init>(Lsdk/pay/d;)V

    invoke-virtual {p0, v1, v0, v2}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    goto :goto_c
.end method

.method protected f()V
    .registers 5

    const-string v0, "initGetPayType start"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_29
    const-string v2, "token"

    sget-object v3, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v3}, Lsdk/pay/d/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packagename"

    iget-object v3, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3f} :catch_94

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGetPayType JSONObject = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPayTypes"

    invoke-virtual {p0, v2, v1}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsdk/pay/b/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initGetPayType url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lsdk/pay/d;->f(Ljava/lang/String;)V

    :goto_93
    return-void

    :catch_94
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initGetPayType JSONException = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGetPayType JSONException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_93
.end method

.method protected f(Ljava/lang/String;)V
    .registers 4

    const-string v0, "getPayTypes"

    new-instance v1, Lsdk/pay/d$5;

    invoke-direct {v1, p0}, Lsdk/pay/d$5;-><init>(Lsdk/pay/d;)V

    invoke-virtual {p0, v0, p1, v1}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    return-void
.end method

.method protected g()V
    .registers 8

    const-string v0, "doGetParams start"

    invoke-static {v0}, Lsdk/pay/e/h;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v1}, Lsdk/pay/d/e;->m()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v2}, Lsdk/pay/d/e;->p()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?appid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v4}, Lsdk/pay/d/e;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_36
    const-string v5, "token"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "paytypeid"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "packagename"

    iget-object v6, p0, Lsdk/pay/d;->e:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_4f} :catch_12d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doGetParams jsonObject = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "doGetParams"

    invoke-virtual {p0, v5, v4}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsdk/pay/b/b;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v4}, Lsdk/pay/d/e;->d()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lsdk/pay/d;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    sget-object v0, Lsdk/pay/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsdk/pay/d/f;

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->i(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->h(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->d(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->f(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->g(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->a(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/d;->b:Lsdk/pay/d/e;

    invoke-virtual {v0}, Lsdk/pay/d/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsdk/pay/d/e;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetParams hash value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lsdk/pay/d/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetParams secondPay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Lsdk/pay/d;->a(Ljava/lang/String;Z)V

    :goto_12c
    return-void

    :catch_12d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doGetParams jsonexception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsdk/pay/e/h;->e(Ljava/lang/String;)V

    sget-object v1, Lsdk/pay/b/a;->a:Lsdk/pay/b/a;

    invoke-virtual {v1}, Lsdk/pay/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsdk/pay/d;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lsdk/pay/e/f;->a()Lsdk/pay/e/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doGetParams jsonexception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsdk/pay/e/f;->a(Ljava/lang/String;)V

    goto :goto_12c
.end method

.method protected g(Ljava/lang/String;)V
    .registers 4

    const-string v0, "getPayStatusl"

    new-instance v1, Lsdk/pay/d$7;

    invoke-direct {v1, p0}, Lsdk/pay/d$7;-><init>(Lsdk/pay/d;)V

    invoke-virtual {p0, v0, p1, v1}, Lsdk/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lsdk/pay/c$a;)V

    return-void
.end method
