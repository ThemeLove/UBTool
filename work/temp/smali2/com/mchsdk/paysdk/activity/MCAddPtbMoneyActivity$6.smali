.class Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$6;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a(Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;Ljava/lang/String;)V

    goto :goto_d
.end method
