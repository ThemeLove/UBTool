.class public Lsdk/pay/e/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "\u8bf7\u7ed9\u4e88\u5b58\u50a8\u6743\u9650"

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v4, v1}, Lsdk/pay/easypermissions/b;->a(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)V
    .registers 7

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_25

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lsdk/pay/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    invoke-static {p0, v3}, Lsdk/pay/e/g;->a(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_1e

    :cond_25
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_9
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lsdk/pay/easypermissions/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_47
    .catchall {:try_start_3 .. :try_end_1d} :catchall_52

    move-result-object v1

    if-eqz v1, :cond_3f

    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3a} :catch_5c
    .catchall {:try_start_20 .. :try_end_3a} :catchall_59

    move-result v0

    if-ne v0, v6, :cond_45

    move v0, v6

    :goto_3e
    move v7, v0

    :cond_3f
    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_44
    :goto_44
    return v7

    :cond_45
    move v0, v7

    goto :goto_3e

    :catch_47
    move-exception v0

    move-object v1, v8

    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_59

    if-eqz v1, :cond_44

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_44

    :catchall_52
    move-exception v0

    :goto_53
    if-eqz v8, :cond_58

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0

    :catchall_59
    move-exception v0

    move-object v8, v1

    goto :goto_53

    :catch_5c
    move-exception v0

    goto :goto_49
.end method
