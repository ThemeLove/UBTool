.class Lcom/mchsdk/paysdk/activity/a$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Lcom/mchsdk/paysdk/b/d;)V
    .registers 7

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/activity/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/mchsdk/paysdk/f/c/ac;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/ac;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mchsdk/paysdk/f/c/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/a;->f(Lcom/mchsdk/paysdk/activity/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/ac;->a(Landroid/os/Handler;)V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "mc_login_reg_phone_num"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_19
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v0, p1, p2, p4}, Lcom/mchsdk/paysdk/activity/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$11;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, p1, p2, p4, p5}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
