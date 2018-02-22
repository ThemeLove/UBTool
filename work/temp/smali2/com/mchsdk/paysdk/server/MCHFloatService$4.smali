.class Lcom/mchsdk/paysdk/server/MCHFloatService$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/server/MCHFloatService;->c()V
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x0

    const/high16 v3, 0x40a00000

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v2}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e(Lcom/mchsdk/paysdk/server/MCHFloatService;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_e8

    :goto_24
    const/4 v0, 0x0

    return v0

    :pswitch_26
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setX(F)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setY(F)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->c(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->f(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    goto :goto_24

    :pswitch_5d
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->h(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_87

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->i(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a0

    :cond_87
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->a(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v0, v0, Lcom/mchsdk/paysdk/server/MCHFloatService;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    const-string v2, "mch_float_ico"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/g;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->j(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    :cond_a0
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->g(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    goto/16 :goto_24

    :pswitch_a7
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->b(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->h(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_d6

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->d(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->i(Lcom/mchsdk/paysdk/server/MCHFloatService;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_d6

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->k(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    :cond_d6
    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v0}, Lcom/mchsdk/paysdk/server/MCHFloatService;->g(Lcom/mchsdk/paysdk/server/MCHFloatService;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    iget-object v1, p0, Lcom/mchsdk/paysdk/server/MCHFloatService$4;->a:Lcom/mchsdk/paysdk/server/MCHFloatService;

    invoke-static {v1, v4}, Lcom/mchsdk/paysdk/server/MCHFloatService;->f(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/server/MCHFloatService;->e(Lcom/mchsdk/paysdk/server/MCHFloatService;F)F

    goto/16 :goto_24

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_26
        :pswitch_a7
        :pswitch_5d
    .end packed-switch
.end method
