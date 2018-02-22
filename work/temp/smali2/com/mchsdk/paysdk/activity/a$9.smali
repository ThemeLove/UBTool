.class Lcom/mchsdk/paysdk/activity/a$9;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u70b9\u51fb\u6ce8\u518c\u6309\u94ae"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Z)Z

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    new-instance v0, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;-><init>()V

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->e(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->b(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->l:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->d(Lcom/mchsdk/paysdk/activity/a;)Lcom/mchsdk/paysdk/b/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Lcom/mchsdk/paysdk/b/c;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->c(Lcom/mchsdk/paysdk/activity/a;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Landroid/view/View$OnClickListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    move-result-object v0

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/a;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Landroid/view/View$OnFocusChangeListener;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;

    move-result-object v2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$9;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;)Lcom/mchsdk/paysdk/dialog/PlatformRegisterDialog;

    return-void
.end method
