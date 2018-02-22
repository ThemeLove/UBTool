.class Lcom/mchsdk/paysdk/server/MCHFloatService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->c(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5a

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, v1, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    :goto_45
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->g(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const-string v2, "mch_float_ico_h"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-void

    :cond_5a
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->c(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->f(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v1

    if-le v0, v1, :cond_9c

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->c(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    :goto_74
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, v1, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setX(F)V

    goto :goto_45

    :cond_9c
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$2;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->f(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    goto :goto_74
.end method
