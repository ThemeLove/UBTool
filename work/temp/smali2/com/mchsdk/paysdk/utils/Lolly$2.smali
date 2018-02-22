.class Lcom/mchsdk/paysdk/utils/Lolly$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/utils/Lolly;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->b:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    :cond_7
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->c:I

    iget v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->c:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40a00000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->b:I

    iget v2, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x5a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->f(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v1}, Lcom/mchsdk/paysdk/utils/Lolly;->e(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/utils/Lolly$2;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v2}, Lcom/mchsdk/paysdk/utils/Lolly;->d(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
