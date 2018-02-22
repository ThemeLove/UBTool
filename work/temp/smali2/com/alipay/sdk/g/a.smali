.class public final enum Lcom/alipay/sdk/g/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/sdk/g/a;

.field public static final enum b:Lcom/alipay/sdk/g/a;

.field public static final enum c:Lcom/alipay/sdk/g/a;

.field private static final synthetic e:[Lcom/alipay/sdk/g/a;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/sdk/g/a;

    const-string v1, "None"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/sdk/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/g/a;->a:Lcom/alipay/sdk/g/a;

    new-instance v0, Lcom/alipay/sdk/g/a;

    const-string v1, "WapPay"

    const-string v2, "js://wappay"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/sdk/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/g/a;->b:Lcom/alipay/sdk/g/a;

    new-instance v0, Lcom/alipay/sdk/g/a;

    const-string v1, "Update"

    const-string v2, "js://update"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/sdk/g/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/g/a;->c:Lcom/alipay/sdk/g/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/sdk/g/a;

    sget-object v1, Lcom/alipay/sdk/g/a;->a:Lcom/alipay/sdk/g/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/sdk/g/a;->b:Lcom/alipay/sdk/g/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/sdk/g/a;->c:Lcom/alipay/sdk/g/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/sdk/g/a;->e:[Lcom/alipay/sdk/g/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/sdk/g/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/g/a;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alipay/sdk/g/a;->a:Lcom/alipay/sdk/g/a;

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    sget-object v1, Lcom/alipay/sdk/g/a;->a:Lcom/alipay/sdk/g/a;

    invoke-static {}, Lcom/alipay/sdk/g/a;->values()[Lcom/alipay/sdk/g/a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v4, :cond_22

    aget-object v0, v3, v2

    iget-object v5, v0, Lcom/alipay/sdk/g/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_22
    move-object v0, v1

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/g/a;
    .registers 2

    const-class v0, Lcom/alipay/sdk/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/g/a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/sdk/g/a;
    .registers 1

    sget-object v0, Lcom/alipay/sdk/g/a;->e:[Lcom/alipay/sdk/g/a;

    invoke-virtual {v0}, [Lcom/alipay/sdk/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/g/a;

    return-object v0
.end method
