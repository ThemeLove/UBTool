.class public Lcom/mchsdk/paysdk/view/util/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/view/util/b$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(II)Landroid/graphics/Bitmap;
    .registers 4

    const-class v0, Lcom/mchsdk/paysdk/view/util/b;

    monitor-enter v0

    :try_start_3
    invoke-static {p0, p1}, Lcom/mchsdk/paysdk/view/util/b$a;->a(II)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/mchsdk/paysdk/view/util/b;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/mchsdk/paysdk/view/util/b$a;->a()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;II)Ljava/lang/String;
    .registers 6

    const-string v0, "imageview"

    invoke-static {p1, v0}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    :cond_22
    invoke-static {p2, p3}, Lcom/mchsdk/paysdk/view/util/b;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/util/b;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/util/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/mchsdk/paysdk/view/util/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
