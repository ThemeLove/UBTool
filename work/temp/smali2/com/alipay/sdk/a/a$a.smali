.class public final Lcom/alipay/sdk/a/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/sdk/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    sput v3, Lcom/alipay/sdk/a/a$a;->a:I

    sput v4, Lcom/alipay/sdk/a/a$a;->b:I

    sput v5, Lcom/alipay/sdk/a/a$a;->c:I

    sput v6, Lcom/alipay/sdk/a/a$a;->d:I

    sput v0, Lcom/alipay/sdk/a/a$a;->e:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/alipay/sdk/a/a$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/alipay/sdk/a/a$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/alipay/sdk/a/a$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/alipay/sdk/a/a$a;->d:I

    aput v1, v0, v5

    sget v1, Lcom/alipay/sdk/a/a$a;->e:I

    aput v1, v0, v6

    sput-object v0, Lcom/alipay/sdk/a/a$a;->f:[I

    return-void
.end method
