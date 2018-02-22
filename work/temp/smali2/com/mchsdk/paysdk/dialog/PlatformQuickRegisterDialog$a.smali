.class public Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Landroid/content/DialogInterface$OnKeyListener;

.field private c:Lcom/mchsdk/paysdk/b/c;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->c:Lcom/mchsdk/paysdk/b/c;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Lcom/mchsdk/paysdk/b/c;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->b(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->a(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->f:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method public a(Lcom/mchsdk/paysdk/b/c;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->c:Lcom/mchsdk/paysdk/b/c;

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;
    .registers 6

    if-nez p2, :cond_b

    const-string v0, "PlatformQuickRegisterDialog"

    const-string v1, "show error : fragment manager is null."

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    move-result-object v0

    const-string v1, "PlatformQuickRegisterDialog"

    const-string v2, "show SelectPTBTypeDialog."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PlatformQuickRegisterDialog"

    invoke-virtual {v0, p2, v1}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method
