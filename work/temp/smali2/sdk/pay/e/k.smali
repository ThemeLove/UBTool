.class public Lsdk/pay/e/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v3, "UTF-8"

    const-string v4, "H"

    const-string v5, "2"

    const/high16 v6, -0x1000000

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lsdk/pay/e/k;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 16
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    if-ltz p1, :cond_c

    if-gez p2, :cond_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    :try_start_e
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/google/zxing/EncodeHintType;->b:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v5, v0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/google/zxing/EncodeHintType;->a:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v5, v0, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    sget-object v0, Lcom/google/zxing/EncodeHintType;->f:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v5, v0, p5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->l:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v3

    mul-int v0, p1, p2

    new-array v1, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_48
    if-ge v2, p2, :cond_6b

    const/4 v0, 0x0

    :goto_4b
    if-ge v0, p1, :cond_67

    invoke-virtual {v3, v0, v2}, Lcom/google/zxing/common/BitMatrix;->a(II)Z

    move-result v4

    if-eqz v4, :cond_5b

    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aput p6, v1, v4

    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5b
    mul-int v4, v2, p1

    add-int/2addr v4, v0

    aput p7, v1, v4
    :try_end_60
    .catch Lcom/google/zxing/WriterException; {:try_start_e .. :try_end_60} :catch_61

    goto :goto_58

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_7

    :cond_67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_48

    :cond_6b
    :try_start_6b
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_7a
    .catch Lcom/google/zxing/WriterException; {:try_start_6b .. :try_end_7a} :catch_61

    goto :goto_7
.end method
