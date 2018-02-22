.class Lcom/mchsdk/paysdk/utils/Lolly$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/utils/Lolly;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0, p2}, Lcom/mchsdk/paysdk/utils/Lolly;->a(Lcom/mchsdk/paysdk/utils/Lolly;Z)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->a(Lcom/mchsdk/paysdk/utils/Lolly;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/CheckBox;

    move-result-object v0

    const-string v1, "O"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->c(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/ListView;

    move-result-object v0

    sget-object v1, Lcom/mchsdk/paysdk/utils/Lolly;->a:Lcom/mchsdk/paysdk/utils/Lolly$a;

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/utils/Lolly$a;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/mchsdk/paysdk/utils/Lolly$1;->a:Lcom/mchsdk/paysdk/utils/Lolly;

    invoke-static {v0}, Lcom/mchsdk/paysdk/utils/Lolly;->b(Lcom/mchsdk/paysdk/utils/Lolly;)Landroid/widget/CheckBox;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method
