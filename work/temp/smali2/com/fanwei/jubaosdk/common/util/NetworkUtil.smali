.class public final Lcom/fanwei/jubaosdk/common/util/NetworkUtil;
.super Ljava/lang/Object;


# static fields
.field private static final NETWORK_CLASS_2_G:I = 0x1

.field private static final NETWORK_CLASS_3_G:I = 0x2

.field private static final NETWORK_CLASS_4_G:I = 0x3

.field private static final NETWORK_CLASS_UNAVAILABLE:I = -0x1

.field private static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field private static final NETWORK_CLASS_WIFI:I = -0x65

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field private static final NETWORK_TYPE_UNAVAILABLE:I = -0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field private static final NETWORK_TYPE_WIFI:I = -0x65

.field private static df:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No Instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static IsNetWorkEnable(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_d

    move v0, v1

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    if-ne v0, v2, :cond_27

    const/4 v0, 0x1

    goto :goto_c

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_27
    move v0, v1

    goto :goto_c
.end method

.method public static callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    const-string v0, ""

    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_23} :catch_27

    move-result v2

    if-eqz v2, :cond_1a

    :cond_26
    :goto_26
    return-object v0

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_26
.end method

.method public static format(J)Ljava/lang/String;
    .registers 8

    const/high16 v4, 0x44800000

    const/high16 v3, 0x447a0000

    const-string v1, "B"

    long-to-float v0, p0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1c

    div-float/2addr v0, v4

    const-string v1, "KB"

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1c

    div-float/2addr v0, v4

    const-string v1, "MB"

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1c

    div-float/2addr v0, v4

    const-string v1, "GB"

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->df:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSize(J)Ljava/lang/String;
    .registers 8

    const/high16 v4, 0x44800000

    const/high16 v3, 0x44610000

    const-string v1, "B"

    long-to-float v0, p0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_e

    div-float/2addr v0, v4

    const-string v1, "KB"

    :cond_e
    cmpl-float v2, v0, v3

    if-lez v2, :cond_15

    div-float/2addr v0, v4

    const-string v1, "MB"

    :cond_15
    cmpl-float v2, v0, v3

    if-lez v2, :cond_1c

    div-float/2addr v0, v4

    const-string v1, "GB"

    :cond_1c
    cmpl-float v2, v0, v3

    if-lez v2, :cond_23

    div-float/2addr v0, v4

    const-string v1, "TB"

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->df:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatSizeBySecond(J)Ljava/lang/String;
    .registers 8

    const/high16 v4, 0x44800000

    const/high16 v3, 0x44610000

    const-string v1, "B"

    long-to-float v0, p0

    cmpl-float v2, v0, v3

    if-lez v2, :cond_e

    div-float/2addr v0, v4

    const-string v1, "KB"

    :cond_e
    cmpl-float v2, v0, v3

    if-lez v2, :cond_15

    div-float/2addr v0, v4

    const-string v1, "MB"

    :cond_15
    cmpl-float v2, v0, v3

    if-lez v2, :cond_1c

    div-float/2addr v0, v4

    const-string v1, "GB"

    :cond_1c
    cmpl-float v2, v0, v3

    if-lez v2, :cond_23

    div-float/2addr v0, v4

    const-string v1, "TB"

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->df:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->getNetworkClass(Landroid/content/Context;)I

    move-result v1

    const-string v0, "\u672a\u77e5"

    sparse-switch v1, :sswitch_data_1c

    :goto_9
    return-object v0

    :sswitch_a
    const-string v0, "\u65e0"

    goto :goto_9

    :sswitch_d
    const-string v0, "Wi-Fi"

    goto :goto_9

    :sswitch_10
    const-string v0, "2G"

    goto :goto_9

    :sswitch_13
    const-string v0, "3G"

    goto :goto_9

    :sswitch_16
    const-string v0, "4G"

    goto :goto_9

    :sswitch_19
    const-string v0, "\u672a\u77e5"

    goto :goto_9

    :sswitch_data_1c
    .sparse-switch
        -0x65 -> :sswitch_d
        -0x1 -> :sswitch_a
        0x0 -> :sswitch_19
        0x1 -> :sswitch_10
        0x2 -> :sswitch_13
        0x3 -> :sswitch_16
    .end sparse-switch
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "000000000000000"

    :cond_10
    return-object v0
.end method

.method private static getMacFromCallCmd()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x1

    const-string v0, ""

    const-string v0, "busybox ifconfig"

    const-string v1, "HWaddr"

    invoke-static {v0, v1}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->callCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_15

    :cond_13
    const/4 v0, 0x0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    const-string v1, "HWaddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_14

    const-string v1, "HWaddr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_14

    const-string v0, " "

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private static getNetworkClass(Landroid/content/Context;)I
    .registers 4

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_3a

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_29

    const/16 v0, -0x65

    :goto_24
    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/NetworkUtil;->getNetworkClassByType(I)I

    move-result v0

    return v0

    :cond_29
    if-nez v0, :cond_3e

    :try_start_2b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_36} :catch_3a

    move-result v0

    goto :goto_24

    :cond_38
    const/4 v0, -0x1

    goto :goto_24

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    move v0, v1

    goto :goto_24
.end method

.method private static getNetworkClassByType(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_10

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, -0x1

    goto :goto_4

    :sswitch_7
    const/16 v0, -0x65

    goto :goto_4

    :sswitch_a
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_c
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_e
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_data_10
    .sparse-switch
        -0x65 -> :sswitch_7
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_a
        0x2 -> :sswitch_a
        0x3 -> :sswitch_c
        0x4 -> :sswitch_a
        0x5 -> :sswitch_c
        0x6 -> :sswitch_c
        0x7 -> :sswitch_a
        0x8 -> :sswitch_c
        0x9 -> :sswitch_c
        0xa -> :sswitch_c
        0xb -> :sswitch_a
        0xc -> :sswitch_c
        0xd -> :sswitch_e
        0xe -> :sswitch_c
        0xf -> :sswitch_c
    .end sparse-switch
.end method

.method public static getPhoneImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProvider(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v1, "\u672a\u77e5"

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProvider.IMSI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_7f

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v2, v3, :cond_68

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvider.operator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b5

    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    :cond_65
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    :goto_67
    move-object v1, v0

    :cond_68
    :goto_68
    return-object v1

    :cond_69
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    const-string v0, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_67

    :cond_74
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_67

    :cond_7f
    const-string v0, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "46002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_97

    const-string v0, "46007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    :cond_97
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    goto :goto_68

    :cond_9a
    const-string v0, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_68

    :cond_a5
    const-string v0, "46003"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_af} :catch_b0

    goto :goto_68

    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    :cond_b5
    move-object v0, v1

    goto :goto_67
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .registers 4

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1d

    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method
