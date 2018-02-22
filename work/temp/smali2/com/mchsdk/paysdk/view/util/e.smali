.class public Lcom/mchsdk/paysdk/view/util/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/mchsdk/paysdk/view/util/f;
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Lcom/mchsdk/paysdk/view/util/c;->a()Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x1

    if-ne v0, p0, :cond_f

    invoke-static {}, Lcom/mchsdk/paysdk/view/util/d;->a()Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    goto :goto_6

    :cond_f
    const/4 v0, 0x2

    if-ne v0, p0, :cond_17

    invoke-static {}, Lcom/mchsdk/paysdk/view/util/a;->b()Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    goto :goto_6

    :cond_17
    const/4 v0, 0x3

    if-ne v0, p0, :cond_1f

    invoke-static {}, Lcom/mchsdk/paysdk/view/util/g;->b()Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    goto :goto_6

    :cond_1f
    invoke-static {}, Lcom/mchsdk/paysdk/view/util/f;->b()Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v0

    goto :goto_6
.end method
