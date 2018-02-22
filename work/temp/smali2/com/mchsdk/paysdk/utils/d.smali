.class public Lcom/mchsdk/paysdk/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/lidroid/xutils/BitmapUtils;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/lidroid/xutils/BitmapUtils;
    .registers 2

    sget-object v0, Lcom/mchsdk/paysdk/utils/d;->a:Lcom/lidroid/xutils/BitmapUtils;

    if-nez v0, :cond_b

    new-instance v0, Lcom/lidroid/xutils/BitmapUtils;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/BitmapUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mchsdk/paysdk/utils/d;->a:Lcom/lidroid/xutils/BitmapUtils;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/utils/d;->a:Lcom/lidroid/xutils/BitmapUtils;

    return-object v0
.end method
