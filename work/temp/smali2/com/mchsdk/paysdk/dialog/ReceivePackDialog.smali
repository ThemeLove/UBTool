.class public Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/DialogInterface$OnKeyListener;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->e:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->e:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v2, "style"

    const-string v3, "MCCustomDialog"

    invoke-static {v1, v2, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "dialog_mch_receive_packs"

    invoke-static {v0, v1, v2}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_17

    move-object v0, v2

    :goto_16
    return-object v0

    :cond_17
    const-string v0, "packname"

    const-string v1, "\u6e38\u620f\u793c\u5305"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_receive_pack_name"

    invoke-static {v0, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "packcode"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "tx_mch_receive_pack_code"

    invoke-static {v0, v4, v5}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->b:Landroid/widget/TextView;

    const-string v0, "null"

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string v0, ""

    :goto_5e
    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->f:Ljava/lang/String;

    const-string v0, "packstatus"

    const-string v1, "0"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "tx_mch_receive_pack_status"

    invoke-static {v0, v3, v4}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->g:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u793c\u5305\u60a8\u5df2\u7ecf\u9886\u53d6\u8fc7\u4e86"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_98
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v1, "id"

    const-string v3, "btn_mch_receive_pack"

    invoke-static {v0, v1, v3}, Lcom/mchsdk/paysdk/utils/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$1;-><init>(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->d:Landroid/content/Context;

    const-string v1, "iv_mch_close_receive"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$2;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$2;-><init>(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$3;

    invoke-direct {v1, p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog$3;-><init>(Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object v0, v2

    goto/16 :goto_16

    :cond_d9
    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->c:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u590d\u5236\u6e38\u620f\u793c\u5305\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_98

    :cond_e1
    move-object v0, v1

    goto/16 :goto_5e
.end method

.method public onStart()V
    .registers 5

    invoke-virtual {p0}, Lcom/mchsdk/paysdk/dialog/ReceivePackDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method
