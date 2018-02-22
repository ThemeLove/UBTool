.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getExitFromPersonInfo()Lcom/mchsdk/open/IGPExitObsv;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v0, v1}, Lcom/mchsdk/open/MCApiFactory;->stopFloating(Landroid/content/Context;)V

    new-instance v0, Lcom/mchsdk/open/GPExitResult;

    invoke-direct {v0}, Lcom/mchsdk/open/GPExitResult;-><init>()V

    const/4 v1, -0x4

    iput v1, v0, Lcom/mchsdk/open/GPExitResult;->mResultCode:I

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mchsdk/open/MCApiFactory;->getExitFromPersonInfo()Lcom/mchsdk/open/IGPExitObsv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mchsdk/open/IGPExitObsv;->onExitFinish(Lcom/mchsdk/open/GPExitResult;)V

    :cond_26
    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getLoginClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/mchsdk/open/MCApiFactory;->getMCApi()Lcom/mchsdk/open/MCApiFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/open/MCApiFactory;->getLoginClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v0, v1}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivity(Landroid/content/Intent;)V

    :cond_44
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->finish()V

    return-void
.end method
