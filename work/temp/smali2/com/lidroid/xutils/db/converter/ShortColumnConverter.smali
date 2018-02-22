.class public Lcom/lidroid/xutils/db/converter/ShortColumnConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lidroid/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;->fieldValue2ColumnValue(Ljava/lang/Short;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2ColumnValue(Ljava/lang/Short;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ShortColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Short;
    .registers 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Short;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_7
.end method
