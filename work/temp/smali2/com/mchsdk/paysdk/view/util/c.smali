.class public Lcom/mchsdk/paysdk/view/util/c;
.super Lcom/mchsdk/paysdk/view/util/f;


# static fields
.field private static a:Lcom/mchsdk/paysdk/view/util/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/mchsdk/paysdk/view/util/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/view/util/f;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/view/util/c;->a:Lcom/mchsdk/paysdk/view/util/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/view/util/c;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/view/util/c;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/view/util/c;->a:Lcom/mchsdk/paysdk/view/util/c;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/view/util/c;->a:Lcom/mchsdk/paysdk/view/util/c;

    return-object v0
.end method
