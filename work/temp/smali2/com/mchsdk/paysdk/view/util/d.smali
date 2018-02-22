.class public Lcom/mchsdk/paysdk/view/util/d;
.super Lcom/mchsdk/paysdk/view/util/f;


# static fields
.field private static a:Lcom/mchsdk/paysdk/view/util/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/util/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/view/util/f;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/view/util/d;->a:Lcom/mchsdk/paysdk/view/util/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/view/util/d;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/view/util/d;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/view/util/d;->a:Lcom/mchsdk/paysdk/view/util/d;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/view/util/d;->a:Lcom/mchsdk/paysdk/view/util/d;

    return-object v0
.end method
