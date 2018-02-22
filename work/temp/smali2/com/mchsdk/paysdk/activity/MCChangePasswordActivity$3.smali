.class Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$3;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a()V

    return-void
.end method
