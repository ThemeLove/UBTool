.class public final Lcom/alipay/sdk/g/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/alipay/sdk/g/a;

.field public b:[Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/alipay/sdk/g/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/g/b;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/sdk/g/b;->a:Lcom/alipay/sdk/g/a;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/sdk/g/b;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_9

    move-object v0, v2

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    array-length v3, v0

    if-ge v1, v3, :cond_41

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/sdk/g/a;->a(Ljava/lang/String;)Lcom/alipay/sdk/g/a;

    move-result-object v3

    sget-object v4, Lcom/alipay/sdk/g/a;->a:Lcom/alipay/sdk/g/a;

    if-eq v3, v4, :cond_3e

    new-instance v4, Lcom/alipay/sdk/g/b;

    aget-object v5, v0, v1

    invoke-direct {v4, v5, v3}, Lcom/alipay/sdk/g/b;-><init>(Ljava/lang/String;Lcom/alipay/sdk/g/a;)V

    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/alipay/sdk/g/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/alipay/sdk/g/b;->b:[Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_41
    move-object v0, v2

    goto :goto_8
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v4, -0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v0, v4, :cond_19

    if-eq v3, v4, :cond_19

    if-gt v3, v0, :cond_1b

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_51

    move v0, v1

    :goto_2a
    array-length v4, v3

    if-ge v0, v4, :cond_51

    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_51
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1a
.end method
