.class public Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Landroid/content/DialogInterface$OnKeyListener;

.field private c:Lcom/mchsdk/paysdk/b/b;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;
    .registers 4

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    invoke-direct {v0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->c:Lcom/mchsdk/paysdk/b/b;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(Lcom/mchsdk/paysdk/b/b;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->a(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->b(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->c(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->d(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;->e(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->b:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->e:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Lcom/mchsdk/paysdk/b/b;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->c:Lcom/mchsdk/paysdk/b/b;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "mc_account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;
    .registers 6

    if-nez p2, :cond_b

    const-string v0, "PlatformLogin"

    const-string v1, "show error : fragment manager is null."

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a(Landroid/content/Context;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog;

    move-result-object v0

    const-string v1, "PlatformLogin"

    const-string v2, "show SelectPTBTypeDialog."

    invoke-static {v1, v2}, Lcom/mchsdk/paysdk/utils/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "PlatformLogin"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_a
.end method

.method public b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->f:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->a:Landroid/os/Bundle;

    const-string v1, "mc_password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public c(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public d(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/PlatformLoginDialog$a;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method
