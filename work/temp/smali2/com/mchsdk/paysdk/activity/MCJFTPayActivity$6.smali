.class Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;->b:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    iput-object p2, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;->b:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->f(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity$6;->b:Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;->f(Lcom/mchsdk/paysdk/activity/MCJFTPayActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
