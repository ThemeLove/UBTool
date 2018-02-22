.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->s:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6635\u79f0"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v0, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    new-instance v1, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;-><init>()V

    const-string v2, "\u6b63\u5728\u4fee\u6539\u6635\u79f0"

    invoke-virtual {v1, v2}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Ljava/lang/CharSequence;)Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;

    move-result-object v1

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v3, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v3}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mchsdk/paysdk/dialog/MCTipDialog$a;->a(Landroid/content/Context;Landroid/app/FragmentManager;)Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->u:Lcom/mchsdk/paysdk/dialog/MCTipDialog;

    new-instance v0, Lcom/mchsdk/paysdk/f/c/u;

    invoke-direct {v0}, Lcom/mchsdk/paysdk/f/c/u;-><init>()V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/u;->a(Ljava/lang/String;)V

    const-string v1, "nickname"

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/u;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-static {v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->d(Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/f/c/u;->a(Landroid/os/Handler;)V

    goto :goto_4e
.end method
