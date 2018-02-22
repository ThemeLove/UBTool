.class public Lcom/vas/vassdk/util/VasMD5Util;
.super Ljava/lang/Object;
.source "VasMD5Util.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[C


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/vas/vassdk/util/VasMD5Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Util"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vas/vassdk/util/VasMD5Util;->b:Ljava/lang/String;

    .line 220
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/vas/vassdk/util/VasMD5Util;->c:[C

    .line 221
    return-void

    .line 220
    nop

    :array_26
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "2aaa08de964854800c204e400006f45b"

    iput-object v0, p0, Lcom/vas/vassdk/util/VasMD5Util;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static MD5EncryptString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 151
    if-nez p0, :cond_4

    .line 170
    :goto_3
    return-object v0

    .line 158
    :cond_4
    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_13} :catch_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_13} :catch_1e

    move-result-object v0

    .line 170
    :goto_14
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 160
    :catch_19
    move-exception v1

    .line 162
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_14

    .line 164
    :catch_1e
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_14
.end method

.method private static a(Ljava/util/TreeMap;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 143
    sget-object v0, Lcom/vas/vassdk/util/VasMD5Util;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method private a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0}, Lcom/vas/vassdk/util/VasMD5Util;->a([Ljava/lang/String;I)V

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    :goto_9
    array-length v2, p1

    if-lt v0, v2, :cond_11

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_11
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_23

    .line 117
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 121
    :cond_23
    iget-object v2, p0, Lcom/vas/vassdk/util/VasMD5Util;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method private static a([Ljava/lang/String;I)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 178
    if-eqz p0, :cond_d

    array-length v0, p0

    if-lez v0, :cond_d

    move v0, v1

    .line 181
    :goto_8
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_e

    .line 218
    :cond_d
    return-void

    :cond_e
    move v2, v1

    .line 183
    :goto_f
    array-length v3, p0

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_18

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 185
    :cond_18
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_67

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 187
    :goto_36
    if-gt p1, v3, :cond_64

    .line 189
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v3, v4, :cond_64

    .line 191
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_70

    .line 193
    aget-object v3, p0, v2

    .line 194
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v2

    .line 195
    add-int/lit8 v4, v2, 0x1

    aput-object v3, p0, v4

    .line 183
    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 186
    :cond_67
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    .line 199
    :cond_70
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    aget-object v3, p0, v2

    aput-object v3, v4, v1

    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    aput-object v3, v4, v7

    .line 200
    add-int/lit8 v5, p1, 0x1

    .line 202
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v6, v2, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v3, v6, :cond_ad

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 204
    :goto_9b
    if-gt v5, v3, :cond_64

    .line 206
    add-int/lit8 v3, v5, 0x1

    invoke-static {v4, v5}, Lcom/vas/vassdk/util/VasMD5Util;->a([Ljava/lang/String;I)V

    .line 207
    aget-object v3, v4, v1

    aput-object v3, p0, v2

    .line 208
    add-int/lit8 v3, v2, 0x1

    aget-object v4, v4, v7

    aput-object v4, p0, v3

    goto :goto_64

    .line 203
    :cond_ad
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_9b
.end method

.method public static final encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 237
    const-string v1, ""

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MD5 before :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 239
    const/16 v1, 0x10

    new-array v2, v1, [C

    fill-array-data v2, :array_6e

    .line 241
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 243
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 245
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 249
    array-length v4, v3

    .line 250
    mul-int/lit8 v1, v4, 0x2

    new-array v5, v1, [C

    move v1, v0

    .line 252
    :goto_33
    if-lt v0, v4, :cond_51

    .line 257
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MD5 after :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V

    .line 262
    :goto_50
    return-object v0

    .line 253
    :cond_51
    aget-byte v6, v3, v0

    .line 254
    add-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v2, v8

    aput-char v8, v5, v1

    .line 255
    add-int/lit8 v1, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v2, v6

    aput-char v6, v5, v7
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_65} :catch_68

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 260
    :catch_68
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    const/4 v0, 0x0

    goto :goto_50

    .line 239
    :array_6e
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static toHexString([B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    const/4 v0, 0x0

    :goto_9
    array-length v2, p0

    if-lt v0, v2, :cond_11

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_11
    sget-object v2, Lcom/vas/vassdk/util/VasMD5Util;->c:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    sget-object v2, Lcom/vas/vassdk/util/VasMD5Util;->c:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method public MD5EncryptString(Ljava/util/TreeMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object p2, p0, Lcom/vas/vassdk/util/VasMD5Util;->a:Ljava/lang/String;

    .line 76
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_d

    .line 101
    :cond_c
    :goto_c
    return-object v0

    .line 83
    :cond_d
    :try_start_d
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/vas/vassdk/util/VasMD5Util;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MD5 before:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vas/vassdk/util/VasMD5Util;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SIGN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vas/vassdk/util/VASLogUtil;->d(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_60} :catch_65
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_60} :catch_6a

    .line 101
    :goto_60
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 91
    :catch_65
    move-exception v1

    .line 93
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_60

    .line 95
    :catch_6a
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_60
.end method

.method public MD5EncryptString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 20
    iput-object p2, p0, Lcom/vas/vassdk/util/VasMD5Util;->a:Ljava/lang/String;

    .line 21
    if-nez p1, :cond_6

    .line 45
    :goto_5
    return-object v0

    .line 28
    :cond_6
    :try_start_6
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 29
    invoke-direct {p0, p1}, Lcom/vas/vassdk/util/VasMD5Util;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 30
    const-string v1, "sign"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/vas/vassdk/util/VasMD5Util;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--sign:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_44} :catch_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_44} :catch_4e

    .line 45
    :goto_44
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 35
    :catch_49
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_44

    .line 39
    :catch_4e
    move-exception v1

    .line 42
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_44
.end method

.method public MD5EncryptString1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 56
    :try_start_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result-object v0

    .line 69
    :goto_11
    invoke-static {v0}, Lcom/vas/vassdk/util/VasMD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :catch_16
    move-exception v1

    .line 61
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_11

    .line 63
    :catch_1b
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_11
.end method
