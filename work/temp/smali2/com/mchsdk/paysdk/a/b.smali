.class public Lcom/mchsdk/paysdk/a/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/mchsdk/open/ChangePlayerLevelCallback;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mchsdk/open/ChangePlayerLevelCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mchsdk/paysdk/a/b$1;

    invoke-direct {v0, p0}, Lcom/mchsdk/paysdk/a/b$1;-><init>(Lcom/mchsdk/paysdk/a/b;)V

    iput-object v0, p0, Lcom/mchsdk/paysdk/a/b;->d:Landroid/os/Handler;

    if-eqz p1, :cond_13

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/b;->a:Ljava/lang/String;

    :goto_e
    iput-object p2, p0, Lcom/mchsdk/paysdk/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mchsdk/paysdk/a/b;->c:Lcom/mchsdk/open/ChangePlayerLevelCallback;

    return-void

    :cond_13
    const-string v0, "ChangePlayerLevel"

    const-string v1, "#type is null"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method


# virtual methods
.method public a()V
    .registers 4

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_18
    const-string v0, "ChangePlayerLevel"

    const-string v1, "\u8bf7\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void

    :cond_20
    const-string v0, "ChangePlayerLevel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mchsdk/paysdk/f/c/d;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/d;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/d;->a(I)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/b;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/d;->a(Landroid/os/Handler;)V

    goto :goto_1f
.end method

.method public b()Lcom/mchsdk/open/ChangePlayerLevelCallback;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b;->c:Lcom/mchsdk/open/ChangePlayerLevelCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/b;->c:Lcom/mchsdk/open/ChangePlayerLevelCallback;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
