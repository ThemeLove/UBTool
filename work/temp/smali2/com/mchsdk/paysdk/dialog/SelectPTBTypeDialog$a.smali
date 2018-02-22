.class public Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/mchsdk/paysdk/b/e;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->b:Lcom/mchsdk/paysdk/b/e;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Lcom/mchsdk/paysdk/b/e;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Lcom/mchsdk/paysdk/b/e;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->b:Lcom/mchsdk/paysdk/b/e;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "s_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/mchsdk/paysdk/e/e;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_b

    const-string v1, "SelectPTBTypeDialog"

    const-string v2, "show error : fragment manager is null."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-object v0

    :cond_b
    if-nez p3, :cond_15

    const-string v1, "SelectPTBTypeDialog"

    const-string v2, "DiscountPrice is null"

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    invoke-static {p3}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;->a(Lcom/mchsdk/paysdk/e/e;)Lcom/mchsdk/paysdk/e/e;

    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog;

    move-result-object v0

    const-string v1, "SelectPTBTypeDialog"

    const-string v2, "show SelectPTBTypeDialog."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "SelectPTBTypeDialog"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_a
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "s_user_ptb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "s_game_ptb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/SelectPTBTypeDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "s_pay_ptb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method
