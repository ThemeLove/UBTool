.class public Lcom/fanwei/bluearty/tinyhttp/WebbUtils;
.super Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRequestProperties(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->addRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11
.end method

.method static addRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name and value must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->getRfc1123DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    check-cast p2, Ljava/util/Date;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    instance-of v0, p2, Ljava/util/Calendar;

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->getRfc1123DateFormat()Ljava/text/DateFormat;

    move-result-object v0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_37
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method private static appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p3, :cond_1b

    const-string v0, ""

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1b
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method static ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1, p2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->addRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method

.method static getPayloadAsBytesAndSetContentType(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;ZI)[B
    .registers 10

    const/16 v4, 0x50

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    if-eqz v0, :cond_24

    const-string v0, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-static {p0, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->params:Ljava/util/Map;

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->queryString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_1c

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :cond_1c
    if-nez v1, :cond_8d

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_24
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    if-nez v0, :cond_2a

    move-object v0, v1

    :goto_29
    return-object v0

    :cond_2a
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_49

    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-static {p0, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p3, :cond_42

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_42
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_49
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_68

    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-static {p0, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    if-ltz p3, :cond_61

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_61
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_68
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_7f

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-static {p0, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_14

    :cond_7f
    const-string v0, "Content-Type"

    const-string v2, "text/plain"

    invoke-static {p0, v0, v2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_8d
    if-eqz p2, :cond_a7

    array-length v0, v1

    if-le v0, v4, :cond_a7

    invoke-static {v1}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->gzip([B)[B

    move-result-object v0

    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_a7

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_29

    :cond_a7
    move-object v0, v1

    goto :goto_a2
.end method

.method public static getRfc1123DateFormat()Ljava/text/DateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static gzip([B)[B
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_1f
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    :try_start_b
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_34
    .catchall {:try_start_b .. :try_end_14} :catchall_31

    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1f
    .catchall {:try_start_15 .. :try_end_18} :catchall_26

    move-result-object v0

    if-eqz v1, :cond_1e

    :try_start_1b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_2d

    :cond_1e
    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    :goto_20
    :try_start_20
    new-instance v2, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v2, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    :goto_27
    if-eqz v1, :cond_2c

    :try_start_29
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2f

    :cond_2c
    :goto_2c
    throw v0

    :catch_2d
    move-exception v1

    goto :goto_1e

    :catch_2f
    move-exception v1

    goto :goto_2c

    :catchall_31
    move-exception v0

    move-object v1, v2

    goto :goto_27

    :catch_34
    move-exception v0

    move-object v1, v2

    goto :goto_20
.end method

.method static parseErrorResponse(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<TT;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    const-class v0, Ljava/io/InputStream;

    if-ne p0, v0, :cond_a

    iput-object p2, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;

    goto :goto_2

    :cond_a
    invoke-static {p2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    sget-object v2, Lcom/fanwei/bluearty/tinyhttp/Const;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    if-ne p0, v2, :cond_25

    :cond_22
    iput-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;

    goto :goto_2

    :cond_25
    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-class v1, Lorg/json/JSONObject;

    if-ne p0, v1, :cond_39

    :try_start_31
    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->toJsonObject([B)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_38

    goto :goto_2

    :catch_38
    move-exception v1

    :cond_39
    :try_start_39
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_2

    :catch_43
    move-exception v1

    iput-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Response;->errorBody:Ljava/lang/Object;

    goto :goto_2
.end method

.method static parseResponseBody(Ljava/lang/Class;Lcom/fanwei/bluearty/tinyhttp/Response;Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/fanwei/bluearty/tinyhttp/Response",
            "<TT;>;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_6

    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const-class v0, Ljava/io/InputStream;

    if-ne p0, v0, :cond_f

    invoke-virtual {p1, p2}, Lcom/fanwei/bluearty/tinyhttp/Response;->setBody(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    invoke-static {p2}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne p0, v1, :cond_22

    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/fanwei/bluearty/tinyhttp/Response;->setBody(Ljava/lang/Object;)V

    goto :goto_6

    :cond_22
    sget-object v1, Lcom/fanwei/bluearty/tinyhttp/Const;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    if-ne p0, v1, :cond_2a

    invoke-virtual {p1, v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->setBody(Ljava/lang/Object;)V

    goto :goto_6

    :cond_2a
    const-class v1, Lorg/json/JSONObject;

    if-ne p0, v1, :cond_36

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->toJsonObject([B)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->setBody(Ljava/lang/Object;)V

    goto :goto_6

    :cond_36
    const-class v1, Lorg/json/JSONArray;

    if-ne p0, v1, :cond_6

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->toJsonArray([B)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fanwei/bluearty/tinyhttp/Response;->setBody(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public static queryString(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_42

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, [Ljava/lang/Object;

    array-length v7, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_2c
    if-ge v4, v7, :cond_3f

    aget-object v8, v2, v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v3, v0, v8}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "&"

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2c

    :cond_3f
    move-object v2, v3

    :cond_40
    :goto_40
    move-object v3, v2

    goto :goto_f

    :cond_42
    instance-of v2, v0, Ljava/lang/Iterable;

    if-eqz v2, :cond_64

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v5, v2, v0, v3}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "&"

    move-object v2, v0

    goto :goto_4d

    :cond_64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v3, v1, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->appendParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "&"

    goto :goto_40

    :cond_70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method static setContentTypeAndLengthForStreaming(Ljava/net/HttpURLConnection;Lcom/fanwei/bluearty/tinyhttp/Request;Z)V
    .registers 9

    const-wide/16 v2, -0x1

    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_36

    if-eqz p2, :cond_2d

    move-wide v0, v2

    :goto_b
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v0, v4

    if-lez v4, :cond_49

    :goto_12
    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-static {p0, v0, v1}, Lcom/fanwei/bluearty/tinyhttp/WebbUtils;->ensureRequestProperty(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_44

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    if-eqz p2, :cond_2c

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_b

    :cond_36
    iget-object v0, p1, Lcom/fanwei/bluearty/tinyhttp/Request;->payload:Ljava/lang/Object;

    instance-of v0, v0, Ljava/io/InputStream;

    if-eqz v0, :cond_3e

    move-wide v0, v2

    goto :goto_b

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_44
    long-to-int v0, v2

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2c

    :cond_49
    move-wide v2, v0

    goto :goto_12
.end method

.method public static toJsonArray([B)Lorg/json/JSONArray;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_14

    return-object v1

    :catch_d
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_14
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    const-string v2, "payload is not a valid JSON array"

    invoke-direct {v1, v2, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toJsonObject([B)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/fanwei/bluearty/tinyhttp/Const;->print(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_17

    return-object v1

    :catch_10
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    invoke-direct {v1, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_17
    move-exception v0

    new-instance v1, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    const-string v2, "payload is not a valid JSON object"

    invoke-direct {v1, v2, v0}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p0

    :goto_6
    return-object p0

    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method static wrapStream(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    if-eqz p0, :cond_a

    const-string v0, "identity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    const-string v0, "gzip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_a

    :cond_1a
    const-string v0, "deflate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    const/16 v2, 0x200

    invoke-direct {v0, p1, v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    move-object p1, v0

    goto :goto_a

    :cond_31
    new-instance v0, Lcom/fanwei/bluearty/tinyhttp/WebbException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported content-encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fanwei/bluearty/tinyhttp/WebbException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
