.class Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lsdk/pay/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->finish()V

    :goto_f
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Z)Z

    return-void

    :cond_16
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->a(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$2;->a:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->finish()V

    goto :goto_f
.end method
