.class public Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCreateTableSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    iget-object v1, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\"  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_39
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_61
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " PRIMARY KEY,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_39

    :cond_83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    instance-of v3, v0, Lcom/lidroid/xutils/db/table/Finder;

    if-nez v3, :cond_43

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\"  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isUnique(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_b6

    const-string v3, " UNIQUE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b6
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isNotNull(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_c5

    const-string v3, " NOT NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c5
    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getCheck(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_de

    const-string v3, " CHECK("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_de
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_43
.end method

.method private static buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_24

    const-string v0, " WHERE "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    if-nez p2, :cond_28

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " WHERE "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "="

    invoke-static {v2, v4, p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 8

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    iget-object v2, v1, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " WHERE "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "="

    invoke-static {v2, v5, v3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 9

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "INSERT INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ") VALUES ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_48
    if-lt v0, v2, :cond_78

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b

    :cond_61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/KeyValue;

    iget-object v5, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_78
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public static buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 9

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "REPLACE INTO "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ") VALUES ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_48
    if-lt v0, v2, :cond_78

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b

    :cond_61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/KeyValue;

    iget-object v5, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f

    :cond_78
    const-string v4, "?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 11

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    if-eqz p3, :cond_89

    array-length v1, p3

    if-lez v1, :cond_89

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "UPDATE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " SET "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_5f

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_5f

    const-string v0, " WHERE "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_b

    :cond_68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/KeyValue;

    if-eqz v1, :cond_78

    iget-object v5, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_78
    iget-object v5, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_89
    move-object v1, v0

    goto :goto_1b
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 12

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    if-eqz p2, :cond_b1

    array-length v1, p2

    if-lez v1, :cond_b1

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v1, v0

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    iget-object v4, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v4, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4a

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this entity["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s id value is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v2, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "UPDATE "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " SET "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_64
    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, " WHERE "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "="

    invoke-static {v1, v3, v5}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_b

    :cond_90
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/KeyValue;

    if-eqz v1, :cond_a0

    iget-object v7, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    :cond_a0
    iget-object v7, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "=?,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_64

    :cond_b1
    move-object v1, v0

    goto/16 :goto_1b
.end method

.method private static column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_11
    new-instance v1, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-direct {v1, v2, v0}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :cond_17
    return-object v0
.end method

.method public static entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lidroid/xutils/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    iget-object v2, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v2, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v1

    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    instance-of v3, v0, Lcom/lidroid/xutils/db/table/Finder;

    if-nez v3, :cond_2f

    invoke-static {p1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method
