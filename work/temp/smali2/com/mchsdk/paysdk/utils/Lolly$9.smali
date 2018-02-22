.class Lcom/mchsdk/paysdk/utils/Lolly$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/utils/Lolly;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayAdapter;

.field final synthetic b:Lcom/mchsdk/paysdk/utils/Lolly;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;Landroid/widget/ArrayAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$9;->b:Lcom/mchsdk/paysdk/utils/Lolly;

    iput-object p2, p0, Lcom/mchsdk/paysdk/utils/Lolly$9;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$9;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$9;->a:Landroid/widget/ArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/utils/Lolly$a;->c(Ljava/lang/String;)V

    return-void
.end method
