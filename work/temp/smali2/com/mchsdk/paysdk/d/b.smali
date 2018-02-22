.class public Lcom/mchsdk/paysdk/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Lcom/mchsdk/paysdk/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mchsdk/paysdk/d/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/Cursor;)[Lcom/mchsdk/paysdk/d/d;
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    return-object v0

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    new-array v0, v3, [Lcom/mchsdk/paysdk/d/d;

    move v1, v2

    :goto_14
    if-ge v1, v3, :cond_4

    new-instance v4, Lcom/mchsdk/paysdk/d/d;

    invoke-direct {v4}, Lcom/mchsdk/paysdk/d/d;-><init>()V

    aput-object v4, v0, v1

    aget-object v4, v0, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/mchsdk/paysdk/d/d;->a:I

    aget-object v4, v0, v1

    const-string v5, "account"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mchsdk/paysdk/d/d;->b:Ljava/lang/String;

    aget-object v4, v0, v1

    const-string v5, "password"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mchsdk/paysdk/d/d;->c:Ljava/lang/String;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .registers 7

    sget-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user"

    const-string v2, "account = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a()V
    .registers 6

    const-string v0, "sdk.db"

    new-instance v0, Lcom/mchsdk/paysdk/d/c;

    iget-object v1, p0, Lcom/mchsdk/paysdk/d/b;->b:Landroid/content/Context;

    const-string v2, "sdk.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mchsdk/paysdk/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/d/b;->c:Lcom/mchsdk/paysdk/d/c;

    :try_start_f
    iget-object v0, p0, Lcom/mchsdk/paysdk/d/b;->c:Lcom/mchsdk/paysdk/d/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    iget-object v0, p0, Lcom/mchsdk/paysdk/d/b;->c:Lcom/mchsdk/paysdk/d/c;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/d/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_17
.end method

.method public b(Ljava/lang/String;)Lcom/mchsdk/paysdk/d/d;
    .registers 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const/4 v3, 0x1

    const-string v5, "account"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "password"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/d/b;->a(Landroid/database/Cursor;)[Lcom/mchsdk/paysdk/d/d;

    move-result-object v0

    array-length v1, v0

    if-ge v8, v1, :cond_3a

    aget-object v4, v0, v8

    :cond_3a
    return-object v4
.end method

.method public b()V
    .registers 2

    sget-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    :cond_c
    return-void
.end method

.method public c()[Lcom/mchsdk/paysdk/d/d;
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    sget-object v0, Lcom/mchsdk/paysdk/d/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_25

    move-result-object v0

    :goto_20
    invoke-direct {p0, v0}, Lcom/mchsdk/paysdk/d/b;->a(Landroid/database/Cursor;)[Lcom/mchsdk/paysdk/d/d;

    move-result-object v0

    return-object v0

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto :goto_20
.end method
