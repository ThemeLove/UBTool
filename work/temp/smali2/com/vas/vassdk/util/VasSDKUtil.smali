.class public Lcom/vas/vassdk/util/VasSDKUtil;
.super Ljava/lang/Object;
.source "VasSDKUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "drawable"

.field private static final b:Ljava/lang/String; = "layout"

.field private static final c:Ljava/lang/String; = "id"

.field private static final d:Ljava/lang/String; = "color"

.field private static final e:Ljava/lang/String; = "dimen"

.field private static final f:Ljava/lang/String; = "string"

.field private static final g:Ljava/lang/String; = "style"

.field private static final h:Ljava/lang/String; = "anim"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 168
    if-nez v0, :cond_20

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to load resource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    .line 171
    :cond_20
    return v0
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 181
    const-string v0, "anim"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 141
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v0

    .line 146
    :goto_16
    return-object v0

    .line 143
    :catch_17
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public static getAssetConfigs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 36
    .line 39
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_73
    .catchall {:try_start_1 .. :try_end_e} :catchall_54

    .line 40
    :try_start_e
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_77
    .catchall {:try_start_e .. :try_end_13} :catchall_6d

    .line 42
    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    :goto_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2d

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_31
    .catchall {:try_start_13 .. :try_end_21} :catchall_71

    move-result-object v0

    .line 51
    if-eqz v2, :cond_27

    .line 53
    :try_start_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_45

    .line 61
    :cond_27
    :goto_27
    if-eqz v3, :cond_2c

    .line 63
    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_4a

    .line 70
    :cond_2c
    :goto_2c
    return-object v0

    .line 45
    :cond_2d
    :try_start_2d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31
    .catchall {:try_start_2d .. :try_end_30} :catchall_71

    goto :goto_18

    .line 48
    :catch_31
    move-exception v1

    .line 49
    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_71

    .line 51
    if-eqz v2, :cond_3a

    .line 53
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_4f

    .line 61
    :cond_3a
    :goto_3a
    if-eqz v3, :cond_2c

    .line 63
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_2c

    .line 65
    :catch_40
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 55
    :catch_45
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 65
    :catch_4a
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 55
    :catch_4f
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 50
    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 51
    :goto_58
    if-eqz v2, :cond_5d

    .line 53
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_63

    .line 61
    :cond_5d
    :goto_5d
    if-eqz v3, :cond_62

    .line 63
    :try_start_5f
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_68

    .line 69
    :cond_62
    :goto_62
    throw v0

    .line 55
    :catch_63
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 65
    :catch_68
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_62

    .line 50
    :catchall_6d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_58

    :catchall_71
    move-exception v0

    goto :goto_58

    .line 48
    :catch_73
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_32

    :catch_77
    move-exception v1

    move-object v2, v0

    goto :goto_32
.end method

.method public static getAssetDesConfigs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    .line 83
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "vas.dat"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_9e
    .catchall {:try_start_1 .. :try_end_10} :catchall_7e

    .line 84
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 87
    const-string v3, "DESede"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 89
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    new-instance v0, Ljavax/crypto/CipherInputStream;

    .line 91
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 90
    invoke-direct {v0, v4, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 92
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_37} :catch_a3
    .catchall {:try_start_10 .. :try_end_37} :catchall_96

    .line 93
    :try_start_37
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_a7
    .catchall {:try_start_37 .. :try_end_3c} :catchall_99

    .line 95
    :try_start_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5b

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_5f
    .catchall {:try_start_3c .. :try_end_4a} :catchall_9b

    move-result-object v0

    .line 107
    if-eqz v2, :cond_50

    .line 109
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    :cond_50
    if-eqz v3, :cond_55

    .line 115
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_55
    if-eqz v4, :cond_5a

    .line 122
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5a} :catch_74

    .line 133
    :cond_5a
    :goto_5a
    return-object v0

    .line 98
    :cond_5b
    :try_start_5b
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_9b

    goto :goto_41

    .line 101
    :catch_5f
    move-exception v0

    .line 102
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_9b

    .line 107
    if-eqz v2, :cond_68

    .line 109
    :try_start_65
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    :cond_68
    if-eqz v3, :cond_6d

    .line 115
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_6d
    if-eqz v4, :cond_72

    .line 122
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_72} :catch_79

    :cond_72
    :goto_72
    move-object v0, v1

    .line 133
    goto :goto_5a

    .line 127
    :catch_74
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 127
    :catch_79
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_72

    .line 103
    :catchall_7e
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    .line 107
    :goto_81
    if-eqz v2, :cond_86

    .line 109
    :try_start_83
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 113
    :cond_86
    if-eqz v1, :cond_8b

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_8b
    if-eqz v4, :cond_90

    .line 122
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_90} :catch_91

    .line 132
    :cond_90
    :goto_90
    throw v0

    .line 127
    :catch_91
    move-exception v1

    .line 129
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90

    .line 103
    :catchall_96
    move-exception v0

    move-object v4, v1

    goto :goto_81

    :catchall_99
    move-exception v0

    goto :goto_81

    :catchall_9b
    move-exception v0

    move-object v1, v3

    goto :goto_81

    .line 101
    :catch_9e
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_60

    :catch_a3
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_60

    :catch_a7
    move-exception v0

    move-object v3, v1

    goto :goto_60
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 224
    const-string v0, "color"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 235
    const-string v0, "dimen"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 191
    const-string v0, "drawable"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 202
    const-string v0, "layout"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMD5RomdomStr()Ljava/lang/String;
    .registers 5

    .prologue
    .line 302
    const-string v0, ""

    .line 303
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 304
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 306
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method public static getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 266
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 267
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_1f

    .line 269
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 274
    :goto_1a
    return-object v0

    .line 271
    :catch_1b
    move-exception v0

    .line 272
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 274
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getStringFormResouse(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-static {p0, v1, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 246
    const-string v0, "string"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 261
    const-string v0, "style"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getViewID(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 213
    const-string v0, "id"

    invoke-static {p0, v0, p1}, Lcom/vas/vassdk/util/VasSDKUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isFirstActive(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 288
    const-string v2, "vasunisdk"

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 289
    const-string v3, "FIRST"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 290
    if-eqz v3, :cond_1e

    .line 291
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "FIRST"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    :goto_1d
    return v0

    :cond_1e
    move v0, v1

    goto :goto_1d
.end method

.method public static toJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 280
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 284
    :goto_6
    return-object v0

    .line 281
    :catch_7
    move-exception v0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to json fail \u3010"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_6
.end method
