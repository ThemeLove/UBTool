.class Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->c(Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    const-string v1, "\u83b7\u53d6\u5145\u503c\u8bb0\u5f55\u5931\u8d25,\u8bf7\u767b\u5f55"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCMoneyRecordActivity;->finish()V

    goto :goto_7
.end method
