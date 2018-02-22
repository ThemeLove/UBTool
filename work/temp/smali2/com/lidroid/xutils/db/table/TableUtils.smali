.class public Lcom/lidroid/xutils/db/table/TableUtils;
.super Ljava/lang/Object;


# static fields
.field private static entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;>;"
        }
    .end annotation
.end field

.field private static entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Id;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_f
    if-lt v0, v2, :cond_2e

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_24} :catch_25

    goto :goto_8

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_2e
    :try_start_2e
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_43

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_43
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    new-instance v4, Lcom/lidroid/xutils/db/table/Column;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_6e
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isForeign(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_8b

    new-instance v4, Lcom/lidroid/xutils/db/table/Foreign;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Foreign;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_8b
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isFinder(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_40

    new-instance v4, Lcom/lidroid/xutils/db/table/Finder;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Finder;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_a7} :catch_25

    goto :goto_40
.end method

.method static declared-synchronized getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_33

    :goto_1b
    monitor-exit v1

    return-object v0

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v2, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_33

    goto :goto_1b

    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lidroid/xutils/db/table/Column;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    goto :goto_e
.end method

.method public static getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Table;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->execAfterTableCreated()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static declared-synchronized getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lidroid/xutils/db/table/Id;"
        }
    .end annotation

    const/4 v2, 0x0

    const-class v4, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v4

    :try_start_4
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "field \'id\' not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_17
    :try_start_17
    sget-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Id;
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_14

    :goto_2f
    monitor-exit v4

    return-object v0

    :cond_31
    const/4 v0, 0x0

    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_8a

    array-length v6, v5

    move v3, v2

    :goto_3a
    if-lt v3, v6, :cond_4d

    move-object v1, v0

    :cond_3d
    if-nez v1, :cond_42

    array-length v3, v5

    :goto_40
    if-lt v2, v3, :cond_5b

    :cond_42
    :goto_42
    if-nez v1, :cond_7b

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    goto :goto_2f

    :cond_4d
    aget-object v1, v5, v3

    const-class v7, Lcom/lidroid/xutils/db/annotation/Id;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-nez v7, :cond_3d

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3a

    :cond_5b
    aget-object v0, v5, v2

    const-string v6, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    :cond_75
    move-object v1, v0

    goto :goto_42

    :cond_77
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_40

    :cond_7b
    new-instance v0, Lcom/lidroid/xutils/db/table/Id;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/db/table/Id;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_32 .. :try_end_89} :catchall_14

    goto :goto_2f

    :cond_8a
    move-object v1, v0

    goto :goto_42
.end method

.method private static getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Table;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method
