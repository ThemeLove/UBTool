.class public final Lcom/alipay/sdk/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_53

    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_57

    :try_start_b
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_5b

    const/16 v0, 0x1000

    :try_start_12
    new-array v0, v0, [B

    :goto_14
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_33

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_20

    goto :goto_14

    :catchall_20
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_23
    if-eqz v3, :cond_28

    :try_start_25
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_4d

    :cond_28
    :goto_28
    if-eqz v2, :cond_2d

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_4f

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_32

    :try_start_2f
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_51

    :cond_32
    :goto_32
    throw v0

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_20

    move-result-object v0

    :try_start_3d
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_47

    :goto_40
    :try_start_40
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_49

    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_4b

    :goto_46
    return-object v0

    :catch_47
    move-exception v2

    goto :goto_40

    :catch_49
    move-exception v2

    goto :goto_43

    :catch_4b
    move-exception v1

    goto :goto_46

    :catch_4d
    move-exception v3

    goto :goto_28

    :catch_4f
    move-exception v2

    goto :goto_2d

    :catch_51
    move-exception v1

    goto :goto_32

    :catchall_53
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_23

    :catchall_57
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_23

    :catchall_5b
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_23
.end method

.method public static b([B)[B
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_4d

    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_51

    const/16 v0, 0x1000

    :try_start_d
    new-array v0, v0, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_55

    :goto_14
    const/4 v2, 0x0

    const/16 v5, 0x1000

    :try_start_17
    invoke-virtual {v1, v0, v2, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_30

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    goto :goto_14

    :catchall_23
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_47

    :goto_29
    :try_start_29
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_49

    :goto_2c
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_4b

    :goto_2f
    throw v0

    :cond_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_23

    move-result-object v0

    :try_start_37
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_41

    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_43

    :goto_3d
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_45

    :goto_40
    return-object v0

    :catch_41
    move-exception v2

    goto :goto_3a

    :catch_43
    move-exception v1

    goto :goto_3d

    :catch_45
    move-exception v1

    goto :goto_40

    :catch_47
    move-exception v2

    goto :goto_29

    :catch_49
    move-exception v1

    goto :goto_2c

    :catch_4b
    move-exception v1

    goto :goto_2f

    :catchall_4d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_26

    :catchall_51
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_26

    :catchall_55
    move-exception v0

    move-object v3, v4

    goto :goto_26
.end method
