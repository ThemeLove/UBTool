.class public final Lcom/alipay/c/a/a/b/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/c/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/alipay/c/a/a/b/b;

    invoke-direct {v0}, Lcom/alipay/c/a/a/b/b;-><init>()V

    sput-object v0, Lcom/alipay/c/a/a/b/b;->a:Lcom/alipay/c/a/a/b/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alipay/c/a/a/b/b;
    .registers 1

    sget-object v0, Lcom/alipay/c/a/a/b/b;->a:Lcom/alipay/c/a/a/b/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    if-eqz p0, :cond_22

    :try_start_e
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1b} :catch_21

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_b

    :catch_21
    move-exception v0

    :cond_22
    move-object v0, v1

    goto :goto_1c
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    move v2, v0

    :goto_11
    if-nez v2, :cond_16

    :goto_13
    return v0

    :cond_14
    move v2, v1

    goto :goto_11

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1f

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v2

    goto :goto_1a
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, ""

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    if-eqz p0, :cond_23

    :try_start_f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_22

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_c

    :catch_22
    move-exception v0

    :cond_23
    move-object v0, v1

    goto :goto_1d
.end method

.method public static c()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/alipay/c/a/a/a/a;->a()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_2b

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :cond_26
    :goto_26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2b
    move-exception v2

    goto :goto_26
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_15

    move-result v0

    :goto_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const-string v0, "1"

    :goto_11
    return-object v0

    :cond_12
    const-string v0, "0"

    goto :goto_11

    :catch_15
    move-exception v1

    goto :goto_c
.end method

.method public static d()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const-string v4, "0000000000000000"

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_56
    .catchall {:try_start_3 .. :try_end_f} :catchall_6d

    :try_start_f
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_98
    .catchall {:try_start_f .. :try_end_14} :catchall_8e

    :try_start_14
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_19} :catch_9c
    .catchall {:try_start_14 .. :try_end_19} :catchall_91

    const/4 v1, 0x1

    :goto_1a
    const/16 v5, 0x64

    if-ge v1, v5, :cond_a7

    :try_start_1e
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a7

    const-string v6, "Serial"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_50

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_3f} :catch_a1
    .catchall {:try_start_1e .. :try_end_3f} :catchall_93

    move-result-object v4

    move-object v1, v4

    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_80

    :goto_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_82

    :goto_47
    :try_start_47
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_53

    move-object v0, v1

    :goto_4b
    if-nez v0, :cond_4f

    const-string v0, ""

    :cond_4f
    return-object v0

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catch_53
    move-exception v0

    move-object v0, v1

    goto :goto_4b

    :catch_56
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_59
    if-eqz v0, :cond_5e

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_84

    :cond_5e
    :goto_5e
    if-eqz v1, :cond_63

    :try_start_60
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_63} :catch_86

    :cond_63
    :goto_63
    if-eqz v2, :cond_a5

    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_6a

    move-object v0, v4

    goto :goto_4b

    :catch_6a
    move-exception v0

    move-object v0, v4

    goto :goto_4b

    :catchall_6d
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_70
    if-eqz v1, :cond_75

    :try_start_72
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_88

    :cond_75
    :goto_75
    if-eqz v2, :cond_7a

    :try_start_77
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7a} :catch_8a

    :cond_7a
    :goto_7a
    if-eqz v3, :cond_7f

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_8c

    :cond_7f
    :goto_7f
    throw v0

    :catch_80
    move-exception v0

    goto :goto_44

    :catch_82
    move-exception v0

    goto :goto_47

    :catch_84
    move-exception v0

    goto :goto_5e

    :catch_86
    move-exception v0

    goto :goto_63

    :catch_88
    move-exception v1

    goto :goto_75

    :catch_8a
    move-exception v1

    goto :goto_7a

    :catch_8c
    move-exception v1

    goto :goto_7f

    :catchall_8e
    move-exception v0

    move-object v2, v1

    goto :goto_70

    :catchall_91
    move-exception v0

    goto :goto_70

    :catchall_93
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_70

    :catch_98
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_59

    :catch_9c
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_59

    :catch_a1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_59

    :cond_a5
    move-object v0, v4

    goto :goto_4b

    :cond_a7
    move-object v1, v4

    goto :goto_41
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-nez v4, :cond_69

    :goto_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const-string v7, "ringermode"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "call"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "system"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ring"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "music"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "alarm"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_64} :catch_6b

    :goto_64
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_69
    move v1, v2

    goto :goto_15

    :catch_6b
    move-exception v0

    goto :goto_64
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    :try_start_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_10} :catch_1e

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1b

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1b
    const-string v0, ""

    :cond_1d
    return-object v0

    :catch_1e
    move-exception v0

    :cond_1f
    move-object v0, v1

    goto :goto_11
.end method

.method public static f()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alipay/c/a/a/b/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/alipay/c/a/a/b/b;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const-string v1, ""

    if-eqz p0, :cond_23

    :try_start_f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_22

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_a

    const-string v0, ""

    goto :goto_a

    :catch_22
    move-exception v0

    :cond_23
    move-object v0, v1

    goto :goto_1d
.end method

.method public static g()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_31
    .catchall {:try_start_2 .. :try_end_9} :catchall_40

    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_65
    .catchall {:try_start_9 .. :try_end_e} :catchall_5e

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":\\s+"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    array-length v3, v0

    if-le v3, v5, :cond_28

    const/4 v3, 0x1

    aget-object v0, v0, v3
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_21} :catch_68
    .catchall {:try_start_e .. :try_end_21} :catchall_63

    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_50

    :goto_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_52

    :goto_27
    return-object v0

    :cond_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_54

    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_56

    :cond_2e
    :goto_2e
    const-string v0, ""

    goto :goto_27

    :catch_31
    move-exception v1

    move-object v1, v0

    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_58

    :cond_38
    :goto_38
    if-eqz v0, :cond_2e

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_2e

    :catch_3e
    move-exception v0

    goto :goto_2e

    :catchall_40
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_45
    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_5a

    :cond_4a
    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_5c

    :cond_4f
    :goto_4f
    throw v0

    :catch_50
    move-exception v2

    goto :goto_24

    :catch_52
    move-exception v1

    goto :goto_27

    :catch_54
    move-exception v0

    goto :goto_2b

    :catch_56
    move-exception v0

    goto :goto_2e

    :catch_58
    move-exception v1

    goto :goto_38

    :catch_5a
    move-exception v2

    goto :goto_4a

    :catch_5c
    move-exception v1

    goto :goto_4f

    :catchall_5e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_45

    :catchall_63
    move-exception v0

    goto :goto_45

    :catch_65
    move-exception v1

    move-object v1, v2

    goto :goto_33

    :catch_68
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_33
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_46

    :try_start_3
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_46

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_44} :catch_45

    goto :goto_23

    :catch_45
    move-exception v0

    :cond_46
    move-object v0, v1

    :goto_47
    if-nez v0, :cond_4b

    const-string v0, ""

    :cond_4b
    return-object v0

    :cond_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_53} :catch_45

    move-result-object v0

    goto :goto_47
.end method

.method public static h()Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    const-string v4, "/proc/meminfo"

    const-wide/16 v0, 0x0

    :try_start_5
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_30
    .catchall {:try_start_5 .. :try_end_a} :catchall_3f

    :try_start_a
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_11} :catch_5c
    .catchall {:try_start_a .. :try_end_11} :catchall_57

    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_5e
    .catchall {:try_start_11 .. :try_end_23} :catchall_5a

    move-result v0

    int-to-long v0, v0

    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_4d

    :goto_28
    :try_start_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_4f

    :cond_2b
    :goto_2b
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_30
    move-exception v2

    move-object v2, v3

    :goto_32
    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_37} :catch_51

    :cond_37
    :goto_37
    if-eqz v3, :cond_2b

    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2b

    :catch_3d
    move-exception v2

    goto :goto_2b

    :catchall_3f
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_42
    if-eqz v2, :cond_47

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_53

    :cond_47
    :goto_47
    if-eqz v4, :cond_4c

    :try_start_49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_55

    :cond_4c
    :goto_4c
    throw v0

    :catch_4d
    move-exception v2

    goto :goto_28

    :catch_4f
    move-exception v2

    goto :goto_2b

    :catch_51
    move-exception v2

    goto :goto_37

    :catch_53
    move-exception v1

    goto :goto_47

    :catch_55
    move-exception v1

    goto :goto_4c

    :catchall_57
    move-exception v0

    move-object v4, v3

    goto :goto_42

    :catchall_5a
    move-exception v0

    goto :goto_42

    :catch_5c
    move-exception v4

    goto :goto_32

    :catch_5e
    move-exception v3

    move-object v3, v4

    goto :goto_32
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_55

    :try_start_7
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_55

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_55

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    if-eqz v0, :cond_22

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "vendor"

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_22

    :catch_54
    move-exception v0

    :cond_55
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_17} :catch_1f

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v2

    goto :goto_1a
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    const-string v0, ""

    goto :goto_2b
.end method

.method public static j()Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_2b

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    :cond_26
    :goto_26
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_2b
    move-exception v2

    goto :goto_26
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, ""

    goto :goto_17
.end method

.method public static k()Ljava/lang/String;
    .registers 7

    const-string v1, ""

    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gsm.version.baseband"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "no message"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_32} :catch_37

    :goto_32
    if-nez v0, :cond_36

    const-string v0, ""

    :cond_36
    return-object v0

    :catch_37
    move-exception v0

    move-object v0, v1

    goto :goto_32
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    :goto_17
    return-object v0

    :catch_18
    move-exception v0

    const-string v0, ""

    goto :goto_17
.end method

.method public static l()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_9

    :goto_4
    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    return-object v0

    :catch_9
    move-exception v1

    goto :goto_4
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const-string v1, ""

    :try_start_d
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1c} :catch_32

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_2d
    invoke-static {}, Lcom/alipay/c/a/a/b/b;->v()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_30} :catch_35

    move-result-object v0

    goto :goto_a

    :catch_32
    move-exception v0

    move-object v0, v1

    goto :goto_a

    :catch_35
    move-exception v1

    goto :goto_a
.end method

.method public static m()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_9} :catch_f

    move-result-object v0

    :goto_a
    if-nez v0, :cond_e

    const-string v0, ""

    :cond_e
    return-object v0

    :catch_f
    move-exception v1

    goto :goto_a
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    const-string v1, ""

    :try_start_d
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_26

    move-result-object v0

    if-eqz v0, :cond_23

    if-eqz v0, :cond_a

    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_23
    const-string v0, ""
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_25} :catch_29

    goto :goto_a

    :catch_26
    move-exception v0

    move-object v0, v1

    goto :goto_a

    :catch_29
    move-exception v1

    goto :goto_a
.end method

.method public static n()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_11

    move-result-object v0

    :goto_c
    if-nez v0, :cond_10

    const-string v0, ""

    :cond_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_c
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_b} :catch_11

    move-result-object v0

    :goto_c
    if-nez v0, :cond_10

    const-string v0, ""

    :cond_10
    return-object v0

    :catch_11
    move-exception v1

    goto :goto_c
.end method

.method public static o()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x3e8

    rem-long v3, v0, v3

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    const-string v0, ""

    goto :goto_1b
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/alipay/c/a/a/b/b;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_1f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_address"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    if-nez v0, :cond_a

    const-string v0, ""
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2d} :catch_2e

    goto :goto_a

    :catch_2e
    move-exception v1

    goto :goto_a
.end method

.method public static p()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    const-string v0, ""

    goto :goto_11
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    :cond_14
    const-string v0, ""

    goto :goto_12
.end method

.method public static q()Ljava/lang/String;
    .registers 7

    const/4 v6, 0x7

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "00"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/dev/qemu_pipe"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "/dev/socket/qemud"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "/system/lib/libc_malloc_debug_qemu.so"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "/sys/qemu_trace"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "/system/bin/qemu-props"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "/dev/socket/genyd"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "/dev/socket/baseband_genyd"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_45
    if-ge v0, v6, :cond_66

    aget-object v1, v3, v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_5c
    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_59

    :catch_62
    move-exception v0

    const-string v0, ""

    :goto_65
    return-object v0

    :cond_66
    :try_start_66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_62

    move-result-object v0

    goto :goto_65
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, ""

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_28

    move-result-object v0

    :goto_23
    if-nez v0, :cond_c

    const-string v0, ""

    goto :goto_c

    :catch_28
    move-exception v0

    :cond_29
    move-object v0, v1

    goto :goto_23
.end method

.method public static r()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const-string v0, "00"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "dalvik.system.Taint"

    aput-object v3, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_18
    if-gtz v0, :cond_2e

    aget-object v4, v2, v1

    :try_start_1c
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_27

    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catch_27
    move-exception v4

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-static {p0}, Lcom/alipay/c/a/a/b/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/c/a/a/b/b;->z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-static {v2}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/alipay/c/a/a/b/b;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_30} :catch_32

    move-result-object v0

    :cond_31
    :goto_31
    return-object v0

    :catch_32
    move-exception v1

    goto :goto_31
.end method

.method public static s()Ljava/lang/String;
    .registers 9

    const/16 v2, 0x30

    const-string v0, "00"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "/system/build.prop"

    const-string v3, "ro.product.name=sdk"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/proc/tty/drivers"

    const-string v3, "goldfish"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/proc/cpuinfo"

    const-string v3, "goldfish"

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_41
    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_4e
    new-instance v3, Ljava/io/LineNumberReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_5d} :catch_7e
    .catchall {:try_start_4e .. :try_end_5d} :catchall_8b

    :cond_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_70} :catch_9f
    .catchall {:try_start_5d .. :try_end_70} :catchall_9c

    move-result v1

    if-eqz v1, :cond_5d

    const/16 v0, 0x31

    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_78
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_41

    :catch_7c
    move-exception v0

    goto :goto_41

    :catch_7e
    move-exception v0

    move-object v0, v1

    :goto_80
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_41

    :try_start_85
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_41

    :catch_89
    move-exception v0

    goto :goto_41

    :catchall_8b
    move-exception v0

    :goto_8c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_94

    :try_start_91
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_9a

    :cond_94
    :goto_94
    throw v0

    :cond_95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_9a
    move-exception v1

    goto :goto_94

    :catchall_9c
    move-exception v0

    move-object v1, v3

    goto :goto_8c

    :catch_9f
    move-exception v0

    move-object v0, v3

    goto :goto_80

    :cond_a2
    move v0, v2

    goto :goto_75
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v8, 0x5

    const/4 v2, 0x0

    :try_start_2
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    const-wide/16 v0, 0x0

    if-nez v3, :cond_15

    const-string v0, "0:0"

    :goto_14
    return-object v0

    :cond_15
    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/data/system/password.key"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "/data/system/gesture.key"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "/data/system/gatekeeper.password.key"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    const-string v4, "/data/system/gatekeeper.gesture.key"

    aput-object v4, v5, v3

    const/4 v3, 0x4

    const-string v4, "/data/system/gatekeeper.pattern.key"

    aput-object v4, v5, v3

    move v4, v2

    move-wide v2, v0

    :goto_33
    if-ge v4, v8, :cond_4b

    aget-object v6, v5, v4
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_5b

    const-wide/16 v0, -0x1

    :try_start_39
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_41} :catch_5f

    move-result-wide v0

    :goto_42
    :try_start_42
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_33

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_59} :catch_5b

    move-result-object v0

    goto :goto_14

    :catch_5b
    move-exception v0

    const-string v0, ""

    goto :goto_14

    :catch_5f
    move-exception v6

    goto :goto_42
.end method

.method public static t()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const/16 v2, 0x30

    const-string v0, "00"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "BRAND"

    const-string v1, "generic"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BOARD"

    const-string v1, "unknown"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DEVICE"

    const-string v1, "generic"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HARDWARE"

    const-string v1, "goldfish"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PRODUCT"

    const-string v1, "sdk"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MODEL"

    const-string v1, "sdk"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_63
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :goto_7c
    if-eqz v1, :cond_99

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_81} :catch_8a
    .catchall {:try_start_63 .. :try_end_81} :catchall_8f

    move-result v0

    if-eqz v0, :cond_99

    const/16 v0, 0x31

    :goto_86
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_57

    :catch_8a
    move-exception v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_57

    :catchall_8f
    move-exception v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    throw v0

    :cond_94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_99
    move v0, v2

    goto :goto_86

    :cond_9b
    move-object v1, v3

    goto :goto_7c
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3d

    :cond_20
    const/4 v0, 0x1

    :goto_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3f

    const-string v0, "1"

    :goto_2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_21

    :cond_3f
    const-string v0, "0"
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_2a

    :catch_42
    move-exception v0

    const-string v0, ""

    goto :goto_3c
.end method

.method public static u()Ljava/lang/String;
    .registers 7

    const-string v0, "00"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "ro.hardware"

    const-string v1, "goldfish"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.kernel.qemu"

    const-string v1, "1"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.device"

    const-string v1, "generic"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.model"

    const-string v1, "sdk"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.brand"

    const-string v1, "generic"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.name"

    const-string v1, "sdk"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.build.fingerprint"

    const-string v1, "test-keys"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.product.manufacturer"

    const-string v1, "unknow"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x30

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, ""

    invoke-static {v0, v6}, Lcom/alipay/c/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0x31

    :goto_86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8f
    move v0, v2

    goto :goto_86
.end method

.method private static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/alipay/c/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, ""

    :cond_c
    :goto_c
    return-object v1

    :cond_d
    :try_start_d
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_24

    const-string v1, "WIFI"

    goto :goto_c

    :cond_24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_71

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3d

    if-eq v0, v3, :cond_3d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3d

    const/16 v2, 0xb

    if-ne v0, v2, :cond_40

    :cond_3d
    const-string v1, "2G"

    goto :goto_c

    :cond_40
    const/4 v2, 0x3

    if-eq v0, v2, :cond_61

    const/4 v2, 0x5

    if-eq v0, v2, :cond_61

    const/4 v2, 0x6

    if-eq v0, v2, :cond_61

    const/16 v2, 0x8

    if-eq v0, v2, :cond_61

    const/16 v2, 0x9

    if-eq v0, v2, :cond_61

    const/16 v2, 0xa

    if-eq v0, v2, :cond_61

    const/16 v2, 0xc

    if-eq v0, v2, :cond_61

    const/16 v2, 0xe

    if-eq v0, v2, :cond_61

    const/16 v2, 0xf

    if-ne v0, v2, :cond_64

    :cond_61
    const-string v1, "3G"

    goto :goto_c

    :cond_64
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6b

    const-string v1, "4G"

    goto :goto_c

    :cond_6b
    const-string v0, "UNKNOW"
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_6d} :catch_6f

    :goto_6d
    move-object v1, v0

    goto :goto_c

    :catch_6f
    move-exception v0

    goto :goto_c

    :cond_71
    move-object v0, v1

    goto :goto_6d
.end method

.method private static v()Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_70

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-nez v2, :cond_38

    const-string v0, "02:00:00:00:00:00"

    :goto_37
    return-object v0

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_3f
    if-ge v0, v4, :cond_5b

    aget-byte v1, v2, v0

    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_6a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6d} :catch_6f

    move-result-object v0

    goto :goto_37

    :catch_6f
    move-exception v0

    :cond_70
    const-string v0, "02:00:00:00:00:00"

    goto :goto_37
.end method

.method private static w()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_2d
    .catchall {:try_start_3 .. :try_end_8} :catchall_3c

    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_61
    .catchall {:try_start_8 .. :try_end_f} :catchall_5a

    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_64
    .catchall {:try_start_f .. :try_end_1c} :catchall_5f

    move-result-object v0

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_4c

    :goto_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_4e

    :goto_23
    return-object v0

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_50

    :goto_27
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_52

    :cond_2a
    :goto_2a
    const-string v0, ""

    goto :goto_23

    :catch_2d
    move-exception v1

    move-object v1, v0

    :goto_2f
    if-eqz v0, :cond_34

    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_54

    :cond_34
    :goto_34
    if-eqz v1, :cond_2a

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_2a

    :catchall_3c
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_41
    if-eqz v1, :cond_46

    :try_start_43
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_56

    :cond_46
    :goto_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_58

    :cond_4b
    :goto_4b
    throw v0

    :catch_4c
    move-exception v1

    goto :goto_20

    :catch_4e
    move-exception v1

    goto :goto_23

    :catch_50
    move-exception v0

    goto :goto_27

    :catch_52
    move-exception v0

    goto :goto_2a

    :catch_54
    move-exception v0

    goto :goto_34

    :catch_56
    move-exception v1

    goto :goto_46

    :catch_58
    move-exception v1

    goto :goto_4b

    :catchall_5a
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_41

    :catchall_5f
    move-exception v0

    goto :goto_41

    :catch_61
    move-exception v1

    move-object v1, v2

    goto :goto_2f

    :catch_64
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2f
.end method

.method private static x()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v1, "/proc/cpuinfo"

    const-string v0, ""

    :try_start_6
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_42
    .catchall {:try_start_6 .. :try_end_b} :catchall_51

    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_6e
    .catchall {:try_start_b .. :try_end_12} :catchall_69

    :cond_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-static {v2}, Lcom/alipay/c/a/a/a/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    array-length v4, v2

    if-le v4, v6, :cond_12

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string v5, "BogoMIPS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3a} :catch_72
    .catchall {:try_start_12 .. :try_end_3a} :catchall_6c

    move-result-object v0

    :cond_3b
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_5f

    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_61

    :cond_41
    :goto_41
    return-object v0

    :catch_42
    move-exception v1

    move-object v1, v2

    :goto_44
    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_63

    :cond_49
    :goto_49
    if-eqz v1, :cond_41

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_41

    :catch_4f
    move-exception v1

    goto :goto_41

    :catchall_51
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_54
    if-eqz v3, :cond_59

    :try_start_56
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_65

    :cond_59
    :goto_59
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5e} :catch_67

    :cond_5e
    :goto_5e
    throw v0

    :catch_5f
    move-exception v2

    goto :goto_3e

    :catch_61
    move-exception v1

    goto :goto_41

    :catch_63
    move-exception v2

    goto :goto_49

    :catch_65
    move-exception v2

    goto :goto_59

    :catch_67
    move-exception v1

    goto :goto_5e

    :catchall_69
    move-exception v0

    move-object v1, v2

    goto :goto_54

    :catchall_6c
    move-exception v0

    goto :goto_54

    :catch_6e
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_44

    :catch_72
    move-exception v2

    move-object v2, v3

    goto :goto_44
.end method

.method private static y()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v0, ""

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_14} :catch_1a

    move-result-object v0

    :goto_15
    if-nez v0, :cond_10

    const-string v0, ""

    goto :goto_10

    :catch_1a
    move-exception v1

    goto :goto_15
.end method

.method private static z()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    :goto_32
    return-object v0

    :catch_33
    move-exception v0

    :cond_34
    const-string v0, ""

    goto :goto_32
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/c/a/a/b/c;

    invoke-direct {v1, p0}, Lcom/alipay/c/a/a/b/c;-><init>(Lcom/alipay/c/a/a/b/b;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, "1"

    goto :goto_15
.end method
