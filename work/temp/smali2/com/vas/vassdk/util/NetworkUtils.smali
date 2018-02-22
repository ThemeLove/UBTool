.class public Lcom/vas/vassdk/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final a:Ljava/lang/String; = "VasSDK-NetworkUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 300
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 301
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 308
    :goto_10
    return-object v0

    .line 304
    :catch_11
    move-exception v0

    .line 306
    const-string v1, "VasSDK-NetworkUtils"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const-string v0, ""

    goto :goto_10
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 329
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_46
    .catchall {:try_start_6 .. :try_end_b} :catchall_50

    .line 334
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 335
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    const-string v4, "0*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_36} :catch_61
    .catchall {:try_start_b .. :try_end_36} :catchall_5f

    move-result v3

    if-eqz v3, :cond_3f

    .line 354
    if-eqz v2, :cond_3e

    .line 358
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_59

    .line 365
    :cond_3e
    :goto_3e
    return-object v0

    .line 354
    :cond_3f
    if-eqz v2, :cond_44

    .line 358
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_5b

    :cond_44
    :goto_44
    move-object v0, v1

    .line 347
    goto :goto_3e

    .line 349
    :catch_46
    move-exception v1

    move-object v1, v0

    .line 354
    :goto_48
    if-eqz v1, :cond_3e

    .line 358
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_3e

    .line 360
    :catch_4e
    move-exception v1

    goto :goto_3e

    .line 353
    :catchall_50
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 354
    :goto_53
    if-eqz v2, :cond_58

    .line 358
    :try_start_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5d

    .line 364
    :cond_58
    :goto_58
    throw v0

    .line 360
    :catch_59
    move-exception v1

    goto :goto_3e

    :catch_5b
    move-exception v0

    goto :goto_44

    :catch_5d
    move-exception v1

    goto :goto_58

    .line 353
    :catchall_5f
    move-exception v0

    goto :goto_53

    .line 349
    :catch_61
    move-exception v1

    move-object v1, v2

    goto :goto_48
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 233
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 239
    :goto_c
    return-object v0

    .line 235
    :catch_d
    move-exception v0

    .line 237
    const-string v1, "VasSDK-NetworkUtils"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    const-string v0, ""

    goto :goto_c
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 201
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c

    .line 223
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 203
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 204
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 205
    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 210
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 212
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_37

    move-result-object v0

    goto :goto_b

    .line 219
    :catch_37
    move-exception v0

    .line 221
    const-string v1, "VasSDK-NetworkUtils"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 313
    const-string v0, "/sys/class/net/eth0/address"

    invoke-static {v0}, Lcom/vas/vassdk/util/NetworkUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 316
    const-string v0, "/sys/class/net/wlan0/address"

    invoke-static {v0}, Lcom/vas/vassdk/util/NetworkUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 321
    invoke-static {p0}, Lcom/vas/vassdk/util/NetworkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :cond_1c
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 93
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    if-nez v0, :cond_13

    .line 96
    const-string v0, "VasSDK-NetworkUtils"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_11
    :goto_11
    const/4 v0, -0x1

    :goto_12
    return v0

    .line 100
    :cond_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_11

    .line 103
    const/4 v0, 0x0

    :goto_1a
    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 105
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2e

    .line 108
    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_31

    move-result v0

    goto :goto_12

    .line 103
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 115
    :catch_31
    move-exception v0

    .line 117
    const-string v1, "VasSDK-NetworkUtils"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 132
    invoke-static {p0}, Lcom/vas/vassdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/vas/vassdk/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 48
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    if-nez v0, :cond_12

    .line 51
    const-string v0, "VasSDK-NetworkUtilscouldn\'t get connectivity manager"

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;)V

    :cond_10
    :goto_10
    move v0, v1

    .line 79
    :goto_11
    return v0

    .line 55
    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_10

    move v0, v1

    .line 58
    :goto_19
    array-length v3, v2

    if-ge v0, v3, :cond_10

    .line 60
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_2b

    if-ne v3, v4, :cond_28

    .line 66
    const/4 v0, 0x1

    goto :goto_11

    .line 58
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 72
    :catch_2b
    move-exception v0

    .line 74
    const-string v2, "VasSDK-NetworkUtils"

    invoke-static {v2, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 158
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    if-nez v0, :cond_13

    .line 161
    const-string v0, "VasSDK-NetworkUtils"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_11
    :goto_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 165
    :cond_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 167
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_11

    .line 169
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2f

    move-result v0

    if-eqz v0, :cond_11

    .line 172
    const/4 v0, 0x1

    goto :goto_12

    .line 186
    :catch_2f
    move-exception v0

    .line 188
    const-string v1, "VasSDK-NetworkUtils"

    invoke-static {v1, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static isPortUsed(I)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 245
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "netstat"

    aput-object v4, v2, v1

    const-string v4, "-an"

    aput-object v4, v2, v0

    .line 252
    :try_start_e
    const-string v4, ""

    .line 253
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_64
    .catchall {:try_start_e .. :try_end_17} :catchall_83

    move-result-object v5

    .line 256
    :try_start_18
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_b2
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a5

    move-result-object v4

    .line 257
    :try_start_1c
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_b6
    .catchall {:try_start_1c .. :try_end_21} :catchall_a9

    .line 258
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_bb
    .catchall {:try_start_21 .. :try_end_24} :catchall_ac

    move-result-object v3

    if-nez v3, :cond_38

    .line 275
    if-eqz v2, :cond_2c

    .line 277
    :try_start_29
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 279
    :cond_2c
    if-eqz v4, :cond_31

    .line 281
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 283
    :cond_31
    if-eqz v5, :cond_36

    .line 285
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_36} :catch_9e

    :cond_36
    :goto_36
    move v0, v1

    .line 293
    :cond_37
    :goto_37
    return v0

    .line 261
    :cond_38
    :try_start_38
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4a} :catch_bb
    .catchall {:try_start_38 .. :try_end_4a} :catchall_ac

    move-result v3

    if-eqz v3, :cond_21

    .line 275
    if-eqz v2, :cond_52

    .line 277
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 279
    :cond_52
    if-eqz v4, :cond_57

    .line 281
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 283
    :cond_57
    if-eqz v5, :cond_37

    .line 285
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5c} :catch_5d

    goto :goto_37

    .line 288
    :catch_5d
    move-exception v1

    .line 290
    const-string v2, "VasSDK-NetworkUtils"

    invoke-static {v2, v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 267
    :catch_64
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 269
    :goto_67
    :try_start_67
    const-string v5, "VasSDK-NetworkUtils"

    invoke-static {v5, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_ae

    .line 275
    if-eqz v2, :cond_71

    .line 277
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 279
    :cond_71
    if-eqz v3, :cond_76

    .line 281
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 283
    :cond_76
    if-eqz v4, :cond_36

    .line 285
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7b} :catch_7c

    goto :goto_36

    .line 288
    :catch_7c
    move-exception v0

    .line 290
    const-string v2, "VasSDK-NetworkUtils"

    invoke-static {v2, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    .line 272
    :catchall_83
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 275
    :goto_87
    if-eqz v2, :cond_8c

    .line 277
    :try_start_89
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 279
    :cond_8c
    if-eqz v4, :cond_91

    .line 281
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 283
    :cond_91
    if-eqz v5, :cond_96

    .line 285
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_96} :catch_97

    .line 292
    :cond_96
    :goto_96
    throw v0

    .line 288
    :catch_97
    move-exception v1

    .line 290
    const-string v2, "VasSDK-NetworkUtils"

    invoke-static {v2, v1}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_96

    .line 288
    :catch_9e
    move-exception v0

    .line 290
    const-string v2, "VasSDK-NetworkUtils"

    invoke-static {v2, v0}, Lcom/vas/vassdk/util/VASLogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    .line 272
    :catchall_a5
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto :goto_87

    :catchall_a9
    move-exception v0

    move-object v2, v3

    goto :goto_87

    :catchall_ac
    move-exception v0

    goto :goto_87

    :catchall_ae
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    goto :goto_87

    .line 267
    :catch_b2
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    goto :goto_67

    :catch_b6
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_67

    :catch_bb
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto :goto_67
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 144
    invoke-static {p0}, Lcom/vas/vassdk/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0}, Lcom/vas/vassdk/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static networkType(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 379
    .line 380
    invoke-static {p1}, Lcom/vas/vassdk/util/NetworkUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 382
    const-string v0, "wifi"

    .line 404
    :goto_8
    return-object v0

    .line 386
    :cond_9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 388
    const-string v0, "EDGE"

    goto :goto_8

    .line 390
    :cond_13
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 392
    const-string v0, "GPRS"

    goto :goto_8

    .line 394
    :cond_1d
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    .line 396
    const-string v0, "CDMA"

    goto :goto_8

    .line 400
    :cond_27
    const-string v0, "3G"

    goto :goto_8
.end method
