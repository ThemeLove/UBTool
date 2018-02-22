.class public Lcom/mchsdk/paysdk/a/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mchsdk/paysdk/a/c/c;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/c/c$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/c/c$1;-><init>(Lcom/mchsdk/paysdk/a/c/c;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/c/c;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/mchsdk/paysdk/a/c/c;
    .registers 1

    sget-object v0, Lcom/mchsdk/paysdk/a/c/c;->a:Lcom/mchsdk/paysdk/a/c/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/mchsdk/paysdk/a/c/c;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/a/c/c;-><init>()V

    sput-object v0, Lcom/mchsdk/paysdk/a/c/c;->a:Lcom/mchsdk/paysdk/a/c/c;

    :cond_b
    sget-object v0, Lcom/mchsdk/paysdk/a/c/c;->a:Lcom/mchsdk/paysdk/a/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "WBThirdLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbuid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/e/a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/e/a;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/mchsdk/paysdk/f/e/a;->g:I

    iput-object p1, v0, Lcom/mchsdk/paysdk/f/e/a;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/mchsdk/paysdk/f/e/a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/c/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/e/a;->a(Landroid/os/Handler;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_14

    const-string v0, "WBThirdLogin"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "\u6ca1\u6709\u5fae\u535aappid\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    :cond_20
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "app.webchat.payments.agree.trirdlogin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "logintype"

    const-string v4, "wblogin"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gamepack"

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wbappkey"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wbredirecturl"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wbsoap"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_13
.end method
