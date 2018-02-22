.class public final Lcom/fanwei/bluearty/simplejson/SimpleJson;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beanToJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_56

    aget-object v5, v3, v1

    const-class v0, Lcom/fanwei/bluearty/simplejson/annotation/NotConvert;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_20
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v6, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3c

    const-class v0, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-interface {v0}, Lcom/fanwei/bluearty/simplejson/annotation/NickName;->value()Ljava/lang/String;

    move-result-object v0

    :cond_3c
    :try_start_3c
    invoke-static {v5, p0}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4a

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    :cond_4a
    const-string v5, ""

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1c

    :catch_50
    move-exception v0

    goto :goto_1c

    :cond_52
    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_55} :catch_50

    goto :goto_1c

    :cond_56
    return-object v2
.end method

.method public static fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->jsonToBean(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static fromJsonArray(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->jsonArrayToBeanList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static generateInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->getClassName(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static getClassName(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private static jsonArrayToBeanList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/fanwei/bluearty/simplejson/BasicType;->check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;

    move-result-object v1

    :try_start_9
    sget-object v2, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    if-eq v1, v2, :cond_12

    invoke-static {v0, p0, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setCollectionBasicValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-static {v0, p0, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setCollectionCustomValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_11

    :catch_17
    move-exception v1

    goto :goto_11
.end method

.method private static jsonToBean(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_b

    invoke-static {p0, v1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseEntity(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_b
    return-object v0

    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_5
.end method

.method private static parseEntity(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    :goto_18
    if-ge v0, v3, :cond_49

    aget-object v4, v2, v0

    const-class v5, Lcom/fanwei/bluearty/simplejson/annotation/NotConvert;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_27

    invoke-static {v4, v1, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseField(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    :goto_33
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    const-class v4, Lcom/fanwei/bluearty/simplejson/annotation/NotConvert;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_42

    invoke-static {v3, p0, p1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseField(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_42} :catch_45

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_49
    return-object p1
.end method

.method private static parseField(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const-class v1, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fanwei/bluearty/simplejson/annotation/NickName;

    invoke-interface {v1}, Lcom/fanwei/bluearty/simplejson/annotation/NickName;->value()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_25
    :try_start_25
    const-class v1, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const-class v1, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-interface {v1}, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fanwei/bluearty/simplejson/serializer/Serializer;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fanwei/bluearty/simplejson/serializer/Serializer;->deserialization(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    if-ne v4, v2, :cond_6f

    invoke-static {v4}, Lcom/fanwei/bluearty/simplejson/BasicType;->check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;

    move-result-object v1

    sget-object v2, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    if-eq v1, v2, :cond_6b

    invoke-static {p0, p1, p2, v3, v1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setBasicValue(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/fanwei/bluearty/simplejson/BasicType;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_58} :catch_59

    goto :goto_4a

    :catch_59
    move-exception v1

    instance-of v1, v1, Ljava/lang/InstantiationException;

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "@CollectionCreateBy must specific a collection implementation subclass"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6b
    :try_start_6b
    invoke-static {p0, p1, p2, v4, v3}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setCustomValue(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)V

    goto :goto_4a

    :cond_6f
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/fanwei/bluearty/simplejson/BasicType;->check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;

    move-result-object v4

    const/4 v1, 0x0

    const-class v5, Lcom/fanwei/bluearty/simplejson/annotation/CollectionCreateBy;

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_99

    const-class v1, Lcom/fanwei/bluearty/simplejson/annotation/CollectionCreateBy;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fanwei/bluearty/simplejson/annotation/CollectionCreateBy;

    invoke-interface {v1}, Lcom/fanwei/bluearty/simplejson/annotation/CollectionCreateBy;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    :cond_99
    if-nez v1, :cond_a0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_a0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v5, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    if-eq v4, v5, :cond_b0

    invoke-static {v1, v3, v2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setCollectionBasicValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4a

    :cond_b0
    invoke-static {v1, v3, v2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->setCollectionCustomValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b7} :catch_59

    goto :goto_4a

    :cond_b8
    move-object v3, v1

    goto/16 :goto_25
.end method

.method private static parseFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v0, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-class v0, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;

    invoke-interface {v0}, Lcom/fanwei/bluearty/simplejson/annotation/SerializeBy;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fanwei/bluearty/simplejson/serializer/Serializer;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fanwei/bluearty/simplejson/serializer/Serializer;->serialization(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0

    :cond_24
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v2, v0, :cond_44

    invoke-static {v2}, Lcom/fanwei/bluearty/simplejson/BasicType;->check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;

    move-result-object v0

    sget-object v1, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    if-eq v0, v1, :cond_3b

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_23

    :cond_3b
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->beanToJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_23

    :cond_44
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/fanwei/bluearty/simplejson/BasicType;->check(Ljava/lang/reflect/Type;)Lcom/fanwei/bluearty/simplejson/BasicType;

    move-result-object v3

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v4, Lcom/fanwei/bluearty/simplejson/BasicType;->OTHER:Lcom/fanwei/bluearty/simplejson/BasicType;

    if-eq v3, v4, :cond_6f

    :goto_5f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_83

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6f
    :goto_6f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_83

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->beanToJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    :cond_83
    move-object v0, v2

    goto :goto_23
.end method

.method private static setBasicValue(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/String;Lcom/fanwei/bluearty/simplejson/BasicType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONObject;",
            "TT;",
            "Ljava/lang/String;",
            "Lcom/fanwei/bluearty/simplejson/BasicType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/fanwei/bluearty/simplejson/SimpleJson$1;->$SwitchMap$com$fanwei$bluearty$simplejson$BasicType:[I

    invoke-virtual {p4}, Lcom/fanwei/bluearty/simplejson/BasicType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4e

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_1b
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17

    :pswitch_24
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_17

    :pswitch_2d
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_17

    :pswitch_36
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_17

    :pswitch_3f
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_17

    :pswitch_48
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_24
        :pswitch_2d
        :pswitch_36
        :pswitch_3f
        :pswitch_48
    .end packed-switch
.end method

.method private static setCollectionBasicValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1a

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1a
    return-object p0
.end method

.method private static setCollectionCustomValue(Ljava/util/Collection;Lorg/json/JSONArray;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_22

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-static {p2}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->generateInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseEntity(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_22
    return-object p0
.end method

.method private static setCustomValue(Ljava/lang/reflect/Field;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Lorg/json/JSONObject;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p3}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->generateInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->parseEntity(Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static toJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-static {p0}, Lcom/fanwei/bluearty/simplejson/SimpleJson;->beanToJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
