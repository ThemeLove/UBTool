.class public Lcom/mchsdk/paysdk/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mchsdk/paysdk/e/t;)V
    .registers 8

    :try_start_0
    const-string v0, "WxPay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wxappid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "WxPay"

    const-string v1, "wxappid is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "app.webchat.payments.agree.trirdcontrol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wxpaytype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxappid"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "goodstype"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "WxPay"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "gamepack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->c()I

    move-result v3

    if-ne v2, v3, :cond_f3

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const-string v0, "WxPay"

    const-string v1, "TokenId:wft TokenId is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_95} :catch_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_d4

    goto :goto_2d

    :catch_96
    move-exception v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25:\u652f\u4ed8\u6743\u9650\u6ca1\u6709\u5bf9\u6539\u5e94\u7528\u5f00\u653e"

    invoke-static {p1, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "WxPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wxpay SecurityException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_ba
    :try_start_ba
    const-string v2, "WxPay"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tokenid"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_d2
    .catch Ljava/lang/SecurityException; {:try_start_ba .. :try_end_d2} :catch_96
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d2} :catch_d4

    goto/16 :goto_2d

    :catch_d4
    move-exception v0

    const-string v1, "WxPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wxpay Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_f3
    :try_start_f3
    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->c()I

    move-result v2

    if-nez v2, :cond_cc

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_134

    :cond_12b
    const-string v0, "WxPay"

    const-string v1, "wx \u53c2\u6570\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    :cond_134
    const-string v2, "partnerid"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "prepayid"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "timestamp"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "noncestr"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sign"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxpackage"

    invoke-virtual {p2}, Lcom/mchsdk/paysdk/e/t;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_16a} :catch_96
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_16a} :catch_d4

    goto/16 :goto_cc
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    invoke-static {p2}, Lcom/mchsdk/paysdk/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1"

    invoke-static {p2, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mchsdk/paysdk/a/h;->a:Z

    :cond_e
    :goto_e
    return-void

    :cond_f
    check-cast p1, Lcom/mchsdk/paysdk/e/t;

    if-nez p1, :cond_20

    const-string v0, "\u5fae\u4fe1\u652f\u4ed8\u53c2\u6570\u5f02\u5e38"

    invoke-static {p2, v0}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "WxPay"

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8\u65e0\u53c2\u6570"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_20
    invoke-static {p2}, Lcom/mchsdk/paysdk/a/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p2, p1}, Lcom/mchsdk/paysdk/a/b/a;->a(Landroid/content/Context;Lcom/mchsdk/paysdk/e/t;)V

    goto :goto_e
.end method
