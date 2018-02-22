.class public Lcom/mchsdk/paysdk/a/c/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/c/d;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/c/d$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/c/d$1;-><init>(Lcom/mchsdk/paysdk/a/c/d;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/c/d;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/c/d;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/c/d;->a:Lcom/mchsdk/paysdk/a/c/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/c/d;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/c/d;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/c/d;->a:Lcom/mchsdk/paysdk/a/c/d;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/c/d;->a:Lcom/mchsdk/paysdk/a/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "app.webchat.payments.agree.trirdlogin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3d

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "WXThirdLogin"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gamepack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "logintype"

    const-string v3, "wxlogin"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wxappid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "WXThirdLogin"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "\u6ca1\u6709\u5fae\u4fe1appid\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_20
    invoke-virtual {p0, v0, p1}, Lcom/mchsdk/paysdk/a/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    const-string v0, "WXThirdLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wxCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/e/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/e/a;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    iput-object p1, v0, Lcom/mchsdk/paysdk/f/e/a;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/c/d;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/e/a;->a(Landroid/os/Handler;)V

    return-void
.end method
