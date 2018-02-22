.class Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->f()V
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

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    const-class v2, Lcom/mchsdk/paysdk/activity/MCBindPhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity$11;->a:Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/mchsdk/paysdk/activity/MCPersonalInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
