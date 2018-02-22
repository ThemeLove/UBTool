.class Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v1, v1, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->a:Lcom/mchsdk/paysdk/view/util/b;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;

    iget-object v2, v2, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->b:Landroid/app/Activity;

    const/16 v3, 0x64

    const/16 v4, 0x32

    invoke-virtual {v1, v2, v3, v4}, Lcom/mchsdk/paysdk/view/util/b;->a(Landroid/app/Activity;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mchsdk/paysdk/activity/MCChangePasswordActivity;->n:Ljava/lang/String;

    return-void
.end method
