.class Lcom/mchsdk/paysdk/activity/PTBPayResultActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity$1;->a:Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/mchsdk/paysdk/a/k;->a()Lcom/mchsdk/paysdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/a/k;->c()Lcom/mchsdk/open/PayCallback;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/mchsdk/open/PayCallback;->callback(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity$1;->a:Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/PTBPayResultActivity;->finish()V

    return-void
.end method
