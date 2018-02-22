.class public Lcom/lidroid/xutils/bitmap/core/BitmapSize;
.super Ljava/lang/Object;


# static fields
.field public static final ZERO:Lcom/lidroid/xutils/bitmap/core/BitmapSize;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v0, v1, v1}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    sput-object v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->ZERO:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->width:I

    iput p2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->height:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->width:I

    return v0
.end method

.method public scale(F)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 5

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object v0
.end method

.method public scaleDown(I)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .registers 5

    new-instance v0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->width:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->height:I

    div-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
