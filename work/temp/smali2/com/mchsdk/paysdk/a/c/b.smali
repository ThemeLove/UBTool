.class public Lcom/mchsdk/paysdk/a/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/c/b;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/c/b$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/c/b$1;-><init>(Lcom/mchsdk/paysdk/a/c/b;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/c/b;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/c/b;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/c/b;->a:Lcom/mchsdk/paysdk/a/c/b;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/c/b;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/c/b;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/c/b;->a:Lcom/mchsdk/paysdk/a/c/b;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/c/b;->a:Lcom/mchsdk/paysdk/a/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "\u6ca1\u6709QQ appid\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "app.webchat.payments.agree.trirdlogin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "QQThirdLogin"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gamepack"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "logintype"

    const-string v4, "qqlogin"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "qqappid"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "QQThirdLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/e/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/e/a;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    iput-object p1, v0, Lcom/mchsdk/paysdk/f/e/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/c/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/e/a;->a(Landroid/os/Handler;)V

    return-void
.end method
