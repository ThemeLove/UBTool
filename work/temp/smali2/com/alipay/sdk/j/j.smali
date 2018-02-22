.class public final Lcom/alipay/sdk/j/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/alipay/sdk/app/a;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "https://mobilegw.alipaydev.com/mgw.htm"

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    if-nez p0, :cond_e

    sget-object v0, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    goto :goto_8

    :cond_e
    sget-object v0, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/alipay/sdk/b/a;->a:Ljava/lang/String;

    goto :goto_8
.end method
