.class public Lcom/alipay/sdk/app/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/sdk/app/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/alipay/sdk/app/a$a;->a:Lcom/alipay/sdk/app/a$a;

    sput-object v0, Lcom/alipay/sdk/app/a;->a:Lcom/alipay/sdk/app/a$a;

    return-void
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/alipay/sdk/app/a;->a:Lcom/alipay/sdk/app/a$a;

    sget-object v1, Lcom/alipay/sdk/app/a$a;->b:Lcom/alipay/sdk/app/a$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
