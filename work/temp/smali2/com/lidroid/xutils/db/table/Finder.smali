.class public Lcom/lidroid/xutils/db/table/Finder;
.super Lcom/lidroid/xutils/db/table/Column;


# instance fields
.field private final targetColumnName:Ljava/lang/String;

.field private final valueColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    const-class v0, Lcom/lidroid/xutils/db/annotation/Finder;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Finder;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Finder;->valueColumn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Finder;->targetColumn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetColumnName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getFinderTargetEntityType(Lcom/lidroid/xutils/db/table/Finder;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {v0, p0, v2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    :goto_22
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_69

    :try_start_26
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_31} :catch_60

    :goto_31
    return-void

    :cond_32
    const-class v3, Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :try_start_3a
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getAllFromDb()Ljava/util/List;
    :try_end_42
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_3a .. :try_end_42} :catch_44

    move-result-object v0

    goto :goto_22

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_4d
    :try_start_4d
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {v1, p0, v2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getFirstFromDb()Ljava/lang/Object;
    :try_end_55
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_4d .. :try_end_55} :catch_57

    move-result-object v0

    goto :goto_22

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_69
    :try_start_69
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_31

    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method
