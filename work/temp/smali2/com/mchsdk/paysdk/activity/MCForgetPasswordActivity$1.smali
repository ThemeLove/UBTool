.class Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity$1;->a:Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/mchsdk/paysdk/activity/MCForgetPasswordActivity;->finish()V

    return-void
.end method
