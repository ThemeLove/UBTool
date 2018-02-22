.class Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_XML:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final DIMENSION_UNITS:[Ljava/lang/String;

.field private static final FRACTION_UNITS:[Ljava/lang/String;

.field private static final RADIX_MULTS:[F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    new-array v0, v3, [F

    fill-array-data v0, :array_60

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->RADIX_MULTS:[F

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "px"

    aput-object v1, v0, v4

    const-string v1, "dip"

    aput-object v1, v0, v5

    const-string v1, "sp"

    aput-object v1, v0, v6

    const-string v1, "pt"

    aput-object v1, v0, v7

    const-string v1, "in"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "mm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->DIMENSION_UNITS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%"

    aput-object v1, v0, v4

    const-string v1, "%p"

    aput-object v1, v0, v5

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->FRACTION_UNITS:[Ljava/lang/String;

    return-void

    nop

    :array_60
    .array-data 4
        0x3b800000
        0x38000001
        0x34000001
        0x30000000
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static complexToFloat(I)F
    .registers 4

    and-int/lit16 v0, p0, -0x100

    int-to-float v0, v0

    sget-object v1, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->RADIX_MULTS:[F

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static getAttributeValue(Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;I)Ljava/lang/String;
    .registers 9

    const/16 v6, 0x1f

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributeValueType(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributeValueData(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    if-ne v0, v3, :cond_2c

    const-string v0, "?%s%08X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getPackage(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_2c
    if-ne v0, v4, :cond_43

    const-string v0, "@%s%08X"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getPackage(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_43
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4f

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_4f
    const/16 v2, 0x11

    if-ne v0, v2, :cond_62

    const-string v0, "0x%08X"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_62
    const/16 v2, 0x12

    if-ne v0, v2, :cond_6e

    if-eqz v1, :cond_6b

    const-string v0, "true"

    goto :goto_14

    :cond_6b
    const-string v0, "false"

    goto :goto_14

    :cond_6e
    const/4 v2, 0x5

    if-ne v0, v2, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->complexToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->DIMENSION_UNITS:[Ljava/lang/String;

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_91
    const/4 v2, 0x6

    if-ne v0, v2, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->complexToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->FRACTION_UNITS:[Ljava/lang/String;

    and-int/lit8 v1, v1, 0xf

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_b5
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_cb

    if-gt v0, v6, :cond_cb

    const-string v0, "#%08X"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_cb
    const/16 v2, 0x10

    if-lt v0, v2, :cond_d7

    if-gt v0, v6, :cond_d7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_d7
    const-string v2, "<0x%X, type 0x%02X>"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14
.end method

.method public static getManifestXMLFromAPK(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/zip/ZipFile;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_21
    .catchall {:try_start_1 .. :try_end_c} :catchall_31

    :try_start_c
    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getManifestXMLFromAPK(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_41
    .catchall {:try_start_c .. :try_end_15} :catchall_3f

    move-result-object v0

    if-eqz v2, :cond_1b

    :try_start_18
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-object v0

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :catch_21
    move-exception v1

    move-object v2, v0

    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3f

    if-eqz v2, :cond_1b

    :try_start_28
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1b

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    :catchall_31
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_34
    if-eqz v2, :cond_39

    :try_start_36
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    throw v0

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    :catchall_3f
    move-exception v0

    goto :goto_34

    :catch_41
    move-exception v1

    goto :goto_23
.end method

.method public static getManifestXMLFromAPK(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x1

    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :try_start_a
    new-instance v1, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;

    invoke-direct {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_122
    .catchall {:try_start_a .. :try_end_f} :catchall_11f

    :try_start_f
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->open(Ljava/io/InputStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "\t"

    :goto_1f
    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v11, :cond_11a

    packed-switch v0, :pswitch_data_126

    :pswitch_28
    goto :goto_1f

    :pswitch_29
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_31} :catch_32
    .catchall {:try_start_f .. :try_end_31} :catchall_d4

    goto :goto_1f

    :catch_32
    move-exception v0

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_d4

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->close()V

    :goto_39
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3e
    const/4 v0, 0x0

    :try_start_3f
    const-string v4, "%s<%s%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v0, v6, v4, v5}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(ZLjava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\t"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getDepth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getNamespaceCount(I)I

    move-result v5

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getDepth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getNamespaceCount(I)I

    move-result v7

    move v4, v5

    :goto_74
    if-eq v4, v7, :cond_99

    const-string v8, "%sxmlns:%s=\"%s\""

    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-ne v4, v5, :cond_97

    const-string v0, "  "

    :goto_80
    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-virtual {v1, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v6, v8, v9}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_74

    :cond_97
    move-object v0, v2

    goto :goto_80

    :cond_99
    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributeCount()I

    move-result v4

    move v0, v3

    :goto_9e
    if-eq v0, v4, :cond_ca

    const/4 v5, 0x0

    const-string v7, "%s%s%s=\"%s\""

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, " "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v1, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getAttributeValue(Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(ZLjava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_ca
    const-string v0, ">"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_d2} :catch_32
    .catchall {:try_start_3f .. :try_end_d2} :catchall_d4

    goto/16 :goto_1f

    :catchall_d4
    move-exception v0

    :goto_d5
    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->close()V

    throw v0

    :pswitch_d9
    :try_start_d9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v4, "\t"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "%s</%s%s>"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v0, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1f

    :pswitch_106
    const-string v0, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v6, v0, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_118} :catch_32
    .catchall {:try_start_d9 .. :try_end_118} :catchall_d4

    goto/16 :goto_1f

    :cond_11a
    invoke-virtual {v1}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->close()V

    goto/16 :goto_39

    :catchall_11f
    move-exception v0

    move-object v1, v2

    goto :goto_d5

    :catch_122
    move-exception v0

    move-object v1, v2

    goto/16 :goto_33

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_3e
        :pswitch_d9
        :pswitch_106
    .end packed-switch
.end method

.method private static getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static getPackage(I)Ljava/lang/String;
    .registers 3

    ushr-int/lit8 v0, p0, 0x18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "android:"

    :goto_7
    return-object v0

    :cond_8
    const-string v0, ""

    goto :goto_7
.end method

.method private static varargs log(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlManifestReader;->log(ZLjava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log(ZLjava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_e

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    return-void
.end method
