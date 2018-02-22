.class Lcom/mchsdk/paysdk/activity/a$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Z)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/a;->b(Lcom/mchsdk/paysdk/activity/a;Z)Z

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->l:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->i:Lcom/mchsdk/paysdk/b/c;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Lcom/mchsdk/paysdk/b/c;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->g(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->g:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Landroid/view/View$OnFocusChangeListener;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$13;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;)Lcom/mchsdk/paysdk/dialog/PlatformQuickRegisterDialog;

    return-void
.end method
