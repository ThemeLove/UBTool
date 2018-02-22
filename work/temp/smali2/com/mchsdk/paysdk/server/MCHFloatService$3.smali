.class Lcom/mchsdk/paysdk/server/MCHFloatService$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/server/MCHFloatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/server/MCHFloatService;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/server/MCHFloatService;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/mchsdk/paysdk/a/m;->a()Lcom/mchsdk/paysdk/a/m;

    move-result-object v0

    iget-object v0, v0, Lcom/mchsdk/paysdk/a/m;->a:Lcom/mchsdk/paysdk/e/d;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/e/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1c
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_27
    return-void

    :cond_28
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ll_mch_floating_pack"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4b

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCPacksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_40
    :goto_40
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->startActivity(Landroid/content/Intent;)V

    goto :goto_27

    :cond_4b
    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ll_mch_floating_personal"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_63

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_40

    :cond_63
    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ll_mch_floating_social"

    invoke-static {v2, v3}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_40

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$3;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCSocialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_40
.end method
