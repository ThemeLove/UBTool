.class public Lcom/lidroid/xutils/db/converter/ByteColumnConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/lidroid/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/db/converter/ColumnConverter",
        "<",
        "Ljava/lang/Byte;",
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
.method public fieldValue2ColumnValue(Ljava/lang/Byte;)Ljava/lang/Object;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;->fieldValue2ColumnValue(Ljava/lang/Byte;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->INTEGER:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Byte;
    .registers 4

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/Byte;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_7
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteColumnConverter;->getFieldValue(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method
