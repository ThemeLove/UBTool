.class final Lcom/mchsdk/paysdk/dialog/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/dialog/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/mchsdk/open/GPExitResult;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/mchsdk/open/GPExitResult;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/dialog/a$2;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/mchsdk/paysdk/dialog/a$2;->b:Lcom/mchsdk/open/GPExitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/a$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/dialog/a$2;->b:Lcom/mchsdk/open/GPExitResult;

    const/4 v1, -0x3

    iput v1, v0, Lcom/mchsdk/open/GPExitResult;->mResultCode:I

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getExitObsv()Lcom/mchsdk/open/IGPExitObsv;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/mchsdk/open/ApiCallback;->getExitObsv()Lcom/mchsdk/open/IGPExitObsv;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/dialog/a$2;->b:Lcom/mchsdk/open/GPExitResult;

    invoke-interface {v0, v1}, Lcom/mchsdk/open/IGPExitObsv;->onExitFinish(Lcom/mchsdk/open/GPExitResult;)V

    :cond_19
    return-void
.end method
