.class final Lcom/mchsdk/paysdk/view/util/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/view/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:[C

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->a:[C

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    return-void

    nop

    :array_12
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
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method private static a(I)I
    .registers 5

    const/16 v3, 0x100

    sget-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/2addr v0, p0

    sget-object v1, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    div-int/2addr v1, p0

    sget-object v2, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    div-int/2addr v2, p0

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static a(II)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v1, 0x0

    sput v1, Lcom/mchsdk/paysdk/view/util/b$a;->c:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_14
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2a

    sget-object v5, Lcom/mchsdk/paysdk/view/util/b$a;->a:[C

    sget-object v6, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    sget-object v7, Lcom/mchsdk/paysdk/view/util/b$a;->a:[C

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x41f00000

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    move v0, v1

    :goto_3f
    sget-object v5, Lcom/mchsdk/paysdk/view/util/b$a;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_8a

    invoke-static {v4}, Lcom/mchsdk/paysdk/view/util/b$a;->a(Landroid/graphics/Paint;)V

    sget v5, Lcom/mchsdk/paysdk/view/util/b$a;->c:I

    sget-object v6, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    sput v5, Lcom/mchsdk/paysdk/view/util/b$a;->c:I

    sget-object v5, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    sput v5, Lcom/mchsdk/paysdk/view/util/b$a;->d:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mchsdk/paysdk/view/util/b$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/mchsdk/paysdk/view/util/b$a;->c:I

    int-to-float v6, v6

    sget v7, Lcom/mchsdk/paysdk/view/util/b$a;->d:I

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_8a
    :goto_8a
    const/4 v0, 0x3

    if-ge v1, v0, :cond_93

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/view/util/b$a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_93
    const/16 v0, 0x1f

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v2
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8

    const/16 v4, 0x3c

    const/16 v5, 0x1e

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mchsdk/paysdk/view/util/b$a;->a(I)I

    move-result v0

    sget-object v1, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sget-object v3, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    const/high16 v5, 0x3f800000

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static a(Landroid/graphics/Paint;)V
    .registers 4

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mchsdk/paysdk/view/util/b$a;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v0, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sget-object v1, Lcom/mchsdk/paysdk/view/util/b$a;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_2e

    :goto_24
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    return-void

    :cond_2e
    neg-float v0, v0

    goto :goto_24
.end method
