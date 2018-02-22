.class public Lcom/mchsdk/paysdk/d/a/a;
.super Lcom/mchsdk/paysdk/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/mchsdk/paysdk/d/a/b;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_2
    sget-object v0, Lcom/mchsdk/paysdk/d/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_commonquesstion"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key_cqid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "key_title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "key_description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_26

    move-result-object v0

    move-object v2, v0

    :goto_22
    if-nez v2, :cond_2c

    move-object v0, v8

    :cond_25
    :goto_25
    return-object v0

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v8

    goto :goto_22

    :cond_2c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_38
    move-object v0, v8

    goto :goto_25

    :cond_3a
    new-instance v0, Lcom/mchsdk/paysdk/d/a/b;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/d/a/b;-><init>()V

    move v1, v9

    :goto_40
    if-ge v1, v3, :cond_25

    new-instance v4, Lcom/mchsdk/paysdk/d/a/b;

    invoke-direct {v4}, Lcom/mchsdk/paysdk/d/a/b;-><init>()V

    const-string v5, "key_cqid"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mchsdk/paysdk/d/a/b;->a:Ljava/lang/String;

    const-string v5, "key_title"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mchsdk/paysdk/d/a/b;->b:Ljava/lang/String;

    const-string v5, "key_description"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mchsdk/paysdk/d/a/b;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/mchsdk/paysdk/d/a/b;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method
