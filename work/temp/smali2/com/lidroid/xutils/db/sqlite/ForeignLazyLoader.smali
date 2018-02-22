.class public Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private columnValue:Ljava/lang/Object;

.field private final foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAllFromDb()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v0, v1, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method public getColumnValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getFirstFromDb()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v0, v1, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    iget-object v2, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->foreignColumn:Lcom/lidroid/xutils/db/table/Foreign;

    invoke-virtual {v2}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignColumnName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    iget-object v4, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object v0

    :cond_27
    return-object v0
.end method

.method public setColumnValue(Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->columnValue:Ljava/lang/Object;

    return-void
.end method
