.class public Lcom/fanwei/jubaosdk/common/util/MD5Utils;
.super Ljava/lang/Object;


# static fields
.field private static final ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static hexDigits:[C

.field private static messagedigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->hexDigits:[C

    const/4 v0, 0x0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->messagedigest:Ljava/security/MessageDigest;

    :try_start_c
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->messagedigest:Ljava/security/MessageDigest;
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_14

    :array_1a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .registers 5

    sget-object v0, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->hexDigits:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    sget-object v1, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->hexDigits:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int v1, p1, p2

    :goto_9
    if-ge p1, v1, :cond_13

    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->appendHexPair(BLjava/lang/StringBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_4b
    .catchall {:try_start_1 .. :try_end_6} :catchall_3c

    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [B

    :goto_a
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2c

    sget-object v3, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->messagedigest:Ljava/security/MessageDigest;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_17} :catch_18
    .catchall {:try_start_8 .. :try_end_17} :catchall_49

    goto :goto_a

    :catch_18
    move-exception v0

    :goto_19
    :try_start_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_49

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_37

    :cond_21
    :goto_21
    sget-object v0, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->messagedigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/fanwei/jubaosdk/common/util/MD5Utils;->bufferToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    if-eqz v1, :cond_21

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_21

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    :catchall_3c
    move-exception v0

    move-object v1, v2

    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    throw v0

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catchall_49
    move-exception v0

    goto :goto_3e

    :catch_4b
    move-exception v0

    move-object v1, v2

    goto :goto_19
.end method
