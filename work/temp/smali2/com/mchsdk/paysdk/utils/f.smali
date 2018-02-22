.class public Lcom/mchsdk/paysdk/utils/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FileUtil"

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mchsdk/paysdk/utils/f;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/utils/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_34} :catch_35

    goto :goto_a

    :catch_35
    move-exception v0

    const-string v0, ""

    goto :goto_a
.end method

.method private g()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    :try_start_a
    const-string v1, "/META-INF/mch.properties"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_60
    .catchall {:try_start_a .. :try_end_13} :catchall_50

    move-result-object v1

    :try_start_14
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_3a} :catch_3b
    .catchall {:try_start_14 .. :try_end_3a} :catchall_5e

    goto :goto_1e

    :catch_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    const-string v0, ""
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_5e

    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5a

    :cond_43
    :goto_43
    return-object v0

    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_3b
    .catchall {:try_start_44 .. :try_end_47} :catchall_5e

    move-result-object v0

    if-eqz v1, :cond_43

    :try_start_4a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_43

    :catch_4e
    move-exception v1

    goto :goto_43

    :catchall_50
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_54
    if-eqz v1, :cond_59

    :try_start_56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5c

    :cond_59
    :goto_59
    throw v0

    :catch_5a
    move-exception v1

    goto :goto_43

    :catch_5c
    move-exception v1

    goto :goto_59

    :catchall_5e
    move-exception v0

    goto :goto_54

    :catch_60
    move-exception v1

    move-object v1, v0

    goto :goto_3c
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "game_id"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "game_name"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "game_appid"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "promote_id"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    const-string v0, "promote_account"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "version"

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
