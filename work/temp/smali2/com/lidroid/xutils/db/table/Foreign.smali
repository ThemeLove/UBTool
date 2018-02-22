.class public Lcom/lidroid/xutils/db/table/Foreign;
.super Lcom/lidroid/xutils/db/table/Column;


# instance fields
.field private final foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

.field private final foreignColumnName:Ljava/lang/String;


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

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v0

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/table/Foreign;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    check-cast v0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getColumnValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    :try_start_24
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b0

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3e} :catch_ab

    move-result-object v1

    :try_start_3f
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v3

    if-eqz v3, :cond_53

    instance-of v4, v2, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v4, :cond_53

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5d

    :cond_53
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b

    :cond_5d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4d

    iget-object v6, v3, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v6, v5}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_6c} :catch_6d

    goto :goto_4d

    :catch_6d
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_71
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_79
    :try_start_79
    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_82} :catch_99

    move-result-object v1

    :try_start_83
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v3

    if-eqz v3, :cond_94

    if-nez v1, :cond_94

    instance-of v4, v2, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v4, :cond_94

    iget-object v3, v3, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v3, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    :cond_94
    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_97} :catch_a6

    move-result-object v0

    goto :goto_1b

    :catch_99
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_9d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    :catch_a6
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_9d

    :catch_ab
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_71

    :cond_b0
    move-object v0, v1

    goto/16 :goto_1b
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 8

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    :goto_1d
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_64

    :try_start_21
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_8

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_36
    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    :try_start_3e
    new-instance v2, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v2, p0, v1}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getAllFromDb()Ljava/util/List;
    :try_end_46
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_3e .. :try_end_46} :catch_48

    move-result-object v0

    goto :goto_1d

    :catch_48
    move-exception v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_51
    :try_start_51
    new-instance v2, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v2, p0, v1}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getFirstFromDb()Ljava/lang/Object;
    :try_end_59
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_51 .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_1d

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_8

    :catch_70
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8
.end method
