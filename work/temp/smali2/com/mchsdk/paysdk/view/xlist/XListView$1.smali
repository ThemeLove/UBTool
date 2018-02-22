.class Lcom/mchsdk/paysdk/view/xlist/XListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/view/xlist/XListView;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/view/xlist/XListView;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView$1;->a:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView$1;->a:Lcom/mchsdk/paysdk/view/xlist/XListView;

    iget-object v1, p0, Lcom/mchsdk/paysdk/view/xlist/XListView$1;->a:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-static {v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Lcom/mchsdk/paysdk/view/xlist/XListView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/view/xlist/XListView;->a(Lcom/mchsdk/paysdk/view/xlist/XListView;I)I

    iget-object v0, p0, Lcom/mchsdk/paysdk/view/xlist/XListView$1;->a:Lcom/mchsdk/paysdk/view/xlist/XListView;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/view/xlist/XListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
