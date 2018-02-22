.class public Lcom/vas/vassdk/util/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field protected static final a:Ljava/lang/String; = "device_id.xml"

.field protected static final b:Ljava/lang/String; = "device_id"

.field protected static final c:Ljava/lang/String; = "adinfo_id"

.field protected static d:Ljava/util/UUID; = null

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 199
    const-string v1, "android_id"

    .line 198
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 141
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceUuid(Landroid/content/Context;)Ljava/util/UUID;
    .registers 5

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;

    if-nez v0, :cond_22

    .line 73
    const-class v1, Lcom/vas/vassdk/util/DeviceUtil;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_5a

    .line 74
    :try_start_7
    sget-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;

    if-nez v0, :cond_21

    .line 75
    const-string v0, "device_id.xml"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 76
    const-string v0, "device_id"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_25

    .line 78
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;

    .line 73
    :cond_21
    :goto_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_57

    .line 105
    :cond_22
    :goto_22
    sget-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;

    return-object v0

    .line 80
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    const-string v3, "android_id"

    .line 80
    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_57

    move-result-object v0

    .line 83
    :try_start_2f
    const-string v3, "9774d56d682e549c"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 84
    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_43} :catch_7a
    .catchall {:try_start_2f .. :try_end_43} :catchall_57

    .line 94
    :goto_43
    :try_start_43
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "device_id"

    sget-object v3, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_21

    .line 73
    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5a} :catch_5a

    .line 100
    :catch_5a
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 87
    :cond_5f
    :try_start_5f
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_81

    .line 89
    const-string v3, "utf8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    :goto_77
    sput-object v0, Lcom/vas/vassdk/util/DeviceUtil;->d:Ljava/util/UUID;
    :try_end_79
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5f .. :try_end_79} :catch_7a
    .catchall {:try_start_5f .. :try_end_79} :catchall_57

    goto :goto_43

    .line 91
    :catch_7a
    move-exception v0

    .line 92
    :try_start_7b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_57

    .line 89
    :cond_81
    :try_start_81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_84
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_81 .. :try_end_84} :catch_7a
    .catchall {:try_start_81 .. :try_end_84} :catchall_57

    move-result-object v0

    goto :goto_77
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    .line 64
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_c

    .line 59
    :goto_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    .line 46
    :cond_c
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 48
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 50
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_16

    .line 51
    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_16

    .line 52
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_b

    .line 56
    :catch_35
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public static getLocalIp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 213
    :cond_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_7} :catch_37

    move-result v0

    if-nez v0, :cond_d

    .line 237
    :goto_a
    const-string v0, ""

    :goto_c
    return-object v0

    .line 214
    :cond_d
    :try_start_d
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 215
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 216
    :cond_17
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 218
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_17

    .line 219
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/DeviceUtil;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    instance-of v0, v0, Ljava/net/Inet4Address;
    :try_end_33
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_33} :catch_37

    .line 221
    if-eqz v0, :cond_17

    move-object v0, v1

    .line 222
    goto :goto_c

    .line 234
    :catch_37
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_a
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_13

    .line 36
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getNetType(Landroid/content/Context;)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ServiceCast"
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 154
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_4e

    .line 157
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v1, :cond_19

    move v0, v1

    .line 193
    :goto_18
    return v0

    .line 159
    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4c

    .line 160
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 180
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 182
    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 183
    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_42
    move v0, v2

    .line 184
    goto :goto_18

    .line 166
    :pswitch_44
    const/4 v0, 0x2

    goto :goto_18

    :pswitch_46
    move v0, v2

    .line 176
    goto :goto_18

    .line 178
    :pswitch_48
    const/4 v0, 0x4

    goto :goto_18

    :cond_4a
    move v0, v3

    .line 186
    goto :goto_18

    :cond_4c
    move v0, v3

    .line 190
    goto :goto_18

    .line 193
    :cond_4e
    const/4 v0, 0x0

    goto :goto_18

    .line 160
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_46
        :pswitch_44
        :pswitch_46
        :pswitch_46
        :pswitch_44
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_44
        :pswitch_46
        :pswitch_48
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method public static getSystemVer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 128
    const-string v0, ""

    .line 130
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 132
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_16

    move-result-object v0

    .line 135
    :goto_15
    return-object v0

    .line 133
    :catch_16
    move-exception v1

    goto :goto_15
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 117
    const-string v0, ""

    .line 119
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 121
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    .line 124
    :goto_11
    return-object v0

    .line 122
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
