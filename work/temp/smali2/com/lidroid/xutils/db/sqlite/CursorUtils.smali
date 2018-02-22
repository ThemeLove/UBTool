.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;,
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    new-instance v0, Lcom/lidroid/xutils/db/table/DbModel;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/table/DbModel;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_d
    if-lt v1, v2, :cond_10

    :cond_f
    return-object v0

    :cond_10
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;J)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move-object v0, v2

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-static {p3, p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    :try_start_b
    invoke-static {p0, p2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v5

    iget-object v6, v5, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v6}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/lidroid/xutils/db/table/Id;->getIndex()I

    move-result v0

    if-gez v0, :cond_7b

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    :goto_20
    invoke-virtual {v6}, Lcom/lidroid/xutils/db/table/Id;->getColumnConverter()Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object v0

    invoke-interface {v0, p1, v4}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p2, v7}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v1, p1, v4}, Lcom/lidroid/xutils/db/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    invoke-static {p2, v7, v1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    :goto_3c
    if-lt v3, v4, :cond_50

    iget-object v0, v5, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_65

    move-object v0, v1

    goto :goto_7

    :cond_50
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v5, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Column;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v1, p1, v3}, Lcom/lidroid/xutils/db/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    :cond_61
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3c

    :cond_65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/Finder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lcom/lidroid/xutils/db/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_70} :catch_71

    goto :goto_48

    :catch_71
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_7

    :cond_7b
    move v4, v0

    goto :goto_20
.end method
