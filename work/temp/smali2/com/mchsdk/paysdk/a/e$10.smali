.class Lcom/mchsdk/paysdk/a/e$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/a/e;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .registers 8

    const/4 v3, 0x0

    const-string v0, "ChoosePayModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fun#selectPtbTypeCallback  isGameType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0, p2}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;Z)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->r(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    if-eqz p2, :cond_58

    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->s(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/i;->a(Ljava/lang/String;)F

    move-result v1

    sub-float v0, v1, v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_42

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Ljava/lang/String;)V

    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u4ee3\u91d1\u5238\u4f59\u989d\u4e0d\u8db3\u8bf7\u8054\u7cfb\u4ee3\u7406"

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v3}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_41

    :cond_58
    iget-object v1, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v1}, Lcom/mchsdk/paysdk/a/e;->t(Lcom/mchsdk/paysdk/a/e;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/i;->a(Ljava/lang/String;)F

    move-result v1

    sub-float v0, v1, v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_70

    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/a/e;->a(Ljava/lang/String;)V

    goto :goto_41

    :cond_70
    iget-object v0, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v0}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u6bdb\u8c46\u5e01\u4f59\u989d\u4e0d\u8db3\u8bf7\u5145\u503c\u6bdb\u8c46"

    iget-object v3, p0, Lcom/mchsdk/paysdk/a/e$10;->a:Lcom/mchsdk/paysdk/a/e;

    invoke-static {v3}, Lcom/mchsdk/paysdk/a/e;->a(Lcom/mchsdk/paysdk/a/e;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_41
.end method
