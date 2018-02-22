.class public Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
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

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->c:Lcom/mchsdk/paysdk/b/c;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a(Lcom/mchsdk/paysdk/b/c;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->b(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->a(Landroid/view/View$OnFocusChangeListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnFocusChangeListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->f:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method public a(Lcom/mchsdk/paysdk/b/c;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->c:Lcom/mchsdk/paysdk/b/c;

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;
    .registers 6

    if-nez p2, :cond_b

    const-string v0, "PlatformRegisterDialog"

    const-string v1, "show error : fragment manager is null."

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    move-result-object v0

    const-string v1, "PlatformRegisterDialog"

    const-string v2, "show SelectPTBTypeDialog."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PlatformRegisterDialog"

    invoke-virtual {v0, p2, v1}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mchsdk/paysdk/view/util/e;->a(I)Lcom/mchsdk/paysdk/view/util/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/paysdk/view/util/f;->e()Lcom/mchsdk/paysdk/g/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/g/a;->a(Lcom/mchsdk/paysdk/g/b;)V

    goto :goto_a
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method
