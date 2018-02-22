.class public Lcom/vas/vassdk/util/VasStatisticUtil;
.super Ljava/lang/Object;
.source "VasStatisticUtil.java"


# static fields
.field public static final ACTIVE:Ljava/lang/String; = "502"

.field public static final ACTIVE_NAME:Ljava/lang/String; = "vasunisdk"

.field public static final APP:Ljava/lang/String; = "unisdk"

.field public static final ENTERGAME:Ljava/lang/String; = "504"

.field public static final FIRST_ACTIVE:Ljava/lang/String; = "501"

.field public static final LOGIN:Ljava/lang/String; = "503"

.field public static final REQUEST_CODE:I = 0xa

.field public static final STATISTICURL:Ljava/lang/String; = "http://tj.g.pptv.com/data/1.php?"

.field public static final VER:Ljava/lang/String; = "1.0.0"

.field private static final a:Lcom/vas/vassdk/util/Base64Encoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Lcom/vas/vassdk/util/Base64Encoder;

    invoke-direct {v0}, Lcom/vas/vassdk/util/Base64Encoder;-><init>()V

    sput-object v0, Lcom/vas/vassdk/util/VasStatisticUtil;->a:Lcom/vas/vassdk/util/Base64Encoder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    if-eqz p0, :cond_17

    .line 101
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 127
    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-nez v1, :cond_4b

    .line 107
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    :goto_29
    :try_start_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_47} :catch_51

    .line 123
    :goto_47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 111
    :cond_4b
    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 118
    :catch_51
    move-exception v0

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VasStatisticUtil "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 53
    const-string v2, "pplive_vas"

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 56
    const/4 v0, 0x0

    .line 60
    :try_start_7
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_c} :catch_2e

    move-result-object v0

    .line 66
    :goto_d
    array-length v1, v0

    new-array v4, v1, [B

    .line 68
    const/4 v1, 0x0

    :goto_11
    array-length v5, v0

    if-lt v1, v5, :cond_1e

    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-static {v4}, Lcom/vas/vassdk/util/VasStatisticUtil;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 70
    :cond_1e
    rem-int v5, v1, v3

    .line 71
    aget-byte v6, v0, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 62
    :catch_2e
    move-exception v1

    goto :goto_d
.end method

.method private static a([B)[B
    .registers 5

    .prologue
    .line 80
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 81
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 85
    :try_start_c
    sget-object v0, Lcom/vas/vassdk/util/VasStatisticUtil;->a:Lcom/vas/vassdk/util/Base64Encoder;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/vas/vassdk/util/Base64Encoder;->encode([BIILjava/io/OutputStream;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_18

    .line 92
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 87
    :catch_18
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception encoding base64 string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static sendStatistic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 132
    invoke-static {}, Lcom/vas/vassdk/VasSDK;->getInstance()Lcom/vas/vassdk/VasSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vas/vassdk/VasSDK;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 134
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 140
    const-string v1, ""

    .line 144
    :cond_1c
    invoke-static {v0, v2}, Lcom/vas/vassdk/util/NetworkUtils;->networkType(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 146
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 147
    const-string v0, "window"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 148
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 149
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 152
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v6, "app"

    const-string v7, "unisdk"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v6, "uid"

    invoke-virtual {v5, v6, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v6, "puid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/vas/vassdk/util/DeviceUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "cid"

    sget-object v6, Lcom/vas/vassdk/VasSDKConfig;->VAS_PLATFORMID:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "ccid"

    sget-object v6, Lcom/vas/vassdk/VasSDKConfig;->VAS_SUBPLATFORMID:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "gid"

    sget-object v6, Lcom/vas/vassdk/VasSDKConfig;->VAS_GAMEID:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "ver"

    const-string v6, "1.0.0"

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "evt"

    invoke-virtual {v5, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "_st"

    const-string v6, "Android"

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "_sv"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "_sr"

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v6, 0x2a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "_nt"

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "_np"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "_spm"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "_spv"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {v5}, Lcom/vas/vassdk/util/VasStatisticUtil;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vas/vassdk/util/VasStatisticUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/yolanda/nohttp/rest/StringRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://tj.g.pptv.com/data/1.php?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/yolanda/nohttp/RequestMethod;->GET:Lcom/yolanda/nohttp/RequestMethod;

    invoke-direct {v1, v0, v2}, Lcom/yolanda/nohttp/rest/StringRequest;-><init>(Ljava/lang/String;Lcom/yolanda/nohttp/RequestMethod;)V

    .line 173
    invoke-static {}, Lcom/vas/vassdk/http/VasHttpUtil;->getInstance()Lcom/vas/vassdk/http/VasHttpUtil;

    move-result-object v0

    const/16 v2, 0xa

    new-instance v3, Lcom/vas/vassdk/util/VasStatisticUtil$1;

    invoke-direct {v3}, Lcom/vas/vassdk/util/VasStatisticUtil$1;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/vas/vassdk/http/VasHttpUtil;->add(ILcom/yolanda/nohttp/rest/Request;Lcom/yolanda/nohttp/rest/OnResponseListener;)V

    .line 204
    return-void
.end method
