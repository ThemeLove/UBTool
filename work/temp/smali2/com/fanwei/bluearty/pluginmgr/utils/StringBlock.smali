.class Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;
.super Ljava/lang/Object;


# static fields
.field private static final CHUNK_TYPE:I = 0x1c0001


# instance fields
.field private m_stringOffsets:[I

.field private m_strings:[I

.field private m_styleOffsets:[I

.field private m_styles:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getShort([II)I
    .registers 4

    div-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    rem-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_f

    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_e
    return v0

    :cond_f
    ushr-int/lit8 v0, v0, 0x10

    goto :goto_e
.end method

.method private getStyle(I)[I
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styleOffsets:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styleOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_12

    :cond_10
    move-object v0, v4

    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styleOffsets:[I

    aget v0, v0, p1

    div-int/lit8 v1, v0, 0x4

    move v0, v1

    move v2, v3

    :goto_1a
    iget-object v5, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    array-length v5, v5

    if-ge v0, v5, :cond_25

    iget-object v5, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    aget v5, v5, v0

    if-ne v5, v6, :cond_2d

    :cond_25
    if-eqz v2, :cond_2b

    rem-int/lit8 v0, v2, 0x3

    if-eqz v0, :cond_32

    :cond_2b
    move-object v0, v4

    goto :goto_11

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_32
    new-array v4, v2, [I

    :goto_34
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    array-length v0, v0

    if-ge v1, v0, :cond_3f

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    aget v0, v0, v1

    if-ne v0, v6, :cond_41

    :cond_3f
    move-object v0, v4

    goto :goto_11

    :cond_41
    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    add-int/lit8 v2, v1, 0x1

    aget v1, v5, v1

    aput v1, v4, v3

    move v3, v0

    move v1, v2

    goto :goto_34
.end method

.method public static read(Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;)Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;
    .registers 7

    const v0, 0x1c0001

    invoke-static {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/XmlResourceParser;->readCheckType(Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;I)V

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v4

    invoke-virtual {p0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readInt()I

    move-result v2

    new-instance v5, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;

    invoke-direct {v5}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    if-eqz v3, :cond_30

    invoke-virtual {p0, v3}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styleOffsets:[I

    :cond_30
    if-nez v2, :cond_57

    move v0, v1

    :goto_33
    sub-int/2addr v0, v4

    rem-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_59

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_57
    move v0, v2

    goto :goto_33

    :cond_59
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_strings:[I

    if-eqz v2, :cond_90

    sub-int v0, v1, v2

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_88

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style data size is not multiple of 4 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_88
    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/fanwei/bluearty/pluginmgr/utils/IntReader;->readIntArray(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_styles:[I

    :cond_90
    return-object v5
.end method


# virtual methods
.method public find(Ljava/lang/String;)I
    .registers 10

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_6

    move v0, v2

    :goto_5
    return v0

    :cond_6
    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    array-length v3, v3

    if-eq v0, v3, :cond_37

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_strings:[I

    invoke-static {v4, v3}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getShort([II)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v5, v4, :cond_1f

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    move v4, v3

    move v3, v1

    :goto_21
    if-eq v3, v5, :cond_31

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_strings:[I

    invoke-static {v7, v4}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getShort([II)I

    move-result v7

    if-eq v6, v7, :cond_34

    :cond_31
    if-ne v3, v5, :cond_1c

    goto :goto_5

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_37
    move v0, v2

    goto :goto_5
.end method

.method public get(I)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getHTML(I)Ljava/lang/String;
    .registers 15

    const/16 v12, 0x3e

    const/16 v11, 0x3c

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    move-object v0, v6

    :goto_d
    return-object v0

    :cond_e
    invoke-direct {p0, p1}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getStyle(I)[I

    move-result-object v7

    if-nez v7, :cond_16

    move-object v0, v6

    goto :goto_d

    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_22
    move v2, v1

    move v3, v4

    :goto_24
    array-length v5, v7

    if-eq v2, v5, :cond_3e

    add-int/lit8 v5, v2, 0x1

    aget v5, v7, v5

    if-ne v5, v4, :cond_30

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x3

    goto :goto_24

    :cond_30
    if-eq v3, v4, :cond_3c

    add-int/lit8 v5, v3, 0x1

    aget v5, v7, v5

    add-int/lit8 v9, v2, 0x1

    aget v9, v7, v9

    if-le v5, v9, :cond_2d

    :cond_3c
    move v3, v2

    goto :goto_2d

    :cond_3e
    if-eq v3, v4, :cond_54

    add-int/lit8 v2, v3, 0x1

    aget v2, v7, v2

    :goto_44
    move v5, v0

    move v0, v1

    :goto_46
    array-length v9, v7

    if-eq v0, v9, :cond_7b

    add-int/lit8 v9, v0, 0x2

    aget v9, v7, v9

    if-eq v9, v4, :cond_51

    if-lt v9, v2, :cond_59

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x3

    goto :goto_46

    :cond_54
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_44

    :cond_59
    if-gt v5, v9, :cond_62

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v8, v6, v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v9, 0x1

    :cond_62
    add-int/lit8 v9, v0, 0x2

    aput v4, v7, v9

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v9, v7, v0

    invoke-virtual {p0, v9}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    :cond_7b
    if-ge v5, v2, :cond_9c

    invoke-virtual {v8, v6, v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v0, v2

    :goto_81
    if-ne v3, v4, :cond_88

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_88
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v2, v7, v3

    invoke-virtual {p0, v2}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    aput v4, v7, v2

    goto :goto_22

    :cond_9c
    move v0, v5

    goto :goto_81
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6

    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    array-length v0, v0

    if-lt p1, v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_stringOffsets:[I

    aget v1, v0, p1

    iget-object v0, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_strings:[I

    invoke-static {v0, v1}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getShort([II)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1c
    if-eqz v0, :cond_2d

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->m_strings:[I

    invoke-static {v3, v1}, Lcom/fanwei/bluearty/pluginmgr/utils/StringBlock;->getShort([II)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
