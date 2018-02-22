.class Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mchsdk/paysdk/a/b/b;


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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity$5;->a:Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCAddPtbMoneyActivity;->a()V

    :goto_7
    return-void

    :cond_8
    const-string v0, "MCAddPtbMoneyActivity"

    const-string v1, "\u8d2d\u4e70\u6bdb\u8c46\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method
