.class public Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
.super Ljava/lang/Object;


# instance fields
.field private columnExpressions:[Ljava/lang/String;

.field private groupByColumnName:Ljava/lang/String;

.field private having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

.field private selector:Lcom/lidroid/xutils/db/sqlite/Selector;


# direct methods
.method protected constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/lidroid/xutils/db/sqlite/Selector;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iput-object p2, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    return-void
.end method

.method public static from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lidroid/xutils/db/sqlite/DbModelSelector;"
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public and(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->and(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public getEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public groupBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    return-object p0
.end method

.method public having(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    return-object p0
.end method

.method public limit(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public offset(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->offset(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public or(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->or(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->orderBy(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public orderBy(Ljava/lang/String;Z)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->orderBy(Ljava/lang/String;Z)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public varargs select([Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_c4

    move v0, v1

    :goto_15
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_b4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :goto_23
    const-string v0, " FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v3, v3, Lcom/lidroid/xutils/db/sqlite/Selector;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_51

    const-string v0, " WHERE "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v3, v3, Lcom/lidroid/xutils/db/sqlite/Selector;->whereBuilder:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, " GROUP BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result v0

    if-lez v0, :cond_7f

    const-string v0, " HAVING "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->having:Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-virtual {v3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7f
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    if-eqz v0, :cond_8f

    :goto_85
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_da

    :cond_8f
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->limit:I

    if-lez v0, :cond_af

    const-string v0, " LIMIT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, " OFFSET "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget v1, v1, Lcom/lidroid/xutils/db/sqlite/Selector;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_af
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b4
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->columnExpressions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_15

    :cond_c4
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->groupByColumnName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :cond_d3
    const-string v0, "*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_23

    :cond_da
    const-string v0, " ORDER BY "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    iget-object v0, v0, Lcom/lidroid/xutils/db/sqlite/Selector;->orderByList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/Selector$OrderBy;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_85
.end method

.method public where(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->selector:Lcom/lidroid/xutils/db/sqlite/Selector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    return-object p0
.end method
