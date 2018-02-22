.class public Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;
.super Ljava/lang/Object;


# static fields
.field private static final columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/converter/ColumnConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/BooleanColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, [B

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/CharColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/CharColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/DateColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/DateColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/DoubleColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/FloatColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/FloatColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/IntegerColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/LongColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/LongColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/SqlDateColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/lidroid/xutils/db/converter/StringColumnConverter;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/converter/StringColumnConverter;-><init>()V

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    const-class v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    :try_start_21
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    if-eqz v0, :cond_18

    sget-object v1, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_32} :catch_33

    goto :goto_18

    :catch_33
    move-exception v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    invoke-static {p0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    goto :goto_a
.end method

.method public static isSupportColumnConverter(Ljava/lang/Class;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    const-class v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/converter/ColumnConverter;

    if-eqz v0, :cond_29

    sget-object v3, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_29} :catch_2f

    :cond_29
    if-nez v0, :cond_2d

    move v0, v1

    goto :goto_f

    :cond_2d
    move v0, v2

    goto :goto_f

    :catch_2f
    move-exception v0

    :cond_30
    move v0, v2

    goto :goto_f
.end method

.method public static registerColumnConverter(Ljava/lang/Class;Lcom/lidroid/xutils/db/converter/ColumnConverter;)V
    .registers 4

    sget-object v0, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->columnType_columnConverter_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
