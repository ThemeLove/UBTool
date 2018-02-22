.class Lcom/mchsdk/paysdk/activity/a$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mchsdk/paysdk/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mchsdk/paysdk/activity/a;


# direct methods
.method constructor <init>(Lcom/mchsdk/paysdk/activity/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mchsdk/paysdk/activity/a$15;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mchsdk/paysdk/activity/a$15;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/activity/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/mchsdk/paysdk/f/a/a;

    invoke-direct {v1}, Lcom/mchsdk/paysdk/f/a/a;-><init>()V

    new-instance v2, Lcom/mchsdk/paysdk/f/d;

    invoke-direct {v2}, Lcom/mchsdk/paysdk/f/d;-><init>()V

    iput-object v2, v1, Lcom/mchsdk/paysdk/f/a/a;->a:Lcom/mchsdk/paysdk/f/d;

    iget-object v2, p0, Lcom/mchsdk/paysdk/activity/a$15;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v2}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/mchsdk/paysdk/f/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/mchsdk/paysdk/f/a/a;->a(Ljava/lang/String;)Lcom/mchsdk/paysdk/f/d;

    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/mchsdk/paysdk/activity/a$15;->a:Lcom/mchsdk/paysdk/activity/a;

    invoke-static {v0}, Lcom/mchsdk/paysdk/activity/a;->a(Lcom/mchsdk/paysdk/activity/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/mchsdk/paysdk/utils/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2d
.end method
