.class Lcom/fanwei/jubaosdk/shell/a$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fanwei/jubaosdk/shell/a;->a(Landroid/app/Activity;Lcom/fanwei/jubaosdk/shell/PayOrder;ZILcom/fanwei/jubaosdk/common/entity/PayMethodResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fanwei/jubaosdk/shell/a;


# direct methods
.method constructor <init>(Lcom/fanwei/jubaosdk/shell/a;)V
    .registers 2

    iput-object p1, p0, Lcom/fanwei/jubaosdk/shell/a$9;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fanwei/jubaosdk/shell/a$9;->a:Lcom/fanwei/jubaosdk/shell/a;

    invoke-static {v0}, Lcom/fanwei/jubaosdk/shell/a;->g(Lcom/fanwei/jubaosdk/shell/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u521d\u59cb\u5316\u4e2d\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
